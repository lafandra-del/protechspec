const { test } = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const { initSite } = require('../site.js');

const projectRoot = path.resolve(__dirname, '..');
const html = fs.readFileSync(path.join(projectRoot, 'index.html'), 'utf8');

function escapeRegExp(value) {
  return value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}

function getAttribute(tag, name) {
  const pattern = new RegExp(
    `\\b${escapeRegExp(name)}\\s*=\\s*(?:"([^"]*)"|'([^']*)'|([^\\s>]+))`,
    'i',
  );
  const match = tag.match(pattern);
  return match ? (match[1] ?? match[2] ?? match[3]) : null;
}

function tags(name) {
  return [...html.matchAll(new RegExp(`<${name}\\b[^>]*>`, 'gi'))].map(match => match[0]);
}

class FakeClassList {
  constructor() {
    this.values = new Set();
  }

  add(value) {
    this.values.add(value);
  }

  remove(value) {
    this.values.delete(value);
  }

  contains(value) {
    return this.values.has(value);
  }
}

class FakeElement {
  constructor({ id = '', href = '', value = '', checked = false, hidden = false } = {}) {
    this.id = id;
    this.href = href;
    this.value = value;
    this.checked = checked;
    this.hidden = hidden;
    this.classList = new FakeClassList();
    this.listeners = new Map();
  }

  addEventListener(eventName, callback) {
    this.listeners.set(eventName, callback);
  }
}

function loadSiteScript(autoInitialize = true) {
  const elements = new Map([
    ['bookForm', new FakeElement()],
    ['bookSuccess', new FakeElement({ hidden: true })],
    ['field-name', new FakeElement()],
    ['book-name', new FakeElement()],
    ['field-tg', new FakeElement()],
    ['book-tg', new FakeElement()],
    ['book-desc', new FakeElement()],
    ['book-support', new FakeElement()],
  ]);
  const sections = [
    new FakeElement({ id: 'services' }),
    new FakeElement({ id: 'contacts' }),
    new FakeElement({ id: 'stack' }),
  ];
  const navLinks = [
    new FakeElement({ href: '#services' }),
    new FakeElement({ href: '#contacts' }),
  ];
  const observed = [];
  const logs = [];
  let observerCallback;
  let observerOptions;

  const document = {
    getElementById(id) {
      return elements.get(id) ?? null;
    },
    querySelectorAll(selector) {
      if (selector === 'section[id]') return sections;
      if (selector === '.nav-links a') return navLinks;
      return [];
    },
    querySelector(selector) {
      const match = selector.match(/^\.nav-links a\[href="([^"]+)"\]$/);
      return match ? (navLinks.find(link => link.href === match[1]) ?? null) : null;
    },
  };

  class FakeIntersectionObserver {
    constructor(callback, options) {
      observerCallback = callback;
      observerOptions = options;
    }

    observe(section) {
      observed.push(section);
    }
  }

  const consoleRef = {
    log(...args) {
      logs.push(args);
    },
  };

  if (autoInitialize) {
    initSite(document, FakeIntersectionObserver, consoleRef);
  }

  return {
    elements,
    sections,
    navLinks,
    observed,
    logs,
    document,
    IntersectionObserver: FakeIntersectionObserver,
    console: consoleRef,
    getObserverCallback: () => observerCallback,
    getObserverOptions: () => observerOptions,
  };
}

function submitForm(site) {
  let prevented = false;
  const callback = site.elements.get('bookForm').listeners.get('submit');
  assert.equal(typeof callback, 'function', 'У формы должен быть обработчик submit');
  callback({
    preventDefault() {
      prevented = true;
    },
  });
  assert.equal(prevented, true, 'Отправка формы не должна перезагружать страницу');
}

