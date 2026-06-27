> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/quick_automation/telegram.md).

# Автоматизация Telegram

Теперь в Salebot можно полностью автоматизировать работу закрытых каналов/чатов (клубов) в Telegram.

<div data-with-frame="true"><figure><img src="/files/101ESZazmLO3a1OOiuGo" alt="" width="563"><figcaption></figcaption></figure></div>

Выдача доступа после оплаты, добавление и удаление участников, контроль сроков подписки — всё настраивается автоматически.

## Подготовка группы/канала

Чтобы успешно автоматизировать подписки в закрытые каналы или группы, Вам необходимо создать Telegram-бота, затем добавить его в канал/группу с правами администратора.

{% hint style="success" %}

#### Создать Telegram-бота

Как создать Telegram-бота и подключить его к Salebot, [рассказали в этой статье.](/chatbots/channels/telegram/chatbot.md)
{% endhint %}

### Как добавить бота в группу/канал Telegram

Эта возможность для бота включается  в BotFather:

Шаг 1. Переходим в настройки бота:

<div data-with-frame="true"><figure><img src="/files/cGJ7MrvupOFPr2PltdIe" alt="" width="358"><figcaption><p>Кликаем на Bot Settings</p></figcaption></figure></div>

Шаг 2. Кликните по "Allow Groups?'

<div data-with-frame="true"><figure><img src="/files/X35GCB9nnQCrbUGt3dhm" alt="" width="328"><figcaption><p>Allow Groups?</p></figcaption></figure></div>

Шаг 3. Должен быть статус enabled

<div data-with-frame="true"><figure><img src="/files/QGnEbYWQni2UrabISMzt" alt="" width="375"><figcaption></figcaption></figure></div>

### Видео-инструкция

{% embed url="<https://www.youtube.com/watch?v=yDVp-rCCHtA>" %}
Как включить возможность добавлять бота в группы и каналы
{% endembed %}

### Добавить бота как администратора в группе/канале

Шаг 1.  Перейдите в Управление группой/каналом и выберите вкладку “Администраторы”

<div data-with-frame="true"><figure><img src="/files/UPOIq5E92XwBeF2YqKtH" alt="" width="375"><figcaption></figcaption></figure></div>

Шаг 2. Нажмите кнопку “Добавить Администратора”

<div data-with-frame="true"><figure><img src="/files/CRalMwDLIDmcPaQnyi9P" alt="" width="563"><figcaption></figcaption></figure></div>

Шаг 3.  В поисковой строке введите логин Вашего бота.&#x20;

<div data-with-frame="true"><figure><img src="/files/j0FK98RKJ9eNf8VXHZNZ" alt="" width="563"><figcaption></figcaption></figure></div>

Шаг 4. Для успешной работы бота предоставьте права на работу/удаление сообщений:

<div data-with-frame="true"><figure><img src="/files/Zv8ay4rtpSwHpqfjvnQw" alt="" width="347"><figcaption></figcaption></figure></div>

## Настройки автоматизации

Чтобы автоматизировать работу в закрытых клубах по подписке, наведите курсором на "Конструктор". Тогда откроется меню, где вы увидите вкладку с автоматизацией Telegram:

<div data-with-frame="true"><figure><img src="/files/nohEdi0eTwp88nfUqEvT" alt=""><figcaption></figcaption></figure></div>

Далее нажмите на "Добавить автоматизацию". Тогда откроются настройки автоматизации с двумя вкладками: Основные настройки и Настройки сообщений.

### Основные настройки

В основных настройках выберите бота, который подключен к закрытому каналу/группе:

<div data-with-frame="true"><figure><img src="/files/nriC5joIyoVSyJsOlCIe" alt="" width="375"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Важно!

Если бот не подключен к каналу или группе, то в плашке выбора группы и канала будет указано "Нет доступных групп":

<img src="/files/tavViVVFaUJCHYg6YINl" alt="" data-size="original">
{% endhint %}

Далее выберите группу/канал, к которому подключен бот с ролью администратора:

<div data-with-frame="true"><figure><img src="/files/jkQ1NA0YRaLA0b99Ld6S" alt="" width="563"><figcaption></figcaption></figure></div>

Создайте в настройках Telegram-канала пригласительную ссылку с одобрением заявки (вкл. Заявка на вступление).

<div data-with-frame="true"><figure><img src="/files/pbJWUVlnxRzp3W9PV5Zd" alt="" width="375"><figcaption></figcaption></figure></div>

После создания скопируйте ссылку и вставьте ее в указанном поле:

<div data-with-frame="true"><figure><img src="/files/bzYWeDQUgRwvDxB9zf8T" alt="" width="563"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/x7gmGq8OmrqjVE7OLGoR" alt="" width="563"><figcaption></figcaption></figure></div>

В условии запуска бота можно оставить одно условие "/start" и добавить доп. условия через точку с запятой (;).

<div data-with-frame="true"><figure><img src="/files/u4bROKtFGbOFvKCq41xo" alt="" width="492"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Внимание!

Условие можно прописать только на латинице.
{% endhint %}

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

Как работает автоматизация с минимальными настройками:

<div data-with-frame="true"><figure><img src="/files/FWVTwiMxDa0visdZj2Pv" alt="" width="324"><figcaption></figcaption></figure></div>

Больше не нужно вручную проверять оплаты и управлять участниками. Salebot сам следит за доступом и помогает поддерживать порядок в группе.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/quick_automation/telegram.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
