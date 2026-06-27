> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/settings.md).

# Вкладка: Сообщение

### **Поле: Текст сообщения (Ответ)**

**Ответ** - это поле, где вы указываете текст, который придет пользователю в личных сообщениях.  Поле можно оставить пустым ( по умолчанию установлено #{none} - проигнорировать сообщение): например, вам нужно прислать просто картинку без сопроводительного текста. \
Также помимо текста можно указывать переменные в виде #{переменная} — так будет выводиться их значение. Допускается вместо переменной записывать математические действия, например, #{2 + 2} выведет значение 4.&#x20;

### Генерация текста сообщения ИИ

В поле можно генерировать сообщения с помощью искусственного интеллекта:

<figure><img src="/files/07fUpxmR2n3GoarxDs8J" alt="" width="563"><figcaption></figcaption></figure>

Кликнув по кнопке, откроется окно модальной формы для генерации текста сообщения:

<figure><img src="/files/6vjpnEKOr8H1x5KbBuCJ" alt="" width="563"><figcaption></figcaption></figure>

В пустом поле пропишите, какой именно текст вам нужен, а затем кликните на кнопку "Сгенерировать":

<figure><img src="/files/gZeVxtTyh4jK0kBkMO0o" alt="" width="563"><figcaption></figcaption></figure>

После чего вы увидите текст для своего сообщения:

<figure><img src="/files/shCywXfKyzBSYZO7JcvJ" alt="" width="563"><figcaption></figcaption></figure>

Чтобы текст появился в окне сообщения, кликните по кнопке "Вставить текст":

<figure><img src="/files/HuqHqicuRLBt7lczyve3" alt="" width="563"><figcaption></figcaption></figure>

Далее вы увидите текст в поле для сообщения:

<figure><img src="/files/dVcoBwT0mq4cnCTevL3e" alt="" width="563"><figcaption></figcaption></figure>

### Дополнительные кнопки

Под полем Текст сообщения есть **дополнительные кнопки**:&#x20;

1. **Добавить эмодзи**: встроенные эмодзи конструктора

<figure><img src="/files/y8dETJnBBXHEFCJCylHV" alt="" width="563"><figcaption></figcaption></figure>

2. **Вставить переменную**: шаблоны встроенных переменных. При клике по кнопке откроется окно с описанием встроенных переменных. Чтобы добавить переменную, кликните по ней.

<figure><img src="/files/S7I9XOVpc74zEjygXck9" alt="" width="563"><figcaption></figcaption></figure>

<figure><img src="/files/c8UT1oigUsJGMwjm4ZYd" alt=""><figcaption></figcaption></figure>

4. **Markdown в Telegram**: форматирование (разметка  текста) текста, настройка работает только в Telegram.&#x20;

<figure><img src="/files/qyWfUepZlPSDQZ9RVzGe" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="warning" %}
Если в этом блоке встречаются символы из перечисленных: '\_', '\*', '\[', ']', '(', ')', '\~', '\`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!'  — их нужно экранировать: добавлять перед ними обратный слэш \ \
\
Иначе сообщение не отправится вообще. При этом не имеет значения, какой участок текста вы размечаете.

&#x20;Пример: привет\\. Рады \*тебя\* видеть\\!
{% endhint %}

{% hint style="info" %}
Подробнее про работу с [Markdown читайте в этой статье.](/chatbots/builder/markdown.md)
{% endhint %}

4. **Защитить контент**: защита контента от копирования, работает только в Telegram. Защищенные сообщения нельзя переслать, а на телефоне нельзя переслать и сделать скриншот.

<figure><img src="/files/iPUnsXrNDlSVo0ehkn3g" alt="" width="563"><figcaption></figcaption></figure>

Пример сообщения с включенной защитой контента.

<div><figure><img src="/files/TDEtPQWElDInzkhSiIdD" alt=""><figcaption><p>Приложение Telegram для ПК: кнопки Переслать нет</p></figcaption></figure> <figure><img src="/files/VJ6torf4dUvidBBXbjJB" alt=""><figcaption><p>Веб-версия Telegram: кнопки Переслать нет</p></figcaption></figure></div>

5. HTML-разметка Telegram: поможет стилизовать текст в сообщениях в мессенджере

<figure><img src="/files/VvVnUQXObEqjzbuP3j6w" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Подробнее о разметке в Telegram рассказали в статье "[Markdown и HTML-разметка в Телеграм](/chatbots/channels/telegram/markdown.md)"
{% endhint %}

6. **Отправка без звука**

<figure><img src="/files/zrTwNodMDJGcaA1Fy5iq" alt="" width="563"><figcaption></figcaption></figure>

В некоторых мессенджерах существует возможность отправки сообщений без звука (например, в Телеграм):

<figure><img src="/files/zzBXTevyP5Ro2VcAu931" alt="" width="563"><figcaption></figcaption></figure>

В чат-боте существует та же функция: бот может отправлять сообщения без звука.&#x20;

7. Callback о просмотре для Вконтакте и email:

<figure><img src="/files/VNJ2SxOGCJG8rzQHrkLi" alt="" width="563"><figcaption></figcaption></figure>

Коллбек - это уведомление в боте о каком-нибудь совершенном действии клиентом или событии в проекте, которое отображается в диалоге с клиентом:

<figure><img src="/files/6QeG9r2c7kHaWWuIOBBo" alt=""><figcaption></figcaption></figure>

Данное уведомление клиент не видит, но на колбек можно настроить реакцию.

8. **Сохранение переписки в истории переписки с клиентом**:

<figure><img src="/files/dnO5wPXwq6Bu2Pf2B4Vp" alt="" width="563"><figcaption></figcaption></figure>

Данная кнопка активна по умолчанию, но, например, если вы не хотите сохранять какие-либо сообщение в истории с клиентом (определенные сообщения в воронке), то кнопку можно деактивировать.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/settings.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
