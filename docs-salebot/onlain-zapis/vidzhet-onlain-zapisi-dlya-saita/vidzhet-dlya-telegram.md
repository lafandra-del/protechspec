> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/vidzhet-onlain-zapisi-dlya-saita/vidzhet-dlya-telegram.md).

# Виджет для Telegram

После того как вы узнали, как создать виджет и внедрить его на сайт, вы можете создать кнопку Web App в Telegram, которая помогает открывать сайт в виде приложения в мессенджере.&#x20;

{% hint style="info" %}
Вместо полного сайта можно создать лендинг с одной секцией с виджетом онлайн-записи и направлять вашим клиентам виджет в виде кнопки в Телеграме с помощью кнопки веб-апп.&#x20;
{% endhint %}

<figure><img src="/files/iTWA5yIQHpY2E0t5ZSOu" alt="" width="563"><figcaption></figcaption></figure>

Создайте блок в конструкторе и добавьте кнопку Web App.&#x20;

Чтобы добавить кнопку Web App в блок, в настройках блока нажмите на "Кнопки", а затем "+ Добавить кнопку":

<figure><img src="/files/kmLIQa2q1im2rUBBq8Td" alt="" width="563"><figcaption></figcaption></figure>

После клика "+ Добавить кнопку" откроется настройка для добавления кнопки:

<figure><img src="/files/QUHwkAaUD83Q8CkHMrmt" alt=""><figcaption></figcaption></figure>

Здесь необходимо:

1. Задать название кнопки: это может быть любое необходимое наименование.
2. Задать функцию кнопки: должна быть кнопка Web App Telegram:
3. Выбрать сайт, в котором вы создали секцию с виджетом онлайн-записи:

<figure><img src="/files/mavCF0vL4uxtvqW4CUdu" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Полезно!&#x20;

Необязательно для кнопки Web-app создавать блок с условием: вы можете создать кнопку и добавить блок с кнопкой в любой блок в схеме, исходя из логики бота.
{% endhint %}

<figure><img src="/files/gd7hgJntPOqTp0FfQkwd" alt=""><figcaption></figcaption></figure>

Далее в боте будет доступна кнопка веб-ап с виджетом онлайн-записи:

<figure><img src="/files/F2cAwhxXHzJoXGCkBRnS" alt="" width="375"><figcaption></figcaption></figure>

## Callback о записи

В диалог с клиентом после записи будет приходить колбек — уведомление о записи — следующего вида:

<figure><img src="/files/EfFIWPTptrKrVBha0hMM" alt="" width="464"><figcaption></figcaption></figure>

<mark style="color:orange;">**new\_order\_in\_calendar**</mark> - не изменяемая часть колбека&#x20;

&#x20;<mark style="color:yellow;">**\[489046159]**</mark> - order\_id  идентификатор заявки&#x20;

<mark style="color:red;">**Добавлена запись даты\_и\_время\_записи**</mark>

<mark style="color:purple;">**на 30 минут**</mark> - длительность услуги&#x20;

<mark style="color:red;">**Объекту: Тест 30**</mark> - какому именно объекту добавлена запись

Вид самого колбека:

***`new_order_in_calendar: [489046159] Добавлена запись с 2025-06-01 14:00 до 2025-06-01 14:30 на 30 минут. Объекту: Тест 30`***

Настроить реакцию на колбек можно прописав значение в условии блока:

<figure><img src="/files/nHFNa6gsIOqAbiDOV4E9" alt=""><figcaption></figcaption></figure>

В блоке можно прописать необходимое обратное сообщение клиенту.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/vidzhet-onlain-zapisi-dlya-saita/vidzhet-dlya-telegram.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
