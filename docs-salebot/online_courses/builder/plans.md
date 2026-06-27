> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/online_courses/builder/plans.md).

# Тарифы онлайн-курса

Принимать платежи за онлайн-курсы в Salebot можно как через чат-бота, так через страницу курса. Стоит отметить, что для одного курса можно настроить оба варианта приема оплат.

{% hint style="info" %}
Как продавать курсы через чат-бота, рассказали в статье "[Продажа курсов в чат-боте](/online_courses/selling/chatbot.md)".
{% endhint %}

{% hint style="info" %}
Как настраивать платежи на странице курса, рассказали в статье "[Продажа курсов на промо-странице"](/online_courses/selling/promo_page.md).
{% endhint %}

При продаже онлайн-курсов важной задачей является установка правильных тарифов. Корректно подобранная цена не только привлекает внимание потенциальных учеников, но и обеспечивает устойчивый доход для автора курса.&#x20;

<div><figure><img src="/files/jFnFaCPy0WgR17qonYao" alt="" width="375"><figcaption></figcaption></figure> <figure><img src="/files/oOCF59NQkG0fglTSRbPK" alt="" width="375"><figcaption></figcaption></figure></div>

С технической точки зрения настройка тарифов на платформе Salebot не подразумевает под собой сложность в установке платежных систем или устойчивых знаний программирования. Достаточно подключенной платежной системы и настроенных, например, модулей (уроков) в онлайн-курсе.&#x20;

Перейдем к настройке.&#x20;

## Создание тарифа

Чтобы создать тариф в онлайн-курсах, перейдите в соответствующую вкладку в настройках курса:

<div data-with-frame="true"><figure><img src="/files/JET0LItWkCHWw85QwtSH" alt=""><figcaption></figcaption></figure></div>

{% hint style="success" %}
Обращаем внимание!

Вы не можете удалить базовый бесплатный тариф, существующий в курсе по умолчанию, пока не создадите еще один или несколько тарифов для курса.&#x20;
{% endhint %}

{% hint style="warning" %}
Обращаем внимание!&#x20;

Если к вашему проекту не подключена ни одна платежная система, то платные тарифы на странице курса отображены не будут.&#x20;
{% endhint %}

Чтобы создать новый тариф, кликните по одноименной кнопке:

<div data-with-frame="true"><figure><img src="/files/9hYesD8s9N6THE3DdyLv" alt=""><figcaption></figcaption></figure></div>

Либо отредактируйте Базовый тариф, существующий по умолчанию:

<div data-with-frame="true"><figure><img src="/files/iFnFX8mN14lvObMwHuAx" alt="" width="563"><figcaption></figcaption></figure></div>

Тогда вы перейдете в форму настройки тарифа, которое выглядит следующим образом:

<div data-with-frame="true"><figure><img src="/files/KSwvbpGNopbE3pULgaZ0" alt="" width="563"><figcaption></figcaption></figure></div>

## Поля ввода

**Название тарифа** - текстовое поле для наименования, которое будет отображаться на странице курса.&#x20;

<div data-with-frame="true"><figure><img src="/files/UiBwxv4dt3PrWtSKWBOg" alt="" width="563"><figcaption></figcaption></figure></div>

**Описание тарифа** - текстовое поле, которое поддерживает форматирование текста, создание списков и добавление ссылок. Оформить описание вы можете на свое усмотрение.

<div data-with-frame="true"><figure><img src="/files/2dR6YpVmH4X82juZGW7T" alt="" width="563"><figcaption></figcaption></figure></div>

**Стоимость тарифа** - поле для ввода стоимости курса.

<div data-with-frame="true"><figure><img src="/files/Paueobf8OXfUEc7Cz4x5" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Обращаем внимание!

Сумма тарифа должна быть введена без пробелов.
{% endhint %}

Установить стоимость тарифа можно не только в российском рубле, но и использовать другие валюты:

<div data-with-frame="true"><figure><img src="/files/gBKTTa2CuUiVlt1SBLAP" alt="" width="167"><figcaption></figcaption></figure></div>

**Сделать скидку** - чекбокс для отображения скидки и окончательной стоимости курса на странице:

<div data-with-frame="true"><figure><img src="/files/ZxXrTuxArgNOSZ26r9Jz" alt="" width="563"><figcaption></figcaption></figure></div>

## Тип подписки

Можно создать разовую подписку и подписку с автопродлением.

<div data-with-frame="true"><figure><img src="/files/OlE8WfgtXqQn2CGhF8ub" alt="" width="563"><figcaption></figcaption></figure></div>

### Единоразовый платеж

Для единоразовой подписки выберите пункт"Разовая оплата":

