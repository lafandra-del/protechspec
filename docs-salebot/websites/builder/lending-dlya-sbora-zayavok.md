> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/lending-dlya-sbora-zayavok.md).

# Лендинг для сбора заявок

Лендинг для сбора заявок, иначе **Сайт "Форма"** – это удобный одностраничный сайт (лендинг) с формой сбора заявок, настраиваемый на платформе Salebot, который позволяет собирать заявки на ваши услуги.

Использование Формы дает вам возможность собирать различные виды данных: например, контактную информацию, текстовые заявки, отсылать клиентов в мессенджеры, создавать заявки в CRM-системе и многое другое.

<figure><img src="/files/dBsoexCvycwVSWAyNHkj" alt=""><figcaption><p>Рис. 1. Пример формы сбора заявокв Сейлбот</p></figcaption></figure>

Salebot предоставляет различные настройки, включая текстовые поля, выпадающие списки, чекбоксы и многое другое. Это позволяет вам адаптировать форму под конкретные нужды вашего бизнеса и собирать именно ту информацию, которая необходима для достижения целей.

{% hint style="danger" %}
Обращаем внимание!&#x20;

Для форм сбора заявок с полями ввода для номера телефона, email или имени АВТОМАТИЧЕСКИ ставится чекбокс для согласия с обработкой персональных данных.&#x20;

<img src="/files/iZAtSkDTaxpoIVMqfILu" alt="" data-size="original">

По умолчанию ссылка возле поля "Я согласен с политикой обработки персональных данных" введет на Политику обработки персональных данных Salebot. В случае необходимости, вы можете указать свою политику обработки персональных данных.&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/lending-dlya-sbora-zayavok.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
