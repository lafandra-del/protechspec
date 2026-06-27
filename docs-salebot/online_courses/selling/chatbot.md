> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/online_courses/selling/chatbot.md).

# Продажа курсов в чат-боте

Настройка продаж онлайн-курсов через чат-бота представляет собой инновационный подход, который позволяет значительно сократить временные и трудовые затраты на обслуживание клиентов. С помощью чат-бота можно автоматизировать транзакции в реальном времени.&#x20;

<div><figure><img src="/files/wASIq2IedDIITihsIYoj" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/fgJvoCQ6kRvf10CnyAeQ" alt="" width="563"><figcaption></figcaption></figure></div>

Кроме того, в чат-боте вы можете настроить сбор данных для дальнейшей мгновенной регистрации пользователей.&#x20;

В этой статье мы рассмотрим процесс настройки продаж курса через чат-бот, а именно:

1. Какие платежные системы доступны в курсах;
2. Пошаговая настройка чат-бота на сбор данных и выдачу ссылки оплаты.&#x20;
3. Регистрация по email на курсе через бота

## Выбор платежной системы

Для покупок учениками курсов в чат-боте можно выбрать любой платежный сервис:

<figure><img src="/files/7LVvpz0B0AVkRMDO4OfJ" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Интеграций с платежными серевисами в Salebot - большое количество.
{% endhint %}

Каждая платежная система имеет свои особенности подключения, описание и подробная инструкция которых существует в документации Salebot.&#x20;

Чтобы найти статью по выбранной платежной системе:

а) либо перейдите в раздел "[Эквайринг](/integration/payments.md)" и изучите необходимую инструкцию для подключения:

<figure><img src="/files/z4uS1vsZvPMxYOVNLtcS" alt="" width="355"><figcaption></figcaption></figure>

б) либо кликните на "подключить" на плашке сервиса в разделе "Платежные системы" в настройках проекта:

<figure><img src="/files/UFSUN71E5m9EO1mKUVBI" alt=""><figcaption></figcaption></figure>

После клика на необходимую кнопку, откроется окно модальной формы, где уже лежит ссылка на статью с выбранной вами платежной системой:

<figure><img src="/files/upSZuEM7xUntLv0LJrfx" alt="" width="563"><figcaption></figcaption></figure>

После подключения платежного сервиса, переходите в настройки курса.&#x20;

{% hint style="info" %}
Как принимать оплаты по онлайн-курсам на промо-странице, читайте в одноименной статье.&#x20;
{% endhint %}

{% hint style="info" %}
Для дальнейшей настройки приема платежей в чат-боте, Вам необходимо настроить тарифы, поскольку в калькуляторе в настройках блока используется ID тарифа.&#x20;

Как настроить тарифы, читайте [в одноименной статье](/online_courses/builder/plans.md).&#x20;
{% endhint %}

## ID тарифа

Чтобы использовать оплату по тарифам курса, вам необходимо найти ID тарифа (или тарифов), которые будут использованы в функции оплаты в настройках блоков в конструкторе воронок.&#x20;

Для этого перейдите во вкладку "Тарифы": настройки курса -> тарифы:

<div><figure><img src="/files/T5BVU5CC240mHqXPQIXW" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/SJPqt7KdmUkcNaxb976X" alt="" width="563"><figcaption></figcaption></figure></div>

ID тарифа найти довольно-таки просто: он уже виден на карточке в разделе:

<figure><img src="/files/9NA435AtK61AZNqJBezj" alt=""><figcaption></figcaption></figure>

Кликните по ID тарифа, тогда он скопируйтся в буфер обмена и в дальнейшем вы сможете использовать его в функции для оплаты:

<figure><img src="/files/k6kNPv87t7VZrOEFe7Yo" alt=""><figcaption></figcaption></figure>

На данном этапе настройка в разделе "Курсы" завершена. Переходим к настройке схемы в конструкторе воронок.&#x20;

## Блоки в конструкторе воронок

