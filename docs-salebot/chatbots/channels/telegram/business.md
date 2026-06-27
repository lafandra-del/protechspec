> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/business.md).

# Telegram бот для Business аккаунта

Теперь существует возможность создавать специализированных ботов, которые могут быть интегрированы в личные чаты бизнес-пользователей в мессенджере Telegram. Эти боты способны автоматически обрабатывать входящие запросы, отвечая от имени владельца аккаунта, что позволяет существенно сократить время на рутинные операции и повысить эффективность коммуникации.

Данные боты могут быть использованы для различных целей, таких как консультации по продуктам или услугам, ответы на вопросы пользователей и многое другое. Они могут быть настроены для выполнения широкого спектра задач.

Важно отметить, что пользователь всегда может вернуться к ручной форме общения в любое удобное для него время, не прерывая работу бота.

{% hint style="warning" %}
Важно!&#x20;

В Telegram business-аккаунт есть окно 24 часа.&#x20;

Если закрыто, то будет отправляться следующая ошибка:

<img src="/files/evDIauljF2ArDRivYo5E" alt="" data-size="original">

Соответственно бот не сможет отправить сообщение клиенту.&#x20;

После первого сообщения от бота в течение 24 часов можно писать клиенту. Если клиент не ответил, то окно будет закрыто и сообщения не будут отправляться, пока клиент не ответит боту.&#x20;
{% endhint %}

## Подключение бота

Шаг 1. Настройка в разделе "Каналы".

1. **Если подключаете Телеграм-бота впервые.**

Для начала перейдите во вкладку Каналы в разделе Salebot для подключения чат-бота Telegram (если такового еще нет).&#x20;

<div data-with-frame="true"><figure><img src="/files/JaHJPonLX9DcsvM6msi0" alt=""><figcaption></figcaption></figure></div>

Далее подключаем Телеграм-бота согласно инструкции.&#x20;

2. **Если Телеграм-бот подключен**.&#x20;

В случае, если у вас уже есть подключенный Телеграм-бот, найдите данного бота в каналах:

<div data-with-frame="true"><figure><img src="/files/v2NQqtzG9OWwSoR32h4V" alt=""><figcaption></figcaption></figure></div>

Далее кликните по кнопке настройки, после чего вам откроется модальное окно с полями токена и пр.:

<div data-with-frame="true"><figure><img src="/files/zdvB9tZw1RCYEOnl3wKG" alt=""><figcaption></figcaption></figure></div>

В открывшемся модальном окне кликните на ГОТОВО для обновления настроек вашего Телеграм-бота (больше никаких настроек менять не нужно):

<div data-with-frame="true"><figure><img src="/files/MbHT9WB1hhdrTG3xgNct" alt=""><figcaption></figcaption></figure></div>

На данном этапе работа с каналами завершена. Переходите в настройки мессенджера.&#x20;

Шаг 2. Настройки мессенджера.&#x20;

Чтобы подключить в бизнес-аккаунте чат-бота для Telegram, перейдите в настройки профиля, где необходимо найти вкладку "Telegram для бизнеса":

<div><figure><img src="/files/XdbiRoLjj3NIkFQAam7c" alt=""><figcaption></figcaption></figure> <figure><img src="/files/EoJx3kFTDQ8nA8XXTGTZ" alt="" width="292"><figcaption></figcaption></figure></div>

Далее вы увидите вкладку "Чат-боты", куда необходимо перейти:

<div data-with-frame="true"><figure><img src="/files/Tnggdv5d1dv1d1h7EjVG" alt=""><figcaption></figcaption></figure></div>

После чего в открывшейся вкладке укажите ссылку необходимого телеграм-бота либо его имя (приоритетнее ввод ссылки):

<div data-with-frame="true"><figure><img src="/files/GICF1F29MYgl6LbKw7mW" alt="" width="291"><figcaption></figcaption></figure></div>

Установите в этой же вкладке разрешение (чекбокс "Ответы на сообщения") чат-боту отвечать на сообщения:

<div data-with-frame="true"><figure><img src="/files/ZtdwhiNXNfisvf3hS0AR" alt=""><figcaption></figcaption></figure></div>

На данном этапе настройка чат-бота в бизнес аккаунте завершена. Переходите далее.

Шаг 3. Настройки BotFather.

После привязки чат-бота к бизнес-аккаунту, необходимо поменять настройки самого чат-бота в BotFather, где вы ранее создавали бота для Telegram. \
Для этого перейдите в диалог с BotFather, где необходимо подключить работу с бизнес-аккаунтом:

<div data-with-frame="true"><figure><img src="/files/P9xUGFeEm8UpMrBRQxTn" alt=""><figcaption></figcaption></figure></div>

Перейдите в настройки самого бота:

<div data-with-frame="true"><figure><img src="/files/XWu81tcuxVAQvUAP3i1k" alt=""><figcaption></figcaption></figure></div>

