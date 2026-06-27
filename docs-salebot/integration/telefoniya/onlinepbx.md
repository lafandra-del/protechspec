> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/telefoniya/onlinepbx.md).

# OnlinePBX

## Ключ API и домен

Чтобы подключить сервис к Salebot, перейдите в свой аккаунт на платформе OnlinePBX:

<figure><img src="/files/8dcvgY6CD7IfwCDmwr4q" alt="" width="563"><figcaption></figcaption></figure>

Далее перейдите в раздел "Интеграция":

<figure><img src="/files/UFnmgTjqP6uDSPGfaEcS" alt=""><figcaption></figcaption></figure>

Затем в раздел API:

<figure><img src="/files/DT8qi9vzM3BiqfJyJhto" alt=""><figcaption></figcaption></figure>

В данном разделе вам понадобится скопировать API-ключ:

<figure><img src="/files/j3cRAF84Nf2KGHrV18eo" alt=""><figcaption></figcaption></figure>

А также домен onlinePBX:

<figure><img src="/files/MINO5fg7K4V1EFFQVaUm" alt=""><figcaption></figcaption></figure>

На данном этапе настройки подключения нами были получены необходимые данные для подключения. Переходим в настройки Salebot.

## Подключение к Salebot

Для подключения интеграции перейдите в раздел "Телефония" в настройках проекта:

<figure><img src="/files/o6OBA5ZjVSyM6JaixVzM" alt="" width="375"><figcaption></figcaption></figure>

Далее найдите onlinePBX среди доступных сервисов для интеграции:

<figure><img src="/files/z681q1bwnIfV2rMFqf7W" alt="" width="563"><figcaption></figcaption></figure>

Далее кликните на "Подключить", после чего откроется окно модальной формы с пустыми полями для ввода значений:

<figure><img src="/files/TANviFIP6eKUDwbGwZBV" alt=""><figcaption></figcaption></figure>

В поле API-key вставьте ключ-API:

<figure><img src="/files/bycHkei1Ys4AB9xzXrwD" alt=""><figcaption><p>Поле с ключом АПИ в окне подключения</p></figcaption></figure>

<figure><img src="/files/IPK6DSa80wOEfsz6IVyf" alt=""><figcaption><p>Ключи АПИ из сервиса OnlinePBX</p></figcaption></figure>

Затем вставьте в следующее поле домен от сервиса:

<figure><img src="/files/UlSvj50Cm4BEB4mmOYoS" alt=""><figcaption><p>Домен в поле формы подключения сервиса</p></figcaption></figure>

<figure><img src="/files/27WLw4Jatf83EnelCXmy" alt=""><figcaption><p>Домен в разделе API сервиса OnlinePBX</p></figcaption></figure>

Затем нажмите "Сохранить настройки":

<figure><img src="/files/4upKrI7INBDuZJtbiFkb" alt="" width="563"><figcaption></figcaption></figure>

Если вы сделали все верно, то в разделе "Телефония" в настройках проекта вы увидите, что сервис был подключен:

<figure><img src="/files/H8rfBN7ueQnFbu4GHYJ6" alt=""><figcaption></figcaption></figure>

## Настройка Webhook

Вебхук - поможет отслеживать события на сервисе OnlinePBX и передавать их в систему Salebot при помощи функций.&#x20;

Чтобы добавить вебхук перейдите в раздел "Webhooks" на стороне сервиса OnlinePBX:

<figure><img src="/files/Y7oEzcjIobtKP6ZjXdzJ" alt=""><figcaption></figcaption></figure>

Кликните на кнопку "Добавить":

<figure><img src="/files/XUy7jGiRX8nrO4Sm3m6v" alt="" width="524"><figcaption></figcaption></figure>

Откроется поле для ввода URL:

<figure><img src="/files/SYI3S0mvpizFGx1YuxWN" alt=""><figcaption></figcaption></figure>

В поле URL необходимо указать:

**<https://chatter.salebot.pro/onlinepbx\\_webhook/\\><domain>**

где \<domain> - это ваш домен onlinePBX.&#x20;

<figure><img src="/files/4mjnHv2dafWm4j0f4ZqH" alt=""><figcaption></figcaption></figure>

### Функции в калькуляторе

1. onlinepbx\_employee\_call(short\_number, client\_number) - для инициации звонков между сотрудниками и клиентами.

<table><thead><tr><th width="317">Параметры</th><th>Описание</th></tr></thead><tbody><tr><td>short_number</td><td>внутренний короткий номер сотрудника</td></tr><tr><td>client_number</td><td>номер клиента</td></tr></tbody></table>

2. onlinepbx\_group\_call(group\_number, client\_number) - для групповых звонков.

<table><thead><tr><th width="317">Параметры</th><th>Описание</th></tr></thead><tbody><tr><td>group_number,</td><td>внутренний номер группы сотрудников</td></tr><tr><td>client_number</td><td>номер клиента</td></tr></tbody></table>

Эта функция инициирует звонок сразу же группе сотрудников, после того как один из сотрудников возьмет трубку - он начнет звонить клиенту.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/telefoniya/onlinepbx.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
