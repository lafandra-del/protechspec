> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/quick_automation/max.md).

# Автоматизация MAX

Теперь в Salebot можно автоматизировать работу закрытых каналов/чатов (клубов) в MAX.

Выдача доступа после оплаты, добавление и удаление участников, контроль сроков подписки — всё настраивается автоматически.

## Подготовка группы/канала

Чтобы успешно автоматизировать подписки в закрытые каналы или группы, Вам необходимо создать чат-бота в МАХ, затем добавить его в канал/группу с правами администратора.

{% hint style="success" %}

#### Создать чат-бота в MAX

Как создать Чат-бота в MAX и подключить его к Salebot, [рассказали в этой статье.](/chatbots/channels/max/chatbot_max.md)
{% endhint %}

### Как добавить бота в группу/канал MAX

После регистрации и верификации, создайте групповой чат в MAX:

<div data-with-frame="true"><figure><img src="/files/zB8mEBXGDuweGnlNAGpQ" alt="" width="375"><figcaption></figcaption></figure></div>

Далее добавьте бота в группу и назначьте бота суперадминистратором:

<div data-with-frame="true"><figure><img src="/files/jpfLjsgV490Bm8KaVt5S" alt="" width="563"><figcaption></figcaption></figure></div>

Теперь перейдите в Salebot в раздел "Каналы" в проекте и нажмите на кнопку MAX:

<div data-with-frame="true"><figure><img src="/files/rwL79M80k8jVuV47lwJa" alt=""><figcaption></figcaption></figure></div>

Вставьте токен, скопированный в настройках бота, в одноименное поле "Токен" и нажмите "Готово". Тогда бот будет подключен к вашему проекту в Salebot.

## Настройки автоматизации

Чтобы автоматизировать работу в закрытых клубах по подписке, наведите курсором на "Конструктор". Тогда откроется меню, где вы увидите вкладку с автоматизацией MAX:

<div data-with-frame="true"><figure><img src="/files/4zsWKjYjmTmBS4WR7MOM" alt="" width="375"><figcaption></figcaption></figure></div>

Далее нажмите на "Добавить автоматизацию".&#x20;

<div data-with-frame="true"><figure><img src="/files/2vhMzR48HNffm9YsTvqR" alt="" width="375"><figcaption></figcaption></figure></div>

Тогда откроются настройки автоматизации с двумя вкладками: Основные настройки и Настройки сообщений.

<div data-with-frame="true"><figure><img src="/files/XL6rwhHYoZ4uLUPGpURR" alt=""><figcaption></figcaption></figure></div>

### Основные настройки

В основных настройках выберите бота, который подключен к закрытому каналу/группе и пропишите ID группы.

<div data-with-frame="true"><figure><img src="/files/Jn1DNUaL3IyA94Up7iJS" alt=""><figcaption></figcaption></figure></div>

В условии запуска бота можно оставить одно условие "/start" и добавить доп. условия через точку с запятой (;).

<div data-with-frame="true"><figure><img src="/files/J4LgmtjqAOsXANJ3ZIFa" alt=""><figcaption></figcaption></figure></div>

Далее выберите сервис для приема платежей по подписке:

<div data-with-frame="true"><figure><img src="/files/cUQEWerQqtIKr9b2XWZV" alt="" width="563"><figcaption></figcaption></figure></div>

Затем настройте тарифы для подписки:

<div data-with-frame="true"><figure><img src="/files/Ll5bQNxiVZx91DOWlBbm" alt="" width="563"><figcaption></figcaption></figure></div>

Нужно прописать:

1. Название тарифа;
2. Стоимость тарифа;
3. Количество дней доступа к каналу/группе (период).

Можно создать несколько тарифов для канала:

<div data-with-frame="true"><figure><img src="/files/dugPV68bvgkAw2kUSZuW" alt="" width="563"><figcaption></figcaption></figure></div>

Теперь нажмите "Сохранить" и перейдите к настройкам сообщений.

### Настройки сообщений

Во вкладке "Настройки сообщений" необходимо настроить следующие типы сообщений:

<div data-with-frame="true"><figure><img src="/files/mXTyuSm8utnWqI0yjlNs" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Приветственное сообщение — это сообщение является входом в воронку для покупки клиентом подписки в клуб (НЕ является первым сообщением в канале).
{% endhint %}

Можно прописать свой текст для каждого сообщения или оставить текст по умолчанию. После чего нажмите "Сохранить".

{% hint style="success" %}
Готово! Ваша автоматизация подписки в клубы завершена с помощью простых и понятных шагов.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/quick_automation/max.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
