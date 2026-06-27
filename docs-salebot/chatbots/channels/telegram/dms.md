> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/dms.md).

# Telegram бот для личных сообщений

## Важно знать!

При использовании аккаунта действуют ограничения, которые зависят от сценария использования аккаунта. Точных данных нет, но в открытых источниках можно найти примерные значения лимитов.

{% hint style="warning" %}
КРАТКО ОБ ОГРАНИЧЕНИЯХ И РЕКОМЕНДАЦИЯХ!

1. При первой синхронизации в новом аккаунте Telegram (только что зарегистрированном) можно добавлять любое количество контактов;
2. Если аккаунт уже был ранее создан, то ограничение на добавление контактов — 200 контактов.
3. Если аккаунт новый и Вы ранее добавляли контакты, ограничение — 200 контактов.
4. Можно добавлять контакты вручную, если вы превысили лимит в 200 контактов, но добавлять вручную можно не более 15 в день.
5. Добавляйте вручную контакты постепенно (в течение всего дня). Если добавить сразу 15 контактов в 5-10 минут, в один час, то на следующий день сможете добавить только 5 контактов, далее превысив лимит в пять контактов, сможете добавить только один контакт в день.&#x20;
6. Если добавлять 15 контактов в течение дня, то на следующий день лимитов не устанавливается.
7. В день можно отправить до 40 сообщений в разные чаты, затем включается временная блокировка.
   {% endhint %}

<details>

<summary>ПОДРОБНЕЕ ОБ ОГРАНИЧЕНИЯХ</summary>

### Контакты

Чтобы отправить сообщение по номеру телефона, нужно сначала сохранить его в список контактов Telegram:&#x20;

#### Синхронизация со списком контактов:

а) Если аккаунт только что создан и номер ранее не был зарегистрирован в Telegram, при первой синхронизации можно импортировать любое количество контактов.

б) Если номер уже использовался при регистрации аккаунта в Telegram, то при первом импорте добавляется максимум 200 контактов. То же ограничение действует, если номер впервые был привязан к Telegram, но синхронизация выполняется повторно.

в) После достижения лимита в 200 записей новые контакты можно вносить только вручную.

#### Создание контактов вручную

При массовом добавлении за короткий промежуток времени (например, 15 номеров за минуту) на следующий день разрешено добавить не более 5 контактов.&#x20;

Если в этот день быстро внести ещё 5, то в последующие дни лимит снизится до 1 контакта в день.При равномерном добавлении (например, 15 номеров за целый день) на следующий день доступен тот же объём.

Ограничение не обнуляется со временем.

Сам Telegram сообщает:

> &#x20;*«У нас есть защитные меры, чтобы предотвратить импорт слишком большого количества контактов ... После того, как вы получите запрет на импорт контактов, вы можете добавить максимум пять новых номеров в день. Остальные контакты, которые вы добавляете, будут выглядеть так, будто они не используют Telegram, даже если используют».*

{% hint style="success" %}
**Совет:** лучше добавлять контакты постепенно в течение суток, чтобы избежать ограничения по лимитам.
{% endhint %}

### Ограничения на добавление по username

Если у пользователя есть username, то сохранять его в контакты не нужно — можно писать напрямую. Но поиск таких пользователей ограничен примерно 200 запросами в сутки.

### Недопустимость спама

За частую отправку сообщений или за отправку сообщений в большое количество диалогов обязательно от Telegram поступит временный или перманентный бан аккаунта.

{% hint style="warning" %}
В отличие от временного ограничения (на несколько минут, часов или дней), перманентный бан означает, что доступ к аккаунту будет закрыт навсегда. Обычно такая мера применяется за серьезные нарушения правил — массовый спам, мошенничество, рассылку запрещённого контента или многочисленные жалобы от пользователей.
{% endhint %}

1. В день можно отправить до 40 сообщений в разные чаты, затем включается временная блокировка.
2. При регулярном превышении лимита блокировки становятся более долгими: от минут до часов, дней и недель, вплоть до бессрочной блокировки.
3. При рассылке одинаковых сообщений подряд без пауз блокировка может наступить после нескольких отправок.
4. Если содержимое классифицируется как спам, блокировка может быть применена сразу и навсегда.
5. При жалобах на сообщения блокировка также неизбежна.

</details>

