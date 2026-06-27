> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/connections.md).

# Стрелки (соединения)

**Стрелки** - это условия перехода. По сути, стрелка выполняет роль распределителя: если клиент выбрал "Ответ 1", он переместится в блок №1, если выбрал "Ответ 2", то переместится в блок №2 и т.д.&#x20;

<figure><img src="/files/dD9VtVdsikDEIwQ6LIm9" alt=""><figcaption></figcaption></figure>

Чтобы **соединить два блока стрелкой**, наведите указатель мыши на блок. Появится белый круг внизу блока - узелок связи. Кликните по нему левой кнопки мыши и, удерживая кнопку, тяните к следующему блоку. Отпустите кнопку - стрелка создана:

<figure><img src="/files/PbK6uuEyVnRXPpKJBG8c" alt="" width="375"><figcaption></figcaption></figure>

Наведите мышь на стрелку и увидите меню действий для стрелки:

<figure><img src="/files/NtBiAC9LtXVtN5h8e5hE" alt=""><figcaption></figcaption></figure>

При клике на шестеренку откроется форма настроек стрелки:

<figure><img src="/files/DQKSWOwNCPLP7xY1fm3o" alt="" width="563"><figcaption></figcaption></figure>

Как видите, структура формы настроек стрелки содержит разделы настройки таймера перехода, условного перехода и основные настройки для стрелок со сбором данных.

{% hint style="success" %}
Важно знать!&#x20;

Стрелки не могут существовать сами по себе, они являются элементом соединения двух блоков.
{% endhint %}

{% embed url="<https://www.youtube.com/watch?v=4ODbi4LDORg>" %}

Чтобы перейти в форму настройки стрелки (соединения), наведите на стрелку: появится шестеренка, на которую нужно кликнуть:

<figure><img src="/files/Q3ggK54uNCvdHcJ9KU4z" alt="" width="563"><figcaption></figcaption></figure>

Тогда форма настройки откроется справа на экране.

### Описание

<figure><img src="/files/yr2L7du2OlSCVVkWZ1c9" alt="" width="563"><figcaption></figcaption></figure>

В это поле можно задать краткое описание назначения стрелки. Полезно для структурирования логики бота: поможет не запутаться, если работаете над сложным проектом с большим количеством блоков. По умолчанию описание указано "Соединение". Чтобы изменить его, кликните по описанию и введите своё.  На работу бота данное поле не влияет.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/connections.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
