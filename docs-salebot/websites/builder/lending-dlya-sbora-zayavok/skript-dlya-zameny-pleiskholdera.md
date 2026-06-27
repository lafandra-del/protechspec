> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/lending-dlya-sbora-zayavok/skript-dlya-zameny-pleiskholdera.md).

# Скрипт для замены плейсхолдера

{% hint style="success" %}
Обращаем внимание!&#x20;

Данный скрипт необязателен для использования в настройках вашего сайта.&#x20;

Поменять плейсхолдер вы сможете в настройках контента без применения скрипта
{% endhint %}

<figure><img src="/files/P0OAbo5iISp1IYIzEXW2" alt=""><figcaption></figcaption></figure>

## Работа со скриптом

Нажмите на лендинг (форму), где нужно заменить плейсхолдер:

<figure><img src="/files/8oXME1UM9vcgcKG65Jhn" alt=""><figcaption></figcaption></figure>

Затем в основных настройках лендинга с формами, перейдите в настройки:

<figure><img src="/files/73PHbrtgGbwfhMH22sSA" alt=""><figcaption></figcaption></figure>

Далее вкладка "Цвета, шрифты и HTML":

<figure><img src="/files/Yz2iAw0wqRGhRnRCjahi" alt=""><figcaption></figcaption></figure>

В поле JS-код вносятся следующий скрипт:

`document.addEventListener("DOMContentLoaded", function () {`&#x20;

`var input = document.querySelector(".name_input");`&#x20;

`input.placeholder = "Новый текст placeholder"; })` &#x20;

<figure><img src="/files/KXFSPSJxfoKU0XCBYFlo" alt="" width="563"><figcaption></figcaption></figure>

<table><thead><tr><th width="308"></th><th></th></tr></thead><tbody><tr><td>name_input</td><td>замена в поле запроса имени </td></tr><tr><td>phone_input</td><td>замена в поле запроса телефона </td></tr><tr><td>email_input</td><td>замена в поле запроса почты </td></tr><tr><td>ml_quiz_textarea</td><td>замена в поле запроса произвольной информации</td></tr></tbody></table>

&#x20;Результат выполнения скрипта:

<figure><img src="/files/UK8GYaHikAh38Gs2MDmX" alt=""><figcaption></figcaption></figure>

а


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/lending-dlya-sbora-zayavok/skript-dlya-zameny-pleiskholdera.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
