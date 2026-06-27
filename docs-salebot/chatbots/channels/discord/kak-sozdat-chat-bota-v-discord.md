> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/discord/kak-sozdat-chat-bota-v-discord.md).

# Как создать чат-бота в Discord

## Подготовка к подключению

### Cоздание бота

Шаг 1. Создайте приложение ([перейдите по ссылке](https://discord.com/developers/applications))

Шаг 2. Добавьте бота (Add Bot)

<div data-with-frame="true"><figure><img src="/files/wsPUhoxgK9Dr3E1MKft9" alt=""><figcaption></figcaption></figure></div>

Шаг 2.1. В разделе Installation выберите Install Link -> None

<div data-with-frame="true"><figure><img src="/files/NKvMdjpaX9PR6dyWufdo" alt=""><figcaption></figcaption></figure></div>

Шаг 2.2. В разделе Bot выключите Public Bot, далее включите Intents:

* Message Content Intent;
* Server memebrs intent;
* но можно и Presence Intent на будущее.

<div data-with-frame="true"><figure><img src="/files/UsXmP9DTbfdypQl5SQci" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/jT1OkJjpKzTTt08HJgy6" alt=""><figcaption></figcaption></figure></div>

&#x20;3\. Получите токен (Reset Token)

&#x20;4\. Добавьте бота на сервер (OAuth2 → URL Generator, в Scopes отметить bot, в Bot Permissions выбрать Send Messages, Read Message History и другие нужные привилегии, перейти по полученной ссылке, выбрать сервер для добавления и согласиться)

<div data-with-frame="true"><figure><img src="/files/cDvRXKJCuvOpJNw65BBj" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/K8Jz88sBevpBb6JLEyZD" alt=""><figcaption></figcaption></figure></div>

Для получения полного вебхука от Дискорд достаточно присвоить любое значение переменной  save\_webhook

Если переменная задана, вебхук будет в сохранен в discord\_webhook

## Подключение к Salebot

Теперь перейдите в раздел "Каналы" в своем проекте и нажмите кнопку Discord:

<div data-with-frame="true"><figure><img src="/files/LE4l3Mj3wzSyPBiC3wgv" alt=""><figcaption></figcaption></figure></div>

Откроется окно, куда нужно вставить сгенерирированный токен:

<div data-with-frame="true"><figure><img src="/files/QU6z5gnMCQZ2eYgrk4KH" alt=""><figcaption></figcaption></figure></div>

## Цепочка сообщений и AI-ассистент

Чат-бот в Discord поддерживает стандартные функции для ботов:

* умеет писать в каналы/треды/личные сообщения.&#x20;
* ставить реакции.
* прикреплять/получать вложения.&#x20;
* изменение/удаление сообщений.

Также можно включить AI-ассистента, тогда умный ИИ будет общаться с вашими клиентами в дискорде.

{% hint style="success" %}
Подробнее о том, как создать чат-бота, рассказали в разделе "[Как создать чат-бот для бизнеса](/chatbots/builder.md)".
{% endhint %}

{% hint style="success" %}
Подробнее о том, как создать включить AI-ассистента, рассказали в разделе "[AI-ассистент](/chatbots/ai_assistant.md)".
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/discord/kak-sozdat-chat-bota-v-discord.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
