> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-google-tablicami.md).

# Для работы с Google-таблицами

{% hint style="danger" %}
Внимание! Устаревшее!&#x20;

Для лучшей работы с данными загрузите их в [Таблицы Salebot,](broken://pages/m12tQghvK3rMwVuiUNYr) тогда Ваши боты будут работать намного быстрее и без ошибок, связанных с запросами к google-таблицам.
{% endhint %}

## Для работы с буквами колонок&#x20;

**c2n() | n2c() | addCols()**

{% tabs %}
{% tab title="Описание" %} <mark style="background-color:blue;">**Получение номера колонки по буквенному обозначению**</mark>

**c2n(str)**

Параметры:

<mark style="color:red;">**!**</mark> **str** - номер колонки в буквенном обозначении

<mark style="background-color:blue;">**Получение буквенного обозначения колонки по цифре**</mark>

**n2c(n)**

Параметры:

<mark style="color:red;">**!**</mark> **n**- номер колонки  виде числа

<mark style="background-color:blue;">**Получение буквенного обозначения колонки по смещению от заданного**</mark>

**addCols(str, n)**

Параметры:

<mark style="color:red;">**!**</mark> **str** - номер колонки в буквенном обозначении

**n** - смещение. Для получения номера колонки слева от обозначенного передайте отрицательное значение смещения
{% endtab %}

{% tab title="Примеры" %}

<figure><img src="/files/hvvLnXZ0Ah9iTUxIxEGI" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/cO8xAs9GlnvVFlUXe2Mm" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
число=c2n('AAB')
строка=n2c(54)
смещение=addCols('AA',-1)
```

{% endtab %}
{% endtabs %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-google-tablicami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
