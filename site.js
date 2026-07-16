function initSite(documentRef = document, IntersectionObserverRef = IntersectionObserver, consoleRef = console) {
  // Подсветка активного пункта навигации при скролле
  const sections = documentRef.querySelectorAll('section[id]');
  const navLinks = documentRef.querySelectorAll('.nav-links a');

  const observer = new IntersectionObserverRef(entries => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        navLinks.forEach(a => a.classList.remove('active'));
        const link = documentRef.querySelector(`.nav-links a[href="#${entry.target.id}"]`);
        if (link) link.classList.add('active');
      }
    });
  }, { rootMargin: '-40% 0px -55% 0px' });

  sections.forEach(section => observer.observe(section));

  // Форма записи на консультацию
  const bookForm = documentRef.getElementById('bookForm');
  const bookSuccess = documentRef.getElementById('bookSuccess');

  bookForm.addEventListener('submit', event => {
    event.preventDefault();
    let valid = true;

    const nameField = documentRef.getElementById('field-name');
    const nameValue = documentRef.getElementById('book-name').value.trim();
    if (!nameValue) {
      nameField.classList.add('has-error');
      valid = false;
    } else {
      nameField.classList.remove('has-error');
    }

    const telegramField = documentRef.getElementById('field-tg');
    const telegramValue = documentRef.getElementById('book-tg').value.trim();
    if (!telegramValue) {
      telegramField.classList.add('has-error');
      valid = false;
    } else {
      telegramField.classList.remove('has-error');
    }

    if (!valid) return;

    consoleRef.log('Заявка на консультацию:', {
      name: nameValue,
      telegram: telegramValue,
      description: documentRef.getElementById('book-desc').value.trim(),
      support: documentRef.getElementById('book-support').checked,
    });

    bookForm.hidden = true;
    bookSuccess.hidden = false;
  });
}

if (typeof document !== 'undefined' && typeof IntersectionObserver !== 'undefined') {
  initSite();
}

if (typeof module !== 'undefined' && module.exports) {
  module.exports = { initSite };
}