<div data-with-frame="true"><figure><img src="/files/6cRxnOiwxEX3yWxUTZha" alt="" width="563"><figcaption></figcaption></figure></div>

Затем пропишите стоимость:

<div data-with-frame="true"><figure><img src="/files/4TlusFjqThW1awMcMJu2" alt="" width="563"><figcaption></figcaption></figure></div>

Также можно указать скидку:

<div data-with-frame="true"><figure><img src="/files/GtKMA4sywmXRscENB8lY" alt="" width="563"><figcaption></figcaption></figure></div>

### Подписка с продлением

{% hint style="warning" %}

#### Важно!

Подписка с автопродлением будет работать только с платежными сервисами, поддерживающими реккурентные платежи: ТБанк, Робокасса, Cloudpayments.

Позднее будут добавлены и другие платежные сервисы.
{% endhint %}

Чтобы создать подписку с автопродлением, выберите пункт "Подписка с автоподлением":

<div data-with-frame="true"><figure><img src="/files/tsd01b1lJr4QthYihcyw" alt="" width="563"><figcaption></figcaption></figure></div>

1. Период списания — периодичность списания платежей по подписке (например, 1 раз в неделю, 1 раз в месяц и т.д.):

<div data-with-frame="true"><figure><img src="/files/Vo5fyC2fXVncOnX2uq1C" alt="" width="563"><figcaption></figcaption></figure></div>

2. Пробный период — дни бесплатного доступа до первого списания (например, пробный период 7 дней):

<div data-with-frame="true"><figure><img src="/files/zFMHZXbptmoUKJ3UBVFY" alt="" width="563"><figcaption></figcaption></figure></div>

3. Льготный период после неудачного списания — период, в течение которого клиент сохраняет доступ и может оплатить подписку, если автоматическое списание не прошло.

<div data-with-frame="true"><figure><img src="/files/6PdpfJA3jdkJWobnPEeh" alt="" width="563"><figcaption></figcaption></figure></div>

4. Максимальное количество списаний — количество повторных попыток автоматического списания оплаты при неудачном платеже.

<div data-with-frame="true"><figure><img src="/files/a2PABTkSxFol9iLT7dcz" alt="" width="563"><figcaption></figcaption></figure></div>

5. При отмене сохранять доступ до конца оплаченного периода — если клиент отменил подписку, он **не теряет доступ сразу**, а продолжает пользоваться услугой до даты окончания уже оплаченного периода.

<div data-with-frame="true"><figure><img src="/files/iPvIZC5s1JVYsvzSKs9L" alt="" width="563"><figcaption></figcaption></figure></div>

Далее пропишите стоимость ежемесячной подписки:

<div data-with-frame="true"><figure><img src="/files/KTOzTE9N3xtk9xEoyRVj" alt="" width="563"><figcaption></figcaption></figure></div>

## Настройки доступа по урокам (модулям)

После создания и редактирования модулей и уроков на курсе, они автоматически отобразятся в настройках тарифов:

<div data-with-frame="true"><figure><img src="/files/53ZinlfMEb3ajuQLDwWU" alt=""><figcaption></figcaption></figure></div>

Для каждого отдельного тарифа можно выбрать необходимые модули и уроки, например, в зависимости от контента вашего онлайн-курса или стоимости.&#x20;

Например, в самый дорогостоящий тариф вы можете включить дополнительные уроки, модули, а в базовом - оставить голую суть:

<div data-with-frame="true"><figure><img src="/files/7XBayqT9Czy5H8rKPEPY" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="warning" %}
Обращаем внимание!

Если вы не выбрали ни одного урока или ни один модуль, то тариф на промо-странице курса, а также на сайте отображаться не будет!
{% endhint %}

## Настройки доступа по дате и времени

В настройках тарифа существует возможность ограничивать периоды доступа к тарифу и включенным в него урокам и/или модулям:

<div data-with-frame="true"><figure><img src="/files/79GxHvPqyGV9neCVQyGq" alt="" width="563"><figcaption></figcaption></figure></div>

### По количеству дней

В поле "Период доступа" введите количество дней/недель/месяцев, в течение которых будет доступен уроки (модули) на данном тарифе:

<figure><img src="/files/SoEdJWXr57EW8zM6ZpOB" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Вы можете создавать несколько тарифов и в каждом устанавливать длительность доступа к созданным урокам больше или меньше в зависимости, например, от стоимости или материала курса.
{% endhint %}

### До даты

Также в настройках существует возможность ограничить доступ к тарифу и урокам в нем ДО определенной даты:

<div data-with-frame="true"><figure><img src="/files/v6eqRTnZjdBJJPVdQq6z" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы установить ограничение доступа до определенной даты, выберите соотвествующее число месяца в календаре, а также определенные часы:

