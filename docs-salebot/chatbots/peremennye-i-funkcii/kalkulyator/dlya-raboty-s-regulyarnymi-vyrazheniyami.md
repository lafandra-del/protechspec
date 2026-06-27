> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-regulyarnymi-vyrazheniyami.md).

# Для работы с регулярными выражениями

{% hint style="danger" %}
Напоминаем, что время выполнения регулярного выражения - 5 секунд.
{% endhint %}

**findall() | similar()**

<mark style="color:red;">**ОБОЗНАЧЕНИЯ:**</mark>

<mark style="color:red;">**!**</mark> - Обязательные параметры

{% tabs %}
{% tab title="Примеры" %}
Рассмотрим пример поиска строки по заданному регулярному выражению:

<figure><img src="/files/H17KpVCaAG5sdYo1Zfzp" alt=""><figcaption><p>Пример использования findall()</p></figcaption></figure>

Результат:

<figure><img src="/files/611Rqt9l2LwcR9rMCQQ5" alt=""><figcaption><p>Результат вычисления функции findall()</p></figcaption></figure>

Пример использования функции сравнения строк с учетом описок: &#x20;

<figure><img src="/files/AtlybKmvqQmYVmxFNrYU" alt=""><figcaption><p>Простой пример применения similar()</p></figcaption></figure>

<figure><img src="/files/n6DBc9l3hu6Bag4aDr95" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
findall('.ru\/(.+)\/', 'https://payform.ru/ab252acn/', 0)

ответ = if(similar(загадка, question) == True , "супер!", "Неет! это - #{загадка}")
```

{% endtab %}

{% tab title="Описание" %}

#### <mark style="background-color:blue;">Поиск в строке по регулярному выражению</mark>

**findall(reg, str, index) —** для поиска всех вхождений группы в строку. &#x20;

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;reg** - регулярное выражение

<mark style="color:red;">**!**</mark>**&#x20;str** - строка, в которой происходит поиск

&#x20;**index** - индекс найденного результата. Индекс считается с нуля. То есть первый найденный результат будет иметь индекс 0.

<mark style="background-color:blue;">**Сравнение строк с учетом описок**</mark>

**similar(str1, str2)** - для сравнения строк с учетом описок. Возвращает True, если строки отличаются менее чем на 30%.&#x20;
{% endtab %}
{% endtabs %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-regulyarnymi-vyrazheniyami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