Далее кликните по кнопке "Business Mode" для подключения бизнес-режима для чат-бота:

<div data-with-frame="true"><figure><img src="/files/OwP3DYNAHWQSAm8xBYQx" alt=""><figcaption></figcaption></figure></div>

{% hint style="success" %}
Готово! Все необходимые настройки чат-бота с бизнес аккаунтом завершены.
{% endhint %}

Теперь в настройках канала вы найдете Телеграм-бота, в котором увидите business ID и также имя владельца бизнес-аккаунта:

<div data-with-frame="true"><figure><img src="/files/75pNHcjSOwhMx6lxawmt" alt=""><figcaption></figcaption></figure></div>

### Как отключить&#x20;

Для отключения чат-бота с бизнес-режимом, перейдите в каналы и найдите чат-бота, в котором необходимо отключить данную настройку. Кликните по кнопке настройки:

<div data-with-frame="true"><figure><img src="/files/13cK5xkgPHeaA2Z4jchc" alt=""><figcaption></figcaption></figure></div>

Кликните по кнопке "Отключить бизнес-аккаунт":

<div data-with-frame="true"><figure><img src="/files/4pY6mKzN4TPXIamyYt4R" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="success" %}
При отключении бизнес-аккаунта чат-бот продолжит свою работу в штатном режиме.&#x20;
{% endhint %}

## Видео-инструкция

{% embed url="<https://www.youtube.com/watch?v=-UUjFl2hIVc>" %}

## Доступные функции

1. Функция (API) в калькуляторе:

**tg\_callback(platform\_id , callback\_message,group\_id, tg\_business)**

<details>

<summary><strong>tg_callback</strong></summary>

Параметры:

**! platform\_id** - идентификатор клиент Telegram

**! callback\_message** - текст сообщение в колбеке

**group\_id** - идентификатор бота Telegram

**tg\_business -** для работы с бизнес-клиентами, передается значение "1".

</details>

**tg\_send\_poll(platform\_id, question, options, is\_anonymous, allows\_multiple\_answers, reply\_markup, disable\_notification, protect\_content, token, reply\_to\_message\_id, message\_thread\_id, business\_connection\_id)**

<details>

<summary><strong>tg_send_poll</strong></summary>

Параметры:&#x20;