После выполнения необходимых настроек в онлайн-курсе, перейдите в конструктор воронок, в котором будете создавать схему для чат-бота.&#x20;

Схема будет состоять из блоков, которые отвечают за:

1. Сбор данных: имени, email;
2. Выбор пользователем тарифа для записи на курс;
3. Формирование ссылки на оплату;
4. Регистрацию по email на онлайн-курс после оплаты.&#x20;

### Блоки сбора данных

Блоки начального уровня будут использованы для сбора данных вашего клиента: имени и также email, который понадобится для дальнейшей регистрации пользователя на курс.&#x20;

Шаг 1. Создаем блок первостепенной проверки условия, в котором прописываем любое необходимое сообщение для приветствия пользователя:

<figure><img src="/files/aJdsgxXSu3PZAyMItBqC" alt="" width="563"><figcaption></figcaption></figure>

Данный блок понадобится для старта схемы чат-бота, который отвечает за продажу и запись на онлайн-курс.&#x20;

Шаг 2. Создаем следующий блок, который рассказывает пользователю о доступных тарифах:

<figure><img src="/files/vvDvq8m3R4GNjZZyAhHP" alt="" width="563"><figcaption></figcaption></figure>

Прописываем сообщение с содержанием тарифа, а также задаем вопрос клиенту о его заинтересованности.&#x20;

Шаг 3. Создаем блоки для сбора данных:

<figure><img src="/files/vxQxYae5l4s4h4EHJp6A" alt="" width="563"><figcaption></figcaption></figure>

Данный блок запрашивает email у пользователя, который в дальнейшем с помощью стрелки мы запишем в переменную.

Шаг 4. Создаем стрелку для сбора данных:

<figure><img src="/files/88qIjLzBYMCRg4K5tNje" alt="" width="563"><figcaption></figcaption></figure>

В настройках стрелки активируем чекбокс "Пользователь вводит данные" и устанавливаем переменную с названием email.&#x20;

Также в условии блока ставим регулярное выражение для проверки email:

<figure><img src="/files/1PVzvt4qdOPYA6pPiiO7" alt=""><figcaption></figcaption></figure>

Это поможет боту записать email принятого образца, а не рандомный набор символов или букв.

При необходимости из данного блока можно создать блок "Не состояние", который будет отвечать пользователю, что email не соответствует действительности:

<figure><img src="/files/n9hBq4HrZVbDXrYU1y5f" alt=""><figcaption></figcaption></figure>

В блок "Не состояние" нельзя перейти, поэтому дальнейшее движение по воронке пойдет именно после ввода пользователем email вниз по воронке.&#x20;

Используемое регулярное выражение для проверки email выглядит следующим образом:

^\[-\w.]+@(\[A-z0-9]\[-A-z0-9]+.)+\[A-z]{2,4}$

{% hint style="info" %}
Весь список полезных регулярных выражений и их применение можно найти в статье "[Список полезных регулярных выражений](broken://pages/-M0wjAtzg71YW7LB-2D8)".
{% endhint %}

Шаг 5. Создаем блок, в котором бот спрашивает у клиента его имя:

<figure><img src="/files/C5hRYQSgJr7hus866q1O" alt="" width="563"><figcaption></figcaption></figure>

Шаг 6. Из этого же блока создаем стрелку, в настройках которой указываем, что пользователь вводит данные и сохраняем вводимые данные в переменную (аналогично с переменной email):

<figure><img src="/files/zSeIkNHLa8KtmO2cWd4n" alt="" width="563"><figcaption></figcaption></figure>

На данном этапе с созданием и настройкой блоков сбора данных завершено.&#x20;

### Блоки для выбора тарифа

Шаг 1. В блоке прописываем сообщение для пользователя, какой именно тариф он хочет выбрать:

<figure><img src="/files/6xv2ZiZ4fK6Jmjt9iYmw" alt=""><figcaption></figcaption></figure>

Шаг 2. В этом же блоке указываем через калькулятор доступные тарифы в курсе:

