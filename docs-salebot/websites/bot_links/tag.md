> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/bot_links/tag.md).

# Тег

## **Что такое тег?**

**Тег -** метка, которая передается в бот, как только пользователь перейдет в бот, кликнув на кнопку мессенджера на сайте.&#x20;

<div data-with-frame="true"><figure><img src="/files/don7nUOLx4RDZGrHAojD" alt="" width="563"><figcaption><p>Пример кнопок мессенджеров на сайте</p></figcaption></figure></div>

С помощью Тега можно запускать разные цепочки бота, не дожидаясь, пока пользователь что-то напишет. Для этого достаточно прописать тег в поле "Условие" в блоке с условием (см. пример ниже)

Тег можно присвоить в настройках страницы сайта:

<div data-with-frame="true"><figure><img src="/files/uANOc5IivBT0ZoJgpLlW" alt="" width="563"><figcaption></figcaption></figure></div>

Укажите тег, например:

<div data-with-frame="true"><figure><img src="/files/cbWFAdAxePnLGgIDktm9" alt="" width="563"><figcaption></figcaption></figure></div>

После сохранения настроек Тег можно увидеть на плашке вашей страницы:

<div data-with-frame="true"><figure><img src="/files/Ca4RidDuLuw4wZ1t2QpV" alt="" width="563"><figcaption></figcaption></figure></div>

Также тег можно настроить в разделе каналы:

1. Перейдите в раздел каналы и выберите подключенный мессенджер:

<div data-with-frame="true"><figure><img src="/files/mr3Ynb72nMBhntYvj0fO" alt=""><figcaption></figcaption></figure></div>

2. Далее разверните список "Ссылки этого бота":

<div data-with-frame="true"><figure><img src="/files/jFaCto9Cbmk36MonHFE7" alt=""><figcaption></figcaption></figure></div>

У канала могут быть ссылки, если вы уже использовали его на сайтах. Если данный канал не использовался на сайте, то ссылок не будет.

Если ссылка на бота существует, то нажмите на иконку редактирования:

<div data-with-frame="true"><figure><img src="/files/RlHgj1RVuUzCY0gBGEbW" alt=""><figcaption></figcaption></figure></div>

Тогда откроется окно, где можно прописать тег:

<div data-with-frame="true"><figure><img src="/files/XdSFEQyFvo5yyEVFEjSB" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="success" %}
Значение, указанное в поле Тег, будет записано в переменную клиента tag. В дальнейшем можно использовать данную переменную [в аналитике](#analitika).&#x20;
{% endhint %}

Если клиент перейдет в канал через сайт, то в систему придет уведомление с тегом, которое не видит сам клиент.&#x20;

При получении уведомления, содержащего заданный тег, бот автоматически распознает его как сигнал к запуску определенного этапа воронки. Это может включать в себя отправку ответного сообщения, переход к следующему этапу воронки или прекращение работы воронки в зависимости от контекста и логики схемы чат-бота.

## **Пример запуска воронки по тегу**

В настройке сайта указан тег  - основная воронка.

<div data-with-frame="true"><figure><img src="/files/cbWFAdAxePnLGgIDktm9" alt=""><figcaption></figcaption></figure></div>

Далее вам необходимо указать тег в блоке с условием в конструкторе:

<div data-with-frame="true"><figure><img src="/files/Qt7OkGLCw61MJhkDjSAD" alt=""><figcaption></figcaption></figure></div>

Можно настроить логику бота с указанного блока, например, переход в основную воронку.&#x20;

Пользователь на сайте нажимает кнопку мессенджера и переходит в него:

<div data-with-frame="true"><figure><img src="/files/qqt54vQueZBGyTepXShH" alt=""><figcaption></figcaption></figure></div>

{% hint style="info" %}
О настройке блока с формой и кнопками в мессенджер, рассказали в статье "[Ответы форм](/websites/builder/lending-dlya-sbora-zayavok/nastroiki-kontenta-formy.md)" в разделе настройка контента.&#x20;
{% endhint %}

При клике на кнопку пользователю предлагается перейти непосредственно в мессенджер:

<figure><img src="/files/lUmmbJZYay8Yy58I9RKZ" alt="" width="563"><figcaption></figcaption></figure>

**Путь клиента на примере Telegram:**\
\- Перешел с сайта в Telegram:

<div data-with-frame="true"><figure><img src="/files/tZc8zIxn26fOcH223muX" alt="" width="375"><figcaption></figcaption></figure></div>

\- Нажал кнопку "Запустить"/"Старт" (зависит от устройства). Даже если клиент ранее контактировал с ботом для запуска бота с сайта он должен нажать кнопку Запустить. *Это правила мессенджера для ботов.*

<div data-with-frame="true"><figure><img src="/files/uebtChDU09xENlxguEPo" alt="" width="375"><figcaption></figcaption></figure></div>

\- В бота вместо /start придет тег, указанный в настройках сайта.

<div data-with-frame="true"><figure><img src="/files/GyXsMa5L5VHvHdabccU0" alt=""><figcaption></figcaption></figure></div>

\- Клиенту приходит первое сообщение из воронки, запуск которой настроен на данный тег.

\- В карточке клиента указана переменная:

<div data-with-frame="true"><figure><img src="/files/CT7joc0RKcPJItlBN3X3" alt=""><figcaption></figcaption></figure></div>

## Аналитика

Вы можете отслеживать переходы в мессенджеры с сайта по тегу.

{% hint style="success" %}
Это поможет более точно отслеживать конверсию сайта.
{% endhint %}

Перейдите в аналитике во вкладку "Клиенты":

<div data-with-frame="true"><figure><img src="/files/JmgTDgEn0QWHx3XCUjEO" alt="" width="375"><figcaption></figcaption></figure></div>

Далее создайте новый виджет, где укажите основные настройки:

1. Период Аналитики: за месяц, за все время и пр;
2. Название виджета: любое удобное название;
3. Укажите тег.

<div data-with-frame="true"><figure><img src="/files/w5eGVWeT2QNfmCevO0U2" alt=""><figcaption></figcaption></figure></div>

Далее добавьте виджет.

{% hint style="success" %}
Готово! Теперь вы сможете отслеживать статистику запуска ботов с сайта с помощью тега.&#x20;
{% endhint %}

{% hint style="info" %}
С помощью аналитики вы сможете отслеживать конверсии, работу операторов, статистику по курсам, клиентам и многое другое совершенно бесплатно без подключения сторонних ресурсов и интеграций!&#x20;

Подробнее об иных возможностях раздела "Аналитика" читайте в статье "[Аналитика Salebot](/analitika-dlya-biznesa/analitika-salebot/analitika-saita.md)".
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/bot_links/tag.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