{% hint style="warning" %}
Ознакомиться со всеми возможными ограничениями вы можете[ в открытом источнике](https://docs.google.com/spreadsheets/d/1-mpB7PuxlScIIejH793Yp1g8AIFseA_GlUwZva2Rvs/htmlview?lsrp=1).
{% endhint %}

## Подготовка к работе

Перед подключением аккаунта необходимо получить api\_id и api\_hash .

Для этого переходим на[ https://my.telegram.org](https://my.telegram.org/auth) и заходим в свой аккаунт.

<div data-with-frame="true"><figure><img src="/files/4gBIcd4xHKi9wKFepnTd" alt=""><figcaption></figcaption></figure></div>

После авторизации переходим в "API development tools":

<div data-with-frame="true"><figure><img src="/files/gTfnTkh6zm8oP32VDNxD" alt=""><figcaption></figcaption></figure></div>

Затем заполняем поля:

<div data-with-frame="true"><figure><img src="/files/Sd6NlGmMH17iQ9ypgIuG" alt="" width="557"><figcaption></figcaption></figure></div>

1. Поле app title — заполняется без пробелов и каких-либо символов, только буквами (без подчеркивания, запятых и тд)
2. Поле short name — заполняется без пробелов и каких-либо символов, только буквы и цифры (без подчеркивания, запятых, точек, тире, дефисов и т.п.)
3. поле URL — действующая ссылка вашего сайта.
4. Platform — выберите WEB.
5. Description — описание (желательно, на латинице).

Затем нажмите Create application.&#x20;

Если вы увидели следующее уведомление:

<div data-with-frame="true"><figure><img src="/files/OTegwU6SDbLimIEz7Csw" alt="" width="563"><figcaption></figcaption></figure></div>

То вы заполнили какие-либо поля неверно либо названия в полях 'app title' и 'short name' уже заняты, необходимо выбрать другие наименования.

Если вы заполнили все верно, то увидите следующие данные:

<div data-with-frame="true"><figure><img src="/files/LtHQ6tJmdJUrtAm1fBAF" alt="" width="563"><figcaption></figcaption></figure></div>

## Подключение аккаунта

В разделе "Каналы" выбираем Telegram Account, вводим телефон и полученные данные:

<div><figure><img src="/files/80kUKi3N3JnPZR4x0X9Z" alt="" width="100"><figcaption></figcaption></figure> <figure><img src="/files/OBzNDty48yVq2lR1IuE7" alt="" width="563"><figcaption></figcaption></figure></div>

Нажимаем "получить код":

<div data-with-frame="true"><figure><img src="/files/Pp1HHFS8l6JxZ3zjOueV" alt=""><figcaption></figcaption></figure></div>

В Telegram аккаунт придет код подтверждения, вводим его:

<div data-with-frame="true"><figure><img src="/files/51k64kAlwQftasJk5TBv" alt="" width="563"><figcaption></figcaption></figure></div>

Если в аккаунте подключена двухфакторная авторизация, необходимо также будет ввести пароль:

<div data-with-frame="true"><figure><img src="/files/nSzGg3x6x64WwSSlu1WF" alt=""><figcaption></figcaption></figure></div>

Аккаунт подключен

## Групповые чаты

По умолчанию бот не отвечает на сообщения из групповых чатов. Чтобы включить эту возможность, в переменные клиента нужно добавить переменную answer\_on\_group\_chat со значением "1". Тогда бот будет отвечать в этом чате.

## Архив чатов

Чаты, добавленные в архив, не обрабатываются

## Начало диалога по номеру телефона

Чтобы начать диалог с новым клиентом, в разделе Клиенты нажимаем "Написать в Telegram"

<div data-with-frame="true"><figure><img src="/files/buSVbyJeXgltxPtpGiM9" alt="" width="464"><figcaption></figcaption></figure></div>

В открывшемся окне вводим телефон и имя клиента, нажимаем "Добавить"

<div data-with-frame="true"><figure><img src="/files/zouZwBYNSwrsczPLtfxk" alt=""><figcaption></figcaption></figure></div>

Если настройки конфиденциальности в Telegram у нового клиента позволяют найти его по номеру телефона, будет создан новый клиент.

## Импорт клиентов из файла

Вы можете импортировать клиентов из файла. Для этого у нужного бота нажмите "загрузить список клиентов" в разделе "Каналы"

<div data-with-frame="true"><figure><img src="/files/ps7cp5t7l2DAfyQ0Mr9G" alt="" width="563"><figcaption></figcaption></figure></div>

После завершения импорта, будут созданы клиенты, добавление в контакты которых возможно по номеру телефона.

{% hint style="danger" %}
ОБРАЩАЕМ ВНИМАНИЕ!

Учитывайте ограничения для создания контактов для Телеграмм-аккаунта.&#x20;

Подробнее в разделе "[Важно знать!](#vazhno-znat)".
{% endhint %}

## Методы калькулятора

create\_telegram\_client(phone, name, group) - добавляет указанный номер в контакты в Телеграм аккаунте и создает соответствующего клиента в Salebot

phone - телефон клиента

name - имя клиента

group - User id бота, к которому нужно привязать клиента.

{% hint style="success" %}
Также работают общие методы для калькулятора.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/dms.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