<figure><img src="/files/LQyZwiE3cOFR9wNITbzQ" alt=""><figcaption></figcaption></figure>

Вместо конструкции #{айди вашего тарифа} укажите ID тарифа в калькуляторе, которые существуют в вашем проекте:&#x20;

<figure><img src="/files/3ublCeMEEzV9jarpVrKc" alt="" width="563"><figcaption></figcaption></figure>

Шаг 3. Создаем кнопки в стрелке для выбора тарифа.&#x20;

Для этого из блока с калькулятором протягиваем две стрелки:

<figure><img src="/files/YldFmO7JD1zkKpUVMxCJ" alt="" width="563"><figcaption></figcaption></figure>

Далее в настройках стрелки прописываем название тарифа:

<figure><img src="/files/KIwcIQvIi4rueDH7xn0v" alt=""><figcaption></figcaption></figure>

И также необходимо активировать чекбокс "Отображать как кнопку" для того, чтобы клиент, например, не вводил вручную название тарифа и просто кликнул по кнопке:

<figure><img src="/files/qIr0Hy5ziS0hnOYldKBm" alt="" width="563"><figcaption><p>Пример клавиатурных кнопок</p></figcaption></figure>

### Ссылка на оплату

После выбора вашим пользователем тарифа, необходимо сформировать ссылку на оплату.&#x20;

Шаг 1. Создаем блок, в котором формируем переменную с ссылкой на оплату:

<figure><img src="/files/kguhFBA9owfjQT6R1a5v" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Для каждой платежной системы, с помощью которой вы формируете ссылку на оплату, существует своя функция для генерации ссылки. \
Для примера мы использовали платежную систему LifePay.&#x20;
{% endhint %}

В калькуляторе прописываем сумму, установленную вами в тарифе, где вместо конструкции #{сумма тарифа} необходимо прописать ВАШУ сумму оплаты по тарифу на курсе:

<figure><img src="/files/3CJh4BVLyzNSK2VFVNKh" alt="" width="563"><figcaption></figcaption></figure>

Шаг 2. Создаем кнопку оплаты в блоке:

<figure><img src="/files/72mmO5q3aURjvWomGO82" alt="" width="563"><figcaption></figcaption></figure>

Кликните на "Добавить" кнопку, после чего откроется окно модальной формы:

<figure><img src="/files/a6qAgUCUOOKKepBbv40v" alt="" width="563"><figcaption></figcaption></figure>

Где в поле URL необходимо прописать переменную через конструкцию #{}, в которой лежит Ваша ссылка на оплату:

<div><figure><img src="/files/xzhWKbQz7V1VzlN4cH5Q" alt="" width="563"><figcaption><p>Переменная в конструкции #{} для направления ссылки на оплату</p></figcaption></figure> <figure><img src="/files/kfcWYF8mF2JefLrXcgsg" alt="" width="563"><figcaption><p>Переменная, в которой лежит ссылка на оплату</p></figcaption></figure></div>

Если вы сделали все верно, то при тестировании вам откроется страница оплаты:

<figure><img src="/files/emYV9VaVkShsXXrSbpau" alt="" width="563"><figcaption></figcaption></figure>

Страница оплаты при нажатии на кнопку:

<figure><img src="/files/Dp0ZD9rzYz753goevlMd" alt="" width="563"><figcaption></figcaption></figure>

### Регистрация ученика на курс после оплаты

После успешной оплаты, в диалоге с клиентом приходит системное сообщение - коллбек об оплате:

<figure><img src="/files/3CtEhPR0rohIVe3Kh5fX" alt=""><figcaption></figcaption></figure>

Коллбек состоит из первых десяти символов секретного ключа, статуса оплаты (success или false), а также суммы платежа.&#x20;

{% hint style="info" %}
Колбек не виден в диалоге с клиентом, это системное сообщение.&#x20;
{% endhint %}