**! platform\_id** - идентификатор чата внутри Telegram [**\***](https://docs.salebot.pro/messendzhery-i-chaty/kak-sozdat-bota-v-telegram/api-telegram-funkcii-dlya-ispolzovaniya-vsekh-vozmozhnostei-telegram#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii)

**! question** - вопрос

**! options** - массив вариантов ответов

**is\_anonymous** - 1 - анонимный опрос, '' - не анонимный

**allows\_multiple\_answers** - 1 - возможны несколько ответов, '' - один ответ

**reply\_markup** - клавиатура или '' - без клавиатуры

**disable\_notification** — признак отправки со звуковым уведомлением (по умолчанию 0) 1 - отключить уведомление при получении, 0 - передать с уведомлением

**protect\_content** - 1 защитить от копирования и скриншотов, '' - без защиты

**token** - токен бота, если не передан используется текущий

**reply\_to\_message\_id** - идентификатор цитируемого сообщения

**message\_thread\_id** — идентификатор темы (доступно для супергрупп при наличии функционала форума)

**business\_connection\_id -** значение при подключении бота - Business ID - отображается в каналах. Следует передавать, если в параметрах передается токен бота и надо отправить через подключенный к боту пользовательский аккаунт

</details>

**tg\_send\_quiz\_poll(platform\_id, question, options, explanation, correct\_option\_id, is\_anonymous, reply\_markup, parse\_mode, protect\_content, disable\_notification, token, reply\_to\_message\_id, message\_thread\_id )**

<details>

<summary><strong>tg_send_quiz_poll</strong></summary>

**! platform\_id** - идентификатор чата внутри Telegram [**\***](https://docs.salebot.pro/messendzhery-i-chaty/kak-sozdat-bota-v-telegram/api-telegram-funkcii-dlya-ispolzovaniya-vsekh-vozmozhnostei-telegram#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii)

**! question** - вопрос

**! options** - массив вариантов ответов

**! explanation** - текст, который отображается, когда пользователь выбирает неправильный ответ или нажимает на значок лампы в опросе в стиле викторины, 0–200 символов с не более, чем двумя переводами строки после разбора сущностей.

**! correct\_option\_id** - номер правильного ответа, нумерация с 1

**is\_anonymous** - 1 - анонимный опрос, '' - неанонимный

**reply\_markup** - клавиатура или '' - без клавиатуры

**parse\_mode** - markdown или html для explanation или '' - без форматирования

**protect\_content** - 1 защитить от копирования и скриншотов, '' - без защиты

**disable\_notification** — признак отправки со звуковым уведомлением (по умолчанию 0) 1 - отключить уведомление при получении, 0 - передать с уведомлением

**token** - токен бота, если не передан используется текущий

**reply\_to\_message\_id** - ид цитируемого сообщения

**message\_thread\_id** — идентификатор темы (доступно для супергрупп при наличии функционала форума)

**open\_period** - время для прохождения викторины/теста; передается числовое значение от 5 до 600, равное количеству секунд.

**business\_connection\_id -** значение при подключении бота - Business ID - отображается в каналах. Следует передавать, если в параметрах передается токен бота и надо отправить через подключенный к боту пользовательский аккаунт

</details>

**tg\_send\_message\_1(token, platform\_id, text, client\_message\_id, reply\_markup, parse\_mode, disable\_web\_page\_preview, protect\_content, disable\_notification, message\_thread\_id, entities, business\_connection\_id)**

<details>

<summary><strong>tg_send_message_1</strong></summary>

Параметры:

**! token** — токен Telegram-бота, полученный в BotFather

**! platform\_id** — идентификатор клиента в Telegram, которому необходимо прислать сообщение [**\***](https://docs.salebot.pro/messendzhery-i-chaty/kak-sozdat-bota-v-telegram/api-telegram-funkcii-dlya-ispolzovaniya-vsekh-vozmozhnostei-telegram/funkcii-dlya-otpravki-i-redaktirovaniya-soobshenii#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii)

**! text** - текст сообщения

**client\_message\_id** - идентификатор сообщения, которое необходимо процитировать

**reply\_markup** — настройки кнопок [**\*\***](https://docs.salebot.pro/messendzhery-i-chaty/kak-sozdat-bota-v-telegram/api-telegram-funkcii-dlya-ispolzovaniya-vsekh-vozmozhnostei-telegram/funkcii-dlya-otpravki-i-redaktirovaniya-soobshenii#kak-propisyvat-knopki-v-parametre-reply_markup)

**parse\_mode** — выделение текста в описании жирным или курсивом [**\*\*\***](https://docs.salebot.pro/messendzhery-i-chaty/kak-sozdat-bota-v-telegram/razmetka-markdown.-formatirovanie-soobsheniya-v-telegram)**.** Может иметь значения html, markdown, markdownV2.

**disable\_web\_page\_preview -** отобразить превью ссылки. Чтобы отключить передайте 1, иначе 0 или оставьте пустое значение “”

**protect\_content** — признак защиты контента от копирования. Чтобы включить передайте любое значение, кроме 0, False и пустых кавычек ''

**disable\_notification** — признак отправки сообщения со звуковым уведомлением (по умолчанию 0) 1 - отключить уведомление при получении, 0 - передать с уведомлением

**message\_thread\_id** — идентификатор темы (доступно для супергрупп при наличии функционала форума) **entities** — c ним вы можете просто копировать сверстанный текст со всеми особенностями и просто указать с какого символа по какой он будет отображаться с тем или иным шрифтом. Пример можете подсмотреть в tg\_request в соответствующем поле. В параметре должен быть словарь.

**business\_connection\_id -** значение при подключении бота - Business ID - отображается в каналах. Следует передавать, если в параметрах передается токен бота и надо отправить через подключенный к боту пользовательский аккаунт

Пример передачи параметра:&#x20;

`entities = [{"offset":0,"length":5,"type":"bold"},{"offset":6,"length":4,"type":"text_link","url":"https://salebot.zmservice.ru"},{"offset":11,"length":9,"type":"strikethrough"},{"offset":21,"length":6,"type":"spoiler"},{"offset":29,"length":12,"type":"code"}]`&#x20;

В примере показан только словарь, при этом сама переменная с текстом сообщения задана в переменной.

</details>

2. Методы

\- [tg\_send\_chat\_action](/chatbots/channels/telegram/api/group.md#kak-pokazat-deistviya-v-chate-kanale-telegram)

\- [tg\_send\_message](/chatbots/channels/telegram/api/messages.md#otpravit-soobshenie-v-telegram)

\- [tg\_send\_poll](#tg_send_poll)

\- [tg\_send\_quiz\_poll](#tg_send_quiz_poll)

\- [tg\_send\_video\_note](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_sticker](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_contact](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_venue](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_video](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_animation](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_voice](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_document](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_media\_group](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_some\_photo](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_some\_video](/chatbots/channels/telegram/api/attachments.md)

-[ tg\_send\_some\_document](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_some\_audio](/chatbots/channels/telegram/api/attachments.md)

\- [tg\_send\_dice ](/chatbots/channels/telegram/api/attachments.md)

автоматически работают с клиентами, написавшими в бизнес аккаунт телеграм так же, как в ботах.

{% hint style="info" %}
Подробнее об указанных методах написано в статье "[API Telegram](/chatbots/channels/telegram/api.md)".
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/business.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
