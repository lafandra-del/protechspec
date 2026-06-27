> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/fisrt_message.md).

# Первое сообщение в мессенджерах

Во многих мессенджерах можно настроить сообщение-описание, в котором указать, что именно предлагает данный бот.

### Как настроить первое сообщение в Telegram

**В Telegram** такое приветственное сообщение-описание вы можете настроить в ботфазер. Оно будет выведено совместно с кнопкой "старт" при переходе пользователя по ссылке в вашего бота.

Вам требуется обратиться к [@BotFather](https://tlgg.ru/BotFather) (бот, который регистрирует новых ботов) и дать ему [команду](https://core.telegram.org/bots#botfather-commands) /setdescription.&#x20;

<figure><img src="/files/QzSx2XRoh95J8biDB0NJ" alt="" width="563"><figcaption></figcaption></figure>

"Description" бота - это в точности текст, который виден всем пользователям перед началом беседы.

Далее выберите бота (если их несколько), где необходимо установить первое сообщение в боте.&#x20;

<figure><img src="/files/UAXXLE4qU0coyfI94vnc" alt="" width="563"><figcaption></figcaption></figure>

Затем напишите сообщение приветственное сообщение в боте:&#x20;

<figure><img src="/files/cNHzX1yqeTJpVJf97oYh" alt="" width="375"><figcaption></figcaption></figure>

### Как настроить первое сообщение в Facebook<mark style="color:red;">\*</mark>

{% hint style="danger" %} <mark style="color:red;">**\***</mark>**принадлежит компании Meta Platforms Inc, деятельность которой признана на территории Российской Федерации** признанные экстремистскими!
{% endhint %}

**В Facebook**<mark style="color:red;">**\***</mark> тоже есть описание бота, которое выводится совместно с кнопкой "старт", его можно задать в настройках проекта (Рисунок 2)

<figure><img src="/files/Zc54FHl1DYg6S53z3DYI" alt=""><figcaption></figcaption></figure>

### Как настроить первое сообщение в **Viber**

**В Viber** настроить такое сообщение можно заполнив поле  "Ответ на первое сообщение пользователя" в Настройках проекта. К нему можно добавить кнопки:

<figure><img src="/files/hi94OsTP3bSZQCr9Y8Ju" alt=""><figcaption></figcaption></figure>

### Как настроить первое сообщение в **Whatsapp**

**В whatsapp** ботов нет, поэтому нет такого сообщения и кнопок, но можно в ссылку добавить текст, который будет записан в поле ввода, и пользователю необходимо будет только нажать отправить. Своеобразный аналог кнопки start/. Как Получить такую ссылка написано в статье [Как получить ссылки на мессенджеры](/websites/bot_links/proxy.md)

### Как настроить первое сообщение ВКонтакте

**В вконтакте** первое сообщение при переходе по ссылке задается в настройках группы при подключении сообщений.&#x20;

Перейдите в "Управление сообществом":

<figure><img src="/files/tetYQ6DDPqVLDFmkb1Dx" alt=""><figcaption></figcaption></figure>

Далее в раздел "Сообщения":

<figure><img src="/files/Im3M5GhYUht4qCizTT4K" alt="" width="359"><figcaption></figcaption></figure>

Далее необходимо выбрать "Включено" для сообщений:

<figure><img src="/files/3ETikjzERgT6Q1CbWed5" alt="" width="563"><figcaption></figcaption></figure>

Пропишите приветственное сообщение:

<figure><img src="/files/UBy2Yc0L7Xm6Ajboy3zP" alt="" width="563"><figcaption></figcaption></figure>

Далее нажмите "Сохранить":

<figure><img src="/files/zMu2LrzOWIi5oA3sCEOk" alt="" width="563"><figcaption></figcaption></figure>

Тогда приветственное сообщение будет отображено при клике на кнопку с иконкой диалога:

<figure><img src="/files/qhHt6X70tdZleAHNM2VM" alt="" width="563"><figcaption></figcaption></figure>

<figure><img src="/files/MfqOjWC9f0JIjPEcBMXH" alt="" width="563"><figcaption></figcaption></figure>

Или в диалоге с сообществом:

<figure><img src="/files/Se9x7dtBsXiE3ex1h6Pw" alt="" width="563"><figcaption></figcaption></figure>

### Как настроить первое сообщение в Онлайн-чате

**В онлайн чате** вы можете указать не только текст первого сообщения, но и список кнопок, выводимых для него:

<figure><img src="/files/hi94OsTP3bSZQCr9Y8Ju" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
“Ответ на первое сообщение пользователя” создан для того, чтобы отвечать на первое сообщение пользователя, когда бот не знает ответа, чтобы подсказать ему, какие команды имеются в боте. Также вы можете указать кнопки, которые будут добавлены к этому сообщению. Данное сообщение отправляется единожды. Приоритет у него самый низкий
{% endhint %}

Чтобы сделать универсальное сообщение-ответ для всех мессенджеров, создайте блок первостепенная проверка и в его настройках, установите флаг “Отвечать один раз за диалог”. В этом случае бот на любое первое сообщение пользователя ответит ему этим сообщением и поведет его по цепочке в воронки дальше.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/fisrt_message.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
