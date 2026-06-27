> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/zayavki.md).

# Заявки

{% hint style="success" %}
Страница заявок доступна для всех сайтов (лендингов, квиза, формы, многостраничного сайта), где создана секция форма сбора заявок или квиз-форма.
{% endhint %}

При создании секции (блока) Форма заявок с сайта, вы сможете отслеживать с помощью удобного функционала количество заявок ваших пользователей через сайт:

<figure><img src="/files/xkZnoNcUgICic3J5caCE" alt="" width="563"><figcaption></figcaption></figure>

Также во вкладку "Заявки" можно перейти в общем разделе с сайтами, кликнув по кнопке "Заявки":

<figure><img src="/files/0epciDQDf9B7T3KJ1mm6" alt="" width="563"><figcaption></figcaption></figure>

Во вкладке "Заявки" вы увидите таблицу с информацией о ваших клиентах, которые заполнили данную заявку:

<figure><img src="/files/aFIuorYb8Maj01xsVJJt" alt=""><figcaption></figcaption></figure>

Далее отработанные заявки можно пометить галочкой и удалить:

<figure><img src="/files/uMfD2UjNovjXKAFlRCSK" alt=""><figcaption><p>В заявках также могут быть отображены utm-метки</p></figcaption></figure>

Для выгрузки списка заявок можно воспользоваться кнопкой "Скачать" в верхнем меню:

<figure><img src="/files/e1BIFYv6jPxHMZ623iJU" alt=""><figcaption></figcaption></figure>

При клике на кнопку откроется правый бар, в котором можно поменять местами столбцы таблицы и выгрузить таблицу с заявками в CVS формате:

<figure><img src="/files/WUz4iKIkiLDIsbkV1ECS" alt=""><figcaption></figcaption></figure>

Далее нажмите "Скачать", тогда таблица будет сохранена на вашем устройстве в формате cvs:

<figure><img src="/files/xgyXcY2CyGh5PmPdPetr" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/zayavki.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