После оплаты вашего курса клиентом, можно настроить реакцию бота на колбек и записать ученика на курс.&#x20;

Шаг 1. Создаем блок первостепенной проверки условия, в условие которого вставляем коллбек об оплате:

<figure><img src="/files/BRFHW1y03g5BTjOEChIh" alt="" width="563"><figcaption></figcaption></figure>

Данный блок не нужно соединять стрелками с другими, он сам отработается после того, как колбек придет в диалоге с клиентом.

Шаг 2. В калькуляторе прописываем функцию регистрации ученика на курс - register\_customer\_on\_course():

<figure><img src="/files/EKy8uKnhLnnJy89Q5JXa" alt=""><figcaption></figcaption></figure>

Где вместо конструкции #{Айди тарифа} необходимо передать ID вашего тарифа, по стоимости которого проходил платеж:

1. ID тарифа в карточке тарифа:

<figure><img src="/files/9NA435AtK61AZNqJBezj" alt=""><figcaption></figcaption></figure>

1. ID тарифа в функции регистрации на курс:

<figure><img src="/files/9jWVhfHITimE75nzxOqy" alt="" width="563"><figcaption></figcaption></figure>

#### Функция и параметры:

**register\_customer\_on\_course(tariff\_id, email, email\_notification, period,** reregistration, purchase\_pric&#x65;**)**

<table><thead><tr><th width="239.15234375">Параметры</th><th>Описание параметра</th></tr></thead><tbody><tr><td><strong>!</strong> <strong>tariff_id</strong></td><td>обязательный параметр, идентификатор id тарифа. Скопировать можно в браузерной строке в настройках тарифа</td></tr><tr><td><strong>! email</strong></td><td>обязательный параметр, адрес электронной почты клиента. Можно указать конкретное значение или переменную, в которой записан email клиента</td></tr><tr><td><strong>email_notification</strong></td><td> необязательный параметр, передает ученику на Email сообщение о его регистрации на курс, если он включен.</td></tr><tr><td><strong>period</strong> </td><td><p>необязательный параметр, ограничение по времени действия тарифа. Форматы даты поддерживаются такие: %d.%m.%Y %H:%M или %d.%m.%Y Пример:</p><p><code>period = '15.08.2023 11:00'</code></p></td></tr><tr><td>reregistration</td><td>необязательный параметр, со значениями True или False. Данный параметр необязательный и указывается, если нужно регистрировать учеников повторно на тот же самый курс и тариф</td></tr><tr><td>purchase_price</td><td>необязательный параметр. Позволяет указать стоимость курса, если клиент оплачивал к нему доступ через бота. Если не указывать, будет использована стоимость указанного тарифа. Будет полезно, если клиент оплачивает доступ к курсу через бота по иной цене, нежели стоимость указанного тарифа</td></tr></tbody></table>

{% hint style="info" %}
Для того чтобы клиенты получали письма необходимо передать 1 в параметре **email\_notification.**

**Если не передать 1, то письма клиента получать не будут!**
{% endhint %}

{% hint style="info" %}
Все доступные функции для курса можно найти в статье "[Функции калькулятора для курсов](/online_courses/selling/chatbot/funkcii-kalkulyatora-dlya-kursov.md)".&#x20;
{% endhint %}

## Итог

Итоговая схема в конструкторе воронок для продажи курса через чат-бота выглядит следующим образом:

<figure><img src="/files/MDrla5W9PXT0vlxZGUtq" alt="" width="563"><figcaption></figcaption></figure>

Схема совсем небольшая, но зато выполняет следующие важные функции:

1. Рассказывает клиенту о доступных тарифах на курсе;
2. Собирает данные в виде имени и email;
3. Дает клиенту выбрать необходимый ему тариф;
4. Формирует ссылку на оплату после выбора тарифа;
5. Регистрирует вашего клиента по собранным данным в виде email на курс по определенному тарифу;
6. С помощью функции регистрации на курс направляет письмо о регистрации ученику.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/online_courses/selling/chatbot.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
