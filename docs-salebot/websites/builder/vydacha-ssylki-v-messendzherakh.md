> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/vydacha-ssylki-v-messendzherakh.md).

# Выдача ссылки в мессенджерах

Ссылку на интернет-магазин можно выдавать в чат-боте: например, простой ссылкой (для других мессенджеров) или с помощью кнопки web-app в Telegram.&#x20;

<figure><img src="/files/cLeEHncS2PAs7aP148Nm" alt="" width="375"><figcaption></figcaption></figure>

Как это сделать?

## Telegram Web-app&#x20;

Шаг 1. Создаем блок в конструкторе.&#x20;

{% hint style="success" %}
Блок может быть вшит в готовую логику (схему) бота, или вы можете создать новый стартовый блок
{% endhint %}

<figure><img src="/files/J2YZwsYAhPl6LM0u8sN7" alt=""><figcaption></figcaption></figure>

Шаг 2. Кнопка Telegram Web-app

В блоке создаем кнопку (для этого нажмите на "Кнопки" в настройках блока) и кликните "Добавить кнопку". Откроется модальное окно с настройками кнопки:

<figure><img src="/files/0FCWscHOyAOLTeJ5LJ2t" alt=""><figcaption></figcaption></figure>

Выберите функцию 'Telegram Web Application и выберите сайт с магазином.

<figure><img src="/files/tnfZyFCJByVxzrg3cqoK" alt=""><figcaption></figcaption></figure>

Далее пропишите название кнопки, например, "Перейти на сайт" и нажмите "Добавить".

Далее кнопка будет добавлена в блок. Выберите также тип кнопки "В тексте":

<figure><img src="/files/0JVF6vle83o0RTutkVOl" alt="" width="563"><figcaption></figcaption></figure>

И сохраните настройки блока:

<figure><img src="/files/BqNNbFsDmlcEQlX1Fdet" alt="" width="563"><figcaption></figcaption></figure>

Далее протестируем бота Telegram. Напишем боту слово "Магазин", которое указано в условии блока:

<figure><img src="/files/vE2JRVzOmnhT4tPVZeb0" alt="" width="375"><figcaption></figcaption></figure>

Бот отправил в сообщении кнопку с сайтом. При клике на кнопку, открывается web-app с вашим магазином:

<figure><img src="/files/CL9UJe4GMrjwZ1x23IMJ" alt="" width="375"><figcaption></figcaption></figure>

## Кнопка с ссылкой на интернет-магазин (для др. мессенджеров)

Шаг 1. Копируем адрес интернет-магазина в адресной строке в бразуере:

Или на плашке интернет-магазина в разделе "Сайты":

<figure><img src="/files/nhBlYfpiCgoBQ9igRlWa" alt="" width="563"><figcaption></figcaption></figure>

Шаг 2. Создаем блок в конструкторе.&#x20;

{% hint style="success" %}
Блок может быть вшит в готовую логику (схему) бота или вы можете создать новый стартовый блок
{% endhint %}

<figure><img src="/files/J2YZwsYAhPl6LM0u8sN7" alt=""><figcaption></figcaption></figure>

Шаг 3. Кнопка с ссылкой на интернет-магазин

В блоке создаем кнопку (для этого нажмите на "Кнопки" в настройках блока) и кликните "Добавить кнопку". Откроется модальное окно с настройками кнопки:

<figure><img src="/files/0FCWscHOyAOLTeJ5LJ2t" alt=""><figcaption></figcaption></figure>

Укажите ссылку и название кнопки, при этом функция остается той же — по умолчанию:

<figure><img src="/files/HJ1KDytWvhssjhf0xMEe" alt="" width="375"><figcaption></figcaption></figure>

Далее кнопка будет добавлена в блок. Выберите тип кнопки "В тексте" или "Клавиатура" (для Вконтакте кнопка должна быть типа "Клавиатура"):

<figure><img src="/files/d2oJwcA6Mzgv0F1Dj7M3" alt=""><figcaption></figcaption></figure>

И сохраните настройки блока:

<figure><img src="/files/BqNNbFsDmlcEQlX1Fdet" alt="" width="563"><figcaption></figcaption></figure>

Далее протестируем работу кнопки Вконтакте:

<figure><img src="/files/Ii1dQoFJwtGo5462k9ss" alt="" width="294"><figcaption></figcaption></figure>

Бот отправил в сообщении кнопку с сайтом. При клике на кнопку открывается web-app с вашим магазином.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/vydacha-ssylki-v-messendzherakh.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
