> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-peremennymi.md).

# Для работы с переменными

## Как получить значения переменных клиента

**get\_client\_var() | get\_client\_vars()**

{% tabs %}
{% tab title="Описание" %} <mark style="background-color:blue;">**Для получения значения одной переменной**</mark>

**get\_client\_var(client\_id, variable)**

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;client\_id -** идентификатор клиента

<mark style="color:red;">**!**</mark>**&#x20;variable -** имя переменной

<mark style="background-color:blue;">**Для получения значения нескольких переменных**</mark>

**get\_client\_vars(client\_id, names)**

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;client\_id -** идентификатор клиента

<mark style="color:red;">**!**</mark>**&#x20;names-** массив переменных
{% endtab %}

{% tab title="Пример" %}
Давайте менеджеру отправим сообщение с номером урока, который проходит один из участников нашего проекта:

<figure><img src="/files/8q4v32gQAWmz0QYVryV8" alt=""><figcaption><p>Пример использования функции получения значения переменной</p></figcaption></figure>

<figure><img src="/files/6kTu5lf0sQg4vuVTILoR" alt=""><figcaption><p>Результат работы функции</p></figcaption></figure>

Тот же вариант но с выводом, например, уровня и урока в нем:

<figure><img src="/files/rQt1Y0P0k6GRemGExjjB" alt=""><figcaption><p>Пример использования функции получения нескольких значений</p></figcaption></figure>

<figure><img src="/files/pmKGnocCp4s73xqPIKwI" alt=""><figcaption><p>результат работы функции</p></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
/*Получение одной переменной*/
probno=get_client_var(64732310, 'urok')

/*Получение нескольких переменных*/
names=["level","urok"]
probno=get_client_vars(64732310, names)
```

{% endtab %}
{% endtabs %}

## Как присвоить переменную клиента

**set\_client\_var() | set\_client\_vars()**

{% tabs %}
{% tab title="Описание" %} <mark style="background-color:blue;">**Для присвоения значения одной переменной**</mark>

**set\_client\_var(client\_id, variable, value)**

Параметры:&#x20;

**client\_id** — id клиента в Salebot\
**variable** — название переменной, которая будет присваиваться\
**value** — значение этой переменной

<mark style="background-color:blue;">**Для присвоения нескольких переменных**</mark>

**set\_client\_vars(client\_id, variables\_dict)**

Параметры:

**client\_id** — id клиента в Salebot \
**variables\_dict** — словарь, содержащий названия всех добавляемых переменных и их значения. \
Формат:\
'{"var\_name1": "var\_value1", "var\_name2": "var\_value2", "var\_name3": "var\_value3"}'
{% endtab %}

{% tab title="Пример" %}
Пример1:

set\_client\_var(client\_id, "novoe", "да")

![](/files/1hs8YKoOJBHYJLwPK07M)

![](/files/QaqqboCluLBq8GI1Xnk8)

Пример2:

set\_client\_vars(1136, '{"var\_name1": "var\_value1", "var\_name2": "var\_value2", "var\_name3": "var\_value3"}')
{% endtab %}
{% endtabs %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-peremennymi.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
