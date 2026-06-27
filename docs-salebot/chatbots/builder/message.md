> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message.md).

# Настройки блока (сообщения)

#### Основные поля Редактора блока:

1. [Условие](/chatbots/builder/message/trigger.md)
2. [Сообщение](/chatbots/builder/message/settings.md)
3. [Кнопки](/chatbots/builder/message/buttons.md)
4. [Действие](/chatbots/builder/message/action.md)
5. [API-запрос](/chatbots/builder/message/api.md)
6. [Вложения](/chatbots/builder/message/attachments.md)
7. [Аналитика](/chatbots/builder/message/analytics.md)
8. [Калькулятор](/chatbots/peremennye-i-funkcii/kalkulyator.md)

{% hint style="warning" %}

#### Последовательность исполнения полей Редактора блока

1. Калькулятор: сверху вниз построчно.&#x20;
2. API-запрос и отправка вебхука.&#x20;
3. Кнопки
4. Отправка текста из поля Сообщение.
   {% endhint %}

## Форма редактора блока

Редактор блока по умолчанию открыт при переходе в конструктор воронок:

<figure><img src="/files/0JcNZt5U2TKhAeuqRwLY" alt=""><figcaption><p>Рис. 1. Раздел конструктор: рабочая область со схемой чат-бота и редактор блока</p></figcaption></figure>

Если создать (добавить) все необходимые настройки блока, выбрав его тип в том числе, и кликнуть по кнопке "Сохранить", то блок будет создан в поле воронки:

<figure><img src="/files/EGYZzwgDTdVOxuFxlbB3" alt="" width="375"><figcaption><p>Рис. 2. Настройки блока</p></figcaption></figure>

Созданный блок:

<figure><img src="/files/90vIRNceDTygslFHZqRa" alt=""><figcaption><p>Рис. 3. Созданный блок в рабочей области</p></figcaption></figure>

Если нужно открыть настройки определенного блока, то кликните по нужному блоку:&#x20;

<figure><img src="/files/bjhFsAxNqJrUOkaBGEPa" alt=""><figcaption><p>Рис. 4. Блок в рабочей области</p></figcaption></figure>

После нажатия на блок, откроются его настройки:

<figure><img src="/files/jmZFzjnsv0rq4b8FXEFh" alt=""><figcaption><p>Рис. 5. Пример: как открыть настройки блока</p></figcaption></figure>

На рисунке 5 представлена форма Редактора блока. По умолчанию она представлена в свернутом виде (рис. 7).&#x20;

<figure><img src="/files/JimlE42gJ5MEpoDgJS01" alt=""><figcaption><p>Рис. 6. Редактор блока открыт по Умолчанию, только вкладка "Сообщение</p></figcaption></figure>

Чтобы развернуть полный вид формы, необходимо нажать на "Вложение", "Кнопки", "Действия", "Калькулятор" и/или "API -запрос" в зависимости от того, что хотите добавить (настроить) в блоке:

<figure><img src="/files/qF3nXyIYUTouuMWJhjTY" alt=""><figcaption><p>Рис. 7. Пример: настройки блока со свернутыми вкладками настроек</p></figcaption></figure>

Тогда форма приобретет следующий вид:

<figure><img src="/files/zoRlLEzDvxNCZGg0C1BG" alt="" width="563"><figcaption><p>Рис. 8. Пример: настройки блока в развернутом состоянии</p></figcaption></figure>

По сути после заполнения данной формы на поле появится блок с теми или иными данными/настройками.

Каждая вкладка настроек обозначает определенные действия с блоком:&#x20;

* можно через чат-бота отправлять сообщения и вложения любого типа;&#x20;
* совершать какие-либо действия (например, переместить клиента по воронке, добавить или удалить из списка),&#x20;
* добавлять кнопки с оплатой,&#x20;
* открывать онлайн-запись (для кнопки Telegram Web-app)
* отправлять API-запросы,&#x20;
* использовать функции в калькуляторе (например, для создания сделки в CRM) и многое-многое другое!&#x20;

Огромный функциональный инструмент настроек поможет сделать схему более автоматизированной, а продажи и рост клиентов — еще интенсивнее.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