test('основная структура страницы остаётся доступной и однозначной', () => {
  assert.match(html, /<html\s+lang="ru">/i);
  assert.equal(tags('h1').length, 1, 'На странице должен быть ровно один h1');
  assert.match(html, /<meta\s+name="description"\s+content="[^"]+"\s*\/?>/i);

  const ids = [...html.matchAll(/\bid=(?:"([^"]+)"|'([^']+)')/gi)]
    .map(match => match[1] ?? match[2]);
  assert.equal(new Set(ids).size, ids.length, 'id элементов не должны повторяться');

  for (const requiredId of ['hero', 'services', 'process', 'cases', 'book', 'contacts']) {
    assert.ok(ids.includes(requiredId), `Отсутствует ключевой раздел #${requiredId}`);
  }

  assert.match(html, /<script\s+src="site\.js"><\/script>/i);
  assert.ok(fs.existsSync(path.join(projectRoot, 'site.js')), 'Не найден подключённый site.js');
});

test('внутренние ссылки ведут на существующие разделы', () => {
  const ids = new Set(
    [...html.matchAll(/\bid=(?:"([^"]+)"|'([^']+)')/gi)]
      .map(match => match[1] ?? match[2]),
  );

  for (const anchor of tags('a')) {
    const href = getAttribute(anchor, 'href');
    if (href?.startsWith('#') && href.length > 1) {
      assert.ok(ids.has(href.slice(1)), `Ссылка ${href} ведёт на отсутствующий элемент`);
    }
  }
});

test('контакты и локальные изображения соответствуют рабочим контрактам', () => {
  assert.match(html, /href="https:\/\/t\.me\/max_sunfire"/i);
  assert.match(html, /href="mailto:lafandra@yandex\.ru"/i);
  assert.match(html, />\s*@max_sunfire\s*</i);
  assert.match(html, />\s*lafandra@yandex\.ru\s*</i);

  for (const image of tags('img')) {
    const src = getAttribute(image, 'src');
    const alt = getAttribute(image, 'alt');
    assert.ok(alt?.trim(), `У изображения ${src ?? '(без src)'} должен быть alt`);
    if (src && !/^(?:https?:|data:)/i.test(src)) {
      assert.ok(fs.existsSync(path.join(projectRoot, src)), `Не найдено изображение ${src}`);
    }
  }
});

test('внешние ссылки в новой вкладке защищены от доступа к opener', () => {
  for (const anchor of tags('a')) {
    if (getAttribute(anchor, 'target') === '_blank') {
      const rel = (getAttribute(anchor, 'rel') ?? '').split(/\s+/);
      assert.ok(rel.includes('noopener'), `У ссылки ${getAttribute(anchor, 'href')} нет rel="noopener"`);
    }
  }
});

test('поля формы связаны с подписями', () => {
  const labelTargets = new Set(tags('label').map(label => getAttribute(label, 'for')).filter(Boolean));
  for (const control of [...tags('input'), ...tags('textarea'), ...tags('select')]) {
    const id = getAttribute(control, 'id');
    if (id) assert.ok(labelTargets.has(id), `У поля #${id} нет связанного label`);
  }
});

test('навигация наблюдает разделы и переключает активную ссылку', () => {
  const site = loadSiteScript();
  assert.deepEqual(site.observed, site.sections);
  assert.equal(site.getObserverOptions().rootMargin, '-40% 0px -55% 0px');

  site.navLinks[1].classList.add('active');
  site.getObserverCallback()([{ isIntersecting: true, target: site.sections[0] }]);
  assert.equal(site.navLinks[0].classList.contains('active'), true);
  assert.equal(site.navLinks[1].classList.contains('active'), false);

  site.getObserverCallback()([{ isIntersecting: false, target: site.sections[1] }]);
  assert.equal(site.navLinks[0].classList.contains('active'), true);

  site.getObserverCallback()([{ isIntersecting: true, target: site.sections[2] }]);
  assert.equal(site.navLinks.some(link => link.classList.contains('active')), false);
});

test('подключённый скрипт автоматически запускается в браузерном окружении', () => {
  const site = loadSiteScript(false);
  const modulePath = require.resolve('../site.js');
  const hadDocument = Object.hasOwn(global, 'document');
  const hadObserver = Object.hasOwn(global, 'IntersectionObserver');
  const previousDocument = global.document;
  const previousObserver = global.IntersectionObserver;

  try {
    global.document = site.document;
    global.IntersectionObserver = site.IntersectionObserver;
    delete require.cache[modulePath];
    const browserEntry = require(modulePath);
    assert.equal(typeof browserEntry.initSite, 'function');
  } finally {
    delete require.cache[modulePath];
    if (hadDocument) global.document = previousDocument;
    else delete global.document;
    if (hadObserver) global.IntersectionObserver = previousObserver;
    else delete global.IntersectionObserver;
  }

  assert.deepEqual(site.observed, site.sections);
  assert.equal(typeof site.elements.get('bookForm').listeners.get('submit'), 'function');
});

test('форма отклоняет пустые и пробельные обязательные поля', () => {
  const site = loadSiteScript();
  site.elements.get('book-name').value = '   ';
  site.elements.get('book-tg').value = '\t';

  submitForm(site);

  assert.equal(site.elements.get('field-name').classList.contains('has-error'), true);
  assert.equal(site.elements.get('field-tg').classList.contains('has-error'), true);
  assert.equal(site.elements.get('bookForm').hidden, false);
  assert.equal(site.elements.get('bookSuccess').hidden, true);
  assert.equal(site.logs.length, 0);
});

test('форма независимо валидирует имя и Telegram', () => {
  const onlyName = loadSiteScript();
  onlyName.elements.get('field-name').classList.add('has-error');
  onlyName.elements.get('book-name').value = 'Максим';
  submitForm(onlyName);
  assert.equal(onlyName.elements.get('field-name').classList.contains('has-error'), false);
  assert.equal(onlyName.elements.get('field-tg').classList.contains('has-error'), true);

  const onlyTelegram = loadSiteScript();
  onlyTelegram.elements.get('field-tg').classList.add('has-error');
  onlyTelegram.elements.get('book-tg').value = '@max_sunfire';
  submitForm(onlyTelegram);
  assert.equal(onlyTelegram.elements.get('field-name').classList.contains('has-error'), true);
  assert.equal(onlyTelegram.elements.get('field-tg').classList.contains('has-error'), false);
});

test('валидная заявка нормализуется и показывает подтверждение', () => {
  const site = loadSiteScript();
  site.elements.get('book-name').value = '  Анна  ';
  site.elements.get('book-tg').value = '  @anna  ';
  site.elements.get('book-desc').value = '  Настроить интеграцию  ';
  site.elements.get('book-support').checked = true;

  submitForm(site);

  assert.equal(site.elements.get('bookForm').hidden, true);
  assert.equal(site.elements.get('bookSuccess').hidden, false);
  assert.equal(site.logs.length, 1);
  assert.deepEqual(JSON.parse(JSON.stringify(site.logs[0][1])), {
    name: 'Анна',
    telegram: '@anna',
    description: 'Настроить интеграцию',
    support: true,
  });
});
