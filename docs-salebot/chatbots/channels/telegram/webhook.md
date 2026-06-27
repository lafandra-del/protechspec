> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/webhook.md).

# Получить полный вебхук (webhook) от Telegram

{% hint style="success" %}
***Что такое вебхук?***&#x20;

Это уведомление о произошедшем событии. Такое уведомление содержит значения измененных переменных.
{% endhint %}

## Как получить вебхук?

Для получения полного вебхука от Телеграм достаточно присвоить <mark style="color:red;">**любое значение переменной**</mark>  **save\_webhook:**

**1) или текстовое значение:**

<figure><img src="/files/SDcoGVkF5L1lD2FQ8pJH" alt=""><figcaption></figcaption></figure>

2\) или числовое значение:

<figure><img src="/files/ozlXL5at8CHpW9iKVyJF" alt=""><figcaption></figcaption></figure>

Переменная save\_webhook может быть как константой проекта, так и переменной в калькуляторе:

<figure><img src="/files/4gJtxoa0uUWmQCvUyVYi" alt=""><figcaption></figcaption></figure>

При этом ответ клиента на сообщение бота, в котором есть такая переменная, будет записываться в переменную **tg\_request**, которую вы найдете в карточке клиента среди переменных сделки:

<figure><img src="/files/4eQpvCO4hQeLvBGEVPag" alt="" width="563"><figcaption><p>Клиент ответил на сообщение бота из блока, в котором <br>присвоена переменная save_webhook</p></figcaption></figure>

<figure><img src="/files/NZNm2OYW4lotuFysv7dP" alt=""><figcaption><p><strong>tg_request и</strong> save_webhook в переменных клиента</p></figcaption></figure>

## Как получить ссылку на медиа с помощью переменной?

При помощи tg\_request можно получить ссылку на видео / изображение / анимацию.&#x20;

Для этого реализуем простую схему на получение файла:

1. Присвойте переменной **save\_webhook** любое значение удобным для вас способом, показанным выше, - либо константа проекта, либо переменная в калькуляторе. А затем создайте блок с условием.&#x20;

<figure><img src="/files/4XnonQfFpZfzqLkzBugc" alt=""><figcaption></figcaption></figure>

1. Из первого блока создайте следующий, в котором выведем результат

<figure><img src="/files/uT7NS0qML6U8mnYnNDMa" alt=""><figcaption></figcaption></figure>

Теперь перейдем к практическим действиям:

* перейдите в подключенный бот Telegram
* напишите свое ключевое слово&#x20;
* отправьте файл, ссылку которого вы желаете получить:

<figure><img src="/files/1Knozgrr5BwTRL0lMmF4" alt="" width="563"><figcaption></figcaption></figure>

Нас интересует последний file\_id в полученном ответе Telegram:

<figure><img src="/files/qed9TVRsUuBwyXsZxSE9" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Не забывайте, что полученная ссылка действует только в рамках того бота, в который вы отправляли файл
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/webhook.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
