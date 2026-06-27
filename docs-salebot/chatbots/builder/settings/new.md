> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/new.md).

# Новый стиль конструктора

Теперь в Salebot появился новый стиль конструктора:&#x20;

* новый стиль наглядно показывает настройки блоков: можно увидеть прописанные условия, кнопки, вложения;
* в новом стиле можно протягивать стрелки прямо из блока с кнопками, при этом условие в стрелке для перехода автоматически подтянется из названия кнопки;
* новый стиль также обладает более гибкими настройками: стрелки можно двигать в любых направлениях и изгибать так, как удобно именно вам; также плашка с условиями в стрелке может перемещаться, например, если вам нужно чтобы два условия из стрелки не накладывались друг на друга и т.п.

<figure><img src="/files/25zQ5HOoa0OKrIj3Xuon" alt=""><figcaption></figcaption></figure>

Рассмотрим подробнее.

## Как переключиться на новый стиль

Перейдите в конструктор, где в верхней панели вы увидите необходимый чекбокс:

<figure><img src="/files/8tgjgSdKxTjnp2JPC8MZ" alt="" width="563"><figcaption></figcaption></figure>

Активируйте чекбокс, чтобы применить новый стиль.&#x20;

Чтобы отображать схему в старом стиле, чекбокс должен быть в неактивном положении:

<figure><img src="/files/IvhpmLIM0zCampPxD0Dm" alt="" width="563"><figcaption></figcaption></figure>

## Что отображается в схеме

В новом стиле можно просмотреть, что лежит в блоке, без перехода к его настройкам:

1. Отображаются условия для блоков "Стартовое условие" и "Не состояние с условием":

<figure><img src="/files/QcLTHjVbWM6XSGjtBUL2" alt=""><figcaption></figcaption></figure>

2. Какие кнопки есть в блоке:

<figure><img src="/files/ZK2i56qZKd4lnLzTz47v" alt="" width="563"><figcaption></figcaption></figure>

3. Вложения в блоках:

<figure><img src="/files/aWlMEnIJHe93T8cH6KaV" alt="" width="563"><figcaption></figcaption></figure>

## Как работать со стрелками

При создании кнопок в блоке по старому стилю вам самостоятельно нужно прописывать условия в стрелке — это намного дольше.

К примеру возьмем блок с двумя кнопками:

<figure><img src="/files/OrdQ1nARMHRiED7o2dfu" alt=""><figcaption></figcaption></figure>

Чтобы при клике по кнопке, ваш клиент переходил в следующий блок, нужно создать отдельно два блока, затем протянуть к ним стрелку, перейти в настройки КАЖДОЙ стрелки и прописать условие:

<figure><img src="/files/4cNnY1alm4mpCDpPTKkK" alt=""><figcaption></figcaption></figure>

В новом стиле, чтобы создать стрелки с условиям для перехода в следующий блок по клику, достаточно просто протянуть стрелку из кнопки:

<figure><img src="/files/En7Pc1Xzcc4HZz7Ji0C3" alt=""><figcaption></figcaption></figure>

Также стандартно стрелки можно перемещать или изменять:

<figure><img src="/files/dlklu0CZ5WQ8HEmxRPyG" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Новый стиль конструктора достаточно удобный для работы и наглядного понимания, для чего нужен каждый блок схемы.

Для работы с лаконичной схемой чат-бота вы всегда можете переключиться на старый стиль: просто переключите чекбокс "Новый стиль" в неактивное состояние.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/new.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