<div data-with-frame="true"><figure><img src="/files/NBVN3PczFk9o7dvihGGj" alt="" width="563"><figcaption></figcaption></figure></div>

### Неограниченный доступ

Чекбокс "Не ограничено" позволяет ученикам вашего курса обратиться к материалам обучения в любое время после оплаты тарифа:

<div data-with-frame="true"><figure><img src="/files/IvxDcPi1Q85vnA3MNvHO" alt="" width="563"><figcaption></figcaption></figure></div>

### Настройки доступа тарифа на курсе

В настройках тарифа существует функционал, который отображает созданный вами тариф только после определенной даты:

<div data-with-frame="true"><figure><img src="/files/L9djh4XxbWEwW4ORE9oS" alt="" width="563"><figcaption></figcaption></figure></div>

В таком случае на промо-странице курса у созданного вами тарифа откроется старт оплат только после установленной вами даты:

<div data-with-frame="true"><figure><img src="/files/os0GWLgbnFoGjjweLkjZ" alt="" width="563"><figcaption></figcaption></figure></div>

## Остальные настройки

### Заморозка курса

При настройке тарифа можно предусмотреть возможность заморозки для своих учеников:

<div data-with-frame="true"><figure><img src="/files/yrAyqJ6VsYL88sjdeVo5" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Обращаем внимание!

1. Заморозить курс можно только 1 раз;&#x20;
2. При заморозке прерывается доступ к тарифу, но после разморозки доступ продлевается на время заморозки.&#x20;
   {% endhint %}

### Пошаговый доступ

С помощью чекбокса "Пошаговый доступ к урокам/модулям" ученик будет переходить к последующим этапам обучения только после прохождения предыдущего модуля или урока:

<div data-with-frame="true"><figure><img src="/files/v5rGOW2GaAcQrhfmz5KD" alt="" width="563"><figcaption></figcaption></figure></div>

При необходимости можно применить данную настройку только к определенным спискам или меткам.

Пошаговый доступ к урокам/модулям можно установить после:

1. Прохождения домашнего задания: тогда следующий урок/модуль откроется после выполнения д/з:

<div data-with-frame="true"><figure><img src="/files/wK6nPFSbsP2Ww9fszhzm" alt="" width="563"><figcaption></figcaption></figure></div>

2. Через определенный промежуток:

<div data-with-frame="true"><figure><img src="/files/pTGBUOtkXdyMpa9jRMyL" alt="" width="563"><figcaption></figcaption></figure></div>

Каждый последующий урок на курсе откроется только по истечению количества дней, заданных в  поле "Каждые n дней".&#x20;

3. По дате доступности урока:

<div data-with-frame="true"><figure><img src="/files/ym5N1wG53pO9hpvKw5CP" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы данная настройка работала в тарифе, перейдите в настройки урока:

<div data-with-frame="true"><figure><img src="/files/9cY9uWm8DVzxIiAPbhTI" alt="" width="563"><figcaption></figcaption></figure></div>

Далее найдите поле с вводом даты и времени:

<div data-with-frame="true"><figure><img src="/files/TLPB3jqfmxOSwmUlyqdB" alt="" width="563"><figcaption></figcaption></figure></div>

### Скрыть домашнее задание

Чекбокс "Скрыть домашнее" задание не отобразит в создаваемом вами тарифе д/з по курсу:

<div data-with-frame="true"><figure><img src="/files/K4wDoCkxtoYXznlmO3Wp" alt="" width="509"><figcaption></figcaption></figure></div>

Можно использовать только для определенных меток/списков учеников.

### Настройки кнопки тарифа

Кнопку тарифа можно изменять по своему усмотрению:

<div data-with-frame="true"><figure><img src="/files/MaNFv7zhcBboU5QJGbpa" alt="" width="563"><figcaption></figcaption></figure></div>

Поле "Добавьте ссылку на оплату" понадобится в том случае, если вам необходимо использовать собственную ссылку на оплату через сервисы, которые необходимы именно вам.&#x20;

{% hint style="info" %}
Обращаем внимание!

Кастомизированная кнопка для оплаты тарифа будет отображаться ДО того, как ваш ученик купит курс.&#x20;

После оплаты стоимости курса по определенному тарифу, на промо-странице вашего обучения в карточке тарифа будет отображаться стандартизированная кнопка по цветовым темам, используемым в ваших настройках.&#x20;
{% endhint %}

## Видеогид

{% embed url="<https://www.youtube.com/watch?ab_channel=Salebot-%D0%9A%D0%BE%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%82%D0%BE%D1%80%D1%87%D0%B0%D1%82%D0%B1%D0%BE%D1%82%D0%BE%D0%B2&v=5YInQ0tki9g>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/online_courses/builder/plans.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
