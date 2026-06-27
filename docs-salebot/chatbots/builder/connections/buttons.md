> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/connections/buttons.md).

# Отображать как кнопку

<figure><img src="/files/IBksrLaqR7OV6dktjzV7" alt="" width="375"><figcaption></figcaption></figure>

**Отображать как кнопку:** по умолчанию переключатель "Отображать как кнопку" в настройках соединений ОТКЛЮЧЕН. \
Чтобы создать кнопки с помощью стрелок, включите этот ползунок, а в поле "Условие стрелки" напишите текст, который будет на кнопке.\
Работает только в мессенджерах, где поддерживаются кнопки.&#x20;

{% hint style="info" %}
С помощью стрелок можно создать ТОЛЬКО клавиатурные кнопки
{% endhint %}

<figure><img src="/files/Q5eKeFEWqoPsJRR7jEKr" alt=""><figcaption></figcaption></figure>

<div><figure><img src="/files/2oCPsmMGIhS2BBc5ea8z" alt=""><figcaption><p>Кнопки в режиме теста бота</p></figcaption></figure> <figure><img src="/files/N6ppUNsmpFykB2Z2OkI8" alt=""><figcaption><p>кнопки в ТГ</p></figcaption></figure></div>

**Номер в линии и номер линии:** Кнопки, созданные с помощью стрелок, по умолчанию отображаются в вертикально друг под другом. С помощью этого поля можно изменить номер линии для отображения кнопки, созданной стрелкой. Нумерация начинается с 0:

<figure><img src="/files/uZfgyMKJ7CoEsYiJgJGp" alt=""><figcaption></figcaption></figure>

**Цвет кнопки: п**ри необходимости можно указать цвет кнопки — это работает в ВК и Viber.&#x20;

В ВК вам доступны 4 цвета кнопок (синий, красный, зеленый, белый). Если кнопка со ссылкой, то выбор цвета недоступен. Для выбора цвета нажмите на соответствующий квадрат в настройках.

В Вайбере можете выбрать любой цвет кнопки — нажмите на значок "Пипетка" и откроется палитра.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/connections/buttons.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
