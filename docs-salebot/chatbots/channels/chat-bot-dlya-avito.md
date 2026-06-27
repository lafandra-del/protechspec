> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/chat-bot-dlya-avito.md).

# Чат-бот для Авито

{% hint style="info" %}
**Avito** **НЕ блокирует наших чат-ботов**.&#x20;

Мы работаем по официальному API. Ваши чат-боты будут работать стабильно.
{% endhint %}

{% hint style="danger" %}
Обращаем внимание!

Интеграция Avito с платформой Salebot возможна только при подключении **платной подписки на платформе Salebot.**
{% endhint %}

{% hint style="danger" %}
Обращаем внимание!&#x20;

Чат-бот для Авито работает только на МАКСИМАЛЬНОЙ подписке в Авито, иначе получение доступа к чатам невозможно.&#x20;

<img src="/files/Uz97R2y1F2F9XVJDXBf9" alt="" data-size="original">
{% endhint %}

## Как подключить бота в Avito

Для подключения Авито сначала авторизуйтесь в вашем Avito аккаунте. Затем зайдите в ваш проект на salebot.pro в раздел “Каналы” и выберите Авито:

<figure><img src="/files/js2bbXVk8VZod3SI47oE" alt=""><figcaption></figcaption></figure>

У  вас должно открыться окно настроек интеграции с Авито.&#x20;

*Выберите тип авторизации: Классический или Профессиональный*

1. **Классический тип**

Обычный аккаунт Авито. Введите название вашей интеграции и нажмите кнопку Сохранить.

<figure><img src="/files/hHP6rEWow2yrXzpEBwzc" alt=""><figcaption></figcaption></figure>

После этого вы будете переадресованы на страницу авторизации и предоставления прав доступа для нашего приложения:

<figure><img src="/files/FXvb3xA7Ardfgfzuo79L" alt="" width="563"><figcaption></figcaption></figure>

Нужно войти в свой аккаунт, пройти верификацию, после чего вы попадете на страницу согласия:

<figure><img src="/files/GsP8pW6TGUpPgzigKlVJ" alt="" width="563"><figcaption></figcaption></figure>

Нажмите "Продолжить" и вы автоматически вернетесь в раздел подключения Авито.

На этом подключение Авито закончено.&#x20;

2. **Профессиональный тип**

Авито Pro, платные тарифы Авито

При выборе данного подключения у вас откроется вкладка с обязательными полями:\
\
\&#xNAN;*<mark style="color:blue;">Название</mark>* - Введите название вашей интеграции

*<mark style="color:blue;">Client\_id</mark>* - ID клиента Авито аккаунта

*<mark style="color:blue;">Client\_secret</mark>* - секретный ключ для подключения авторизации

<figure><img src="/files/aCofa1NYXuWzDA508J8J" alt=""><figcaption></figcaption></figure>

### Как подключить Авито Pro

В настройках аккаунта Авито Pro выберите вкладку Для профессионалов

<figure><img src="/files/l3cQZYjdVqQ92nnck4kb" alt=""><figcaption><p>Авито - Настройки - Для профессионалов</p></figcaption></figure>

В открывшемся окне выбираем вкладку Интеграции&#x20;

<figure><img src="/files/vUvgXhofResHi0okfxE0" alt=""><figcaption><p>Авито - Настройки - Для профессионалов - Интеграции</p></figcaption></figure>

Копируем *<mark style="color:blue;">Client\_id</mark>* и *<mark style="color:blue;">Client\_secret</mark>* в открывшемся окне и возвращаемся в раздел Каналы в проекте Salebot.&#x20;

<figure><img src="/files/3VKJ58ASQ8bQ2taOeola" alt="" width="563"><figcaption><p>Авито - Настройки - Для профессионалов - Интеграции - скопировать Client_id и Client_secret</p></figcaption></figure>

\
Заполняем все поля во вкладке подключения  профессионального типа интеграции с Авито. Нажимаем кнопку Сохранить. Интеграция подключена успешно.

{% hint style="success" %}
Для аккаунтов Авито Pro можно включить возможность сохранять ответы из приложения Авито от менеджеров в Salebot.&#x20;
{% endhint %}

При включенной синхронизации ответы менеджеров будут видны в Salebot в диалоге с клиентом в разделе Клиенты.

Для этого включите соответствующий переключатель:

<figure><img src="/files/yqVHgGuwcqZ3RzkflXCY" alt=""><figcaption><p>Настройка "Сохранять сообщения от менеджеров"</p></figcaption></figure>

На этом подключение Авито к проекту закончено. Теперь ваш бот сможет отвечать на сообщения в мессенджере Авито.

### Пример простой схемы автоответчика

