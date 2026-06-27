> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/max/shift.md).

# Перенос закрытых клубов из TG в MAX

Сначала необходимо зарегистрироваться в MAX и создать бота.

{% hint style="info" %}
[Подробнее о создании чат-бота для MAX и возможностях мессенджера рассказали в статье MAX.](/chatbots/channels/max/chatbot_max.md)
{% endhint %}

{% hint style="warning" %}
После прохождения верификации в мессенджере, в настройках бота вы найдете **токен.** Обязательно скопируйте его, он понадобится вам далее.
{% endhint %}

После регистрации и верификации, создайте групповой чат в MAX:

<div data-with-frame="true"><figure><img src="/files/zB8mEBXGDuweGnlNAGpQ" alt="" width="375"><figcaption></figcaption></figure></div>

Далее добавьте бота в группу и назначьте бота суперадминистратором:

<div data-with-frame="true"><figure><img src="/files/jpfLjsgV490Bm8KaVt5S" alt="" width="563"><figcaption></figcaption></figure></div>

Теперь перейдите в Salebot в раздел "Каналы" в проекте и нажмите на кнопку MAX:

<div data-with-frame="true"><figure><img src="/files/rwL79M80k8jVuV47lwJa" alt=""><figcaption></figcaption></figure></div>

Вставьте токен, скопированный в настройках бота, в одноименное поле "Токен" и нажмите "Готово". Тогда бот будет подключен к вашему проекту в Salebot.

{% hint style="warning" %}
Теперь скопируйте ID группового чата в MAX.
{% endhint %}

Затем перейдите в настройки проекта в раздел "Константы" и пропишите константы:

* save\_webhook=1
* access\_token=ntp0MZxYF3K8kKtDeQ7p8oDOjSCM7EKSkl0CvJpw91DWUhMQNARTnoLtzA\ <mark style="color:$success;">**(здесь указывается токен вашего бота в MAX)**</mark>
* chatId=-1234567\ <mark style="color:blue;">**(здесь указывается ID вашего группого чата в MAX. Обращаем внимание, ID группового чата прописан со знаком "-"!)**</mark>

<div data-with-frame="true"><figure><img src="/files/jAiiSEMZ2E5eYrvQlJn8" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="warning" %}
Перейдите в раздел списки и создайте Список для подписчиков. ID данного списка вам понадобится далее по настройкам.
{% endhint %}

В блоке после успешной оплаты в Telegram добавляйте клиента в Список, созданный ранее. Далее будем отправлять блок с функцией в калькуляторе на добавление в групповой чат в MAX.

Шаг 1. Создайте блок в конструкторе SaleBot:

<div data-with-frame="true"><figure><img src="/files/GbEUe9Ix1fql9oQQWaSm" alt=""><figcaption></figcaption></figure></div>

И пропишите в калькуляторе функцию `max_add_chat_member(chat_id, user_id)`

Чтобы удалить клиента после окончания подписки, воспользуйтесь функцией `max_delete_chat_member(chat_id, user_id)`

<div data-with-frame="true"><figure><img src="/files/CusCVBukVjPG9M80K33t" alt=""><figcaption></figcaption></figure></div>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/max/shift.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