<figure><img src="/files/4wogtLfsoPDUd3Pnmxzl" alt=""><figcaption></figcaption></figure>

Как это выглядит в чате Авито:

![](/files/-M3gf6h_C4smsrpXgh3o)

{% hint style="warning" %}
Теперь пользователи могут отправлять картинки во вложениях, но ввиду ограниченных возможностей api Авито они будут приходить в чат Авито по одному отдельными сообщениями, остальные файлы всё также будут отправлены как ссылка.&#x20;
{% endhint %}

Стоит отметить, что к одному проекту можно подключить неограниченное количество Avito аккаунтов.

Ссылка на объявление находится в переменной **avito\_order\_url**, а идентификатор объявления находится в переменной **avito\_order\_id**. Используя эти переменные, вы можете делать различные воронки для разных объявлений.

{% hint style="info" %}
Если соискатель откликнулся на вакансию, придет сообщение: **Сообщение не поддерживается. Пожалуйста, перейдите в Авито мессенджер (ссылка)**
{% endhint %}

## **Как получить номер телефона соискателя**

{% hint style="warning" %}
Получение номера телефона соискателя доступно только в **Максимальной** подписке.
{% endhint %}

{% hint style="success" %}
После отклика на вакансию **номер телефона автоматически сохранится** в переменную phone.
{% endhint %}

{% hint style="warning" %}
Номер телефона появится в переменной через 30 секунд после получения ботом уведомления.
{% endhint %}

После получения отклика, кроме номера телефона, через 30 секунд появятся переменные.

Если у вас в Авито для соискателя настроен чат-бот с опросом, то результаты опроса придут вместе с откликом и сохранятся в переменную **avito\_prevalidation\_summary**, в виде словаря:&#x20;

`{"Вопрос":"Ответ","Вопрос2":"Ответ2"}`&#x20;

который можно сохранить используя методы для работы со словарем

Пример:

`{"Возраст":"25","Наличиие документов":"да","Наличие телефона на базе Android":"да"}`

![](https://lh6.googleusercontent.com/r6AlEjRE6szfMziTAT3ugpEl29wCw2lqJN5sYkwsi958Og6JIds7MGOCmFe75Lbv499uSzdUTweQwdDvAOUzjIq5xKqLRYXqmoH15wnN2Gv4tzBMr-EiLxIv1WdH8nRCIF0kCCUe)

## Как получить сведения об отклике на вакансию

{% hint style="warning" %}
Получение сведений об отклике доступно только в **Максимальной** подписке.
{% endhint %}

Для получения сведений об отклике на вакансию необходимо объявить общую переменную **save\_vacancy\_data** со значением **1** в настройках проекта:<br>

<figure><img src="/files/jPL1Oz3tyXkAaG0NBuIL" alt=""><figcaption></figcaption></figure>

Сведения об отклике в виде json будут записаны в переменную **vacancy\_data**.

## Как сделать разные воронки для разных объявлений

Ссылка на объявление находится в переменной **avito\_order\_url**, а идентификатор объявления находится в переменной **avito\_order\_id**. Используя эти переменные, вы можете делать различные воронки для разных объявлений.

<figure><img src="/files/kiHYtEzKuppVhkMIzTRQ" alt=""><figcaption></figcaption></figure>

*Как сделать старт бота по разным объявлениям авито?* По идентификатору объявления, по переменной **avito\_order\_id**

Создаем блок "Стартовое условие" в поле “Переменная для сравнения” пишем avito\_order\_id == 2173274898, эти данные находятся в карточке клиента.

<figure><img src="/files/FcSj3tcYUTw8vjVRAXGP" alt=""><figcaption></figcaption></figure>

По ссылке на объявление, делается все тоже самое, только меняем  данные на avito\_order\_url == “значение переменной”

Вот так это выглядит в самом авито

![](https://lh4.googleusercontent.com/6-NRUTOFIqzkMGod3EhiRHd6FCFW6BeeX75d8y43HxE8oiC35XAl5lwFuOWXYxzKv7Tjy47bfCwPYmG80cmvqWzFZJnY_m0OarxZLgkgzbBIOdzQNLhbthxFFbvdHDJB_oHbYIZ8)

## Как добавить вложения

{% hint style="info" %}
Теперь пользователи могут отправлять картинки во вложениях, но ввиду ограниченных возможностей api Авито они будут приходить в чат Авито по одной отдельными сообщениями, остальные файлы всё также будут отправлены как ссылка
{% endhint %}

Для того чтобы отправить изображение в чате Авито, достаточно в блоке в конструкторе добавить необходимое изображение:

<figure><img src="/files/mT40N0nVxQHdoWObriKa" alt=""><figcaption></figcaption></figure>

a


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/chat-bot-dlya-avito.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
