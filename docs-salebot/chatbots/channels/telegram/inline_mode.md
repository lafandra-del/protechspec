> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/inline_mode.md).

# Инлайн-режим (inline mode) в Telegram

Что такое инлайн-режим в Телеграме?&#x20;

Помимо того что бот может отвечать на какие-либо запросы непосредственно в личном чате или группе, с помощью инлайн-режима можно глобально обращаться к боту в чате, группе или канале.&#x20;

Чтобы обратиться к боту, у которого подключен инлайн-режим, достаточно в поле сообщения ввести @\*имя бота\*.&#x20;

Самый яркий и популярный пример бота, работающего в инлайн-режиме, это @gif, с помощью которого вы можете выбрать и отправить гиф-изображения:

<figure><img src="/files/pfpkWE7Iac661qh8L48t" alt="" width="494"><figcaption><p>бот @gif будет работать в любом чате</p></figcaption></figure>

## Как включить инлайн-режим <a href="#docs-internal-guid-9a6f6865-7fff-ce19-2b31-c08443ece3bd" id="docs-internal-guid-9a6f6865-7fff-ce19-2b31-c08443ece3bd"></a>

Для работы бота в инлайн-режим, нужно включить эту опцию в настройках бота в [BotFather](https://t.me/BotFather).

Выбираем нужного бота и переходим в настройки Bot Settings

<figure><img src="/files/6UeVWnud2GRHoT6f9QB7" alt="" width="375"><figcaption></figcaption></figure>

Далее Inline Mode

<figure><img src="/files/rPjr5bWO1WSZ1VErChLY" alt="" width="351"><figcaption></figcaption></figure>

И нужно включить инлайн режим, если он не включен

<figure><img src="/files/ifZgIwL0BYSdIMBa0xpi" alt="" width="375"><figcaption></figcaption></figure>

## Как изменить плейсхолдер <a href="#docs-internal-guid-426b9adc-7fff-8669-057a-3252e8e2c449" id="docs-internal-guid-426b9adc-7fff-8669-057a-3252e8e2c449"></a>

Далее, по желанию, можно изменить плейсхолдер, который отображается до ввода поискового запроса. По умолчанию он Search…

<figure><img src="/files/8ClCA1vb8qvQozu5i4qt" alt="" width="375"><figcaption></figcaption></figure>

Чтобы изменить нужно нажать кнопку Edit inline placeholder:

<figure><img src="/files/Fvq9fhwY1Yuid09nfDSO" alt="" width="375"><figcaption></figcaption></figure>

Напишите, что именно должно отображаться в плейсхолдере:

<figure><img src="/files/H9K75evVp2ifW36iEIoP" alt="" width="563"><figcaption></figcaption></figure>

## Как настроить результаты вывода <a href="#docs-internal-guid-26eb8ce3-7fff-0587-d822-215f67feb52a" id="docs-internal-guid-26eb8ce3-7fff-0587-d822-215f67feb52a"></a>

После нажатия на вариант из списка в инлайн-режиме, отправится сообщение, которое указано в заголовке выбранного варианта, и на это значение можно настроить реакцию в воронке.

Чтоб указать данные для вывода в инлайн режиме, нужно задать переменную inline\_bot. В инлайн-режиме поиск по значениям в переменной inline\_bot происходит практически в реальном времени.

Данные в переменной могут быть заданы тремя вариантами. Рассмотрим от самого простого, до максимальных настроек.

### Массив с текстовыми данными

Например поиск будет происходить по массиву продуктов

<figure><img src="/files/XFZUNNryWO6ct7qsTlj7" alt=""><figcaption><p>Переменная inline_bot указана в настройках проекта</p></figcaption></figure>

Поиск происходит по вхождению введенной фразы в вариантах в массиве:

<div><figure><img src="/files/LY6J9Fs3Ha00W3MhwHPO" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/IL7zZiRb7i0ndrhMlrbF" alt="" width="563"><figcaption></figcaption></figure></div>

При вводе '<mark style="color:red;">**@название\_\_вашего\_\_бота'**</mark>**&#x20;**<mark style="color:green;">**и начальных букв команд**</mark> открывается меню со значениями, которые вы указали <mark style="color:orange;">**в переменной проекта.**</mark>

После нажатие на нужный пункт в бот будет отправлено сообщение от пользователя, на которое можно настроить реакцию в боте:

<figure><img src="/files/MfbOCH5bMdDPkHTnqfkZ" alt="" width="518"><figcaption></figcaption></figure>

Настройка блока выглядит следующим образом:

<figure><img src="/files/3sDIBmJKXVtprokFkHwN" alt="" width="563"><figcaption></figcaption></figure>

Пример данных:

\["Молоко", "Хлеб", "Макароны", "Шоколад", "Яйца", "Масло", "Слойка", "Чай", "Овощи", "Фрукты"]

### Массив со словарями для вариантов кнопок <a href="#docs-internal-guid-324cfed5-7fff-a606-266b-4354192c396f" id="docs-internal-guid-324cfed5-7fff-a606-266b-4354192c396f"></a>

Второй вариант более настраиваемый, вместо текстовых значений массив будет содержать словари.

{% hint style="info" %}
Поиск для этого варианта осуществляется по значению ключа **title**&#x20;

регистр не учитывается
{% endhint %}

Разберем максимальный набор параметров для одного варианта (словаря). Для примера возьмем следующий:

`{"title": "Оплата", "description": "Способы оплаты описание",`

`"thumb_url": "https://img.icons8.com/dusk/50/000000/card-exchange.png", "message_text": "оплата товара 1"}`

**title** - заголовок кнопки

**description** - описание

**thumb\_url** - ссылка на картинку

**message\_text** - Этот текст отправится при выборе этого варианта

1\. Пример вывода и после нажатия 2. отправился заданный текст

![](https://lh4.googleusercontent.com/qNtgEyEpS8k4Zy1awLKsYvKQbQe98LdNVJjHV47P7GgXwM_MDg1prv7SqlQ37zDLQb-kGKqdQTr7vMcIYjMZqC2RLMoMLN-cfRxhT1CCP0BjBnkVhsxAC9uctjJi7_lOQXick7Sn)

Для одного варианта (словаря) обязательным является только ключ title со значением, которое и отправится при нажатии на этот пункт.

Например: {"title": "Настройка"}

![](https://lh6.googleusercontent.com/EpwM9UwbnzvJvX1v4IJv-tcvuxiGSgUeK9RN3C6Q67kZn2Bvn1iGSFm2ySJ73GjI3har5El2LEglxMY0YPKpz8GFy8TQodR9qe1zikjkS9dgho3UiwLQiaqzDMBsVlMcXIyCmekL)

Пример данных:

\[{"title": "Корзина", "description": "Выбранные товары", "thumb\_url": "<https://img.icons8.com/dusk/64/000000/shopping-basket.png"}>,

{"title": "Доставка", "description": "Варианты доставки заказа", "thumb\_url": "<https://img.icons8.com/dusk/64/000000/delivery--v1.png"}>,

{"title": "Оплата", "description": "Способы оплаты описание",

"thumb\_url": "<https://img.icons8.com/dusk/50/000000/card-exchange.png>", "message\_text": "оплата товара 1"},

{"title": "Настройка"}]

<figure><img src="/files/hg4WOScuVgN5728ewX2V" alt=""><figcaption></figcaption></figure>

### Словарь со списком для вариантов кнопок <a href="#docs-internal-guid-11707882-7fff-a56c-1e9d-4e606e40895d" id="docs-internal-guid-11707882-7fff-a56c-1e9d-4e606e40895d"></a>

Третий вариант подходит, если вы хотите задать определенные меню на нужные фразы и удобен в использовании вместе с инлайн кнопкой, в которой зашита нужная фраза.

{% hint style="info" %}
Поиск для этого варианта осуществляется по полному совпадению запроса с ключом, за которым закреплено меню
{% endhint %}

В примере поиск будет происходить по ключам меню, посты и продукты.&#x20;

Структура следующая:

**"ключ": \[массив кнопок]**

{"поисковая фраза1": \[{"title": "Корзина", "description": "Выбранные товары"},

{"title": "Оплата", "description": "Способы оплаты",

"thumb\_url": "#{переменная с урлом}", "message\_text": "Способы оплаты"},

{"title": "Доставка", "description": "Варианты доставки заказа",

"thumb\_url": "ссылка на картинку"}],

"поисковая фраза2": \[{"title": "Первый", "description": "Описание 1111"},

{"title": "Четвертый", "description": "#{переменная}"}],

"поисковая фраза3": \["Молоко", "Хлеб", "#{переменная}", "Шоколад"]}

{% hint style="info" %}
Значения - это массив со словарями или массив со строками, комбинировать нельзя!
{% endhint %}

Разберем максимальный набор параметров для одного варианта (словаря). Для примера возьмем следующий:

`{"title": "Оплата", "description": "Способы оплаты описание",`

`"thumb_url": "https://img.icons8.com/dusk/50/000000/card-exchange.png", "message_text": "оплата товара 1"}`

**title** - заголовок кнопки

**description** - описание

**thumb\_url** - ссылка на картинку

**message\_text** - Этот текст отправится при выборе этого варианта

Минимально один вариант (словарь) должен содержать ключ title со значением, которое отправится при нажатии на этот пункт.

Например: `{"title": "Настройка"}`

Пример данных:

{"меню": \[{"title": "Корзина", "description": "Выбранные товары",

"thumb\_url": "<https://img.icons8.com/dusk/64/000000/shopping-basket.png"}>,

{"title": "Оплата", "description": "Способы оплаты",

"thumb\_url": "<https://img.icons8.com/dusk/50/000000/card-exchange.png>", "message\_text": "Способы оплаты"},

{"title": "Доставка", "description": "Варианты доставки заказа",

"thumb\_url": "<https://img.icons8.com/dusk/64/000000/delivery--v1.png"}>],

"посты": \[{"title": "Первый", "description": "Описание 1111"},

{"title": "Второй", "description": "Описание 2222"},

{"title": "Третий", "description": "Описание 333"},

{"title": "Четвертый", "description": "Описание 44444"}],

"продукты": \["Молоко", "Хлеб", "Макароны", "Шоколад", "Яйца", "Масло", "Слойка", "Чай", "Овощи", "Фрукты"]}

Пример ввода значений в переменную inline\_bot:

<figure><img src="/files/mfVTkhJ8n81JTl71N8IJ" alt=""><figcaption></figcaption></figure>

## Вывод при отсутствии фильтрации

Вы можете задать пустой ключ и присвоить ему массив строчных значений или массив словарей. Бот обратится к словарю по пустому ключу и выведет кнопки со значениями из присвоенного массива.

## Инлайн-кнопка с заданным поисковым значением

{% hint style="warning" %}
Обращаем внимание!

Инлайн-кнопки в телеграм не являются колбеками.&#x20;

Если вам необходимо получать колбеки, то прочтите [о колбек-кнопках в телеграм](https://docs.salebot.pro/messendzhery-i-chaty/kak-sozdat-bota-v-telegram/knopki-v-telegram#kak-sozdat-callback-knopku).

Кнопка работает только в телеграм.
{% endhint %}

Чтоб задать поисковую фразу нужно в инлайн-кнопку добавить параметр inline\_query.

Со значением которое автоматически подставляется в запрос.

{% hint style="info" %}
Рекомендуется использовать именно этот вариант для инлайн-режима. Позволит избежать ошибок и работает быстрее.
{% endhint %}

Например добавим три кнопки, которые соответствуют примеру из предыдущей главы

\[{"line":0,"index\_in\_line":0,"text":"Покажи меню","type":"inline","<mark style="color:red;">**inline\_query**</mark><mark style="color:red;">":"</mark><mark style="color:red;">**меню**</mark><mark style="color:red;">"</mark>},{"line":0,"index\_in\_line":1,"text":"Статьи","type":"inline",<mark style="color:red;">"</mark><mark style="color:red;">**inline\_query**</mark><mark style="color:red;">":"</mark><mark style="color:red;">**посты**</mark><mark style="color:red;">"</mark>},{"line":2,"index\_in\_line":0,"text":"Список продуктов","type":"inline",<mark style="color:red;">"</mark><mark style="color:red;">**inline\_query**</mark><mark style="color:red;">":"</mark><mark style="color:red;">**продукты**</mark><mark style="color:red;">"</mark>}]

<figure><img src="/files/ofEvPb1PnibTpTDB8A8r" alt="" width="375"><figcaption></figcaption></figure>

При нажатии на кнопку, например, Статьи выведется найденный список кнопок (при добавлении указали для этой кнопки "inline\_query":"посты"):

<figure><img src="/files/MbuqHFsebDnLsvYa3RAn" alt="" width="563"><figcaption></figcaption></figure>

Варианты берутся из заданной переменной, как описано выше в разделе "Словарь со списком":

<figure><img src="/files/mfVTkhJ8n81JTl71N8IJ" alt=""><figcaption></figcaption></figure>

## Примечания <a href="#docs-internal-guid-7a91aad5-7fff-5d8b-15e4-567dc5a8c2f8" id="docs-internal-guid-7a91aad5-7fff-5d8b-15e4-567dc5a8c2f8"></a>

* Переменную inline\_bot можно задать не только в общих переменных, но и просто переменной, но в таком случае ее значение нужно заключить в одинарные кавычки.

Пример в поле калькулятор:

`inline_bot = '["Молоко", "Хлеб", "Макароны", "Шоколад", "Яйца", "Масло", "Слойка", "Чай", "Овощи", "Фрукты", "#{aa}"]'`

* &#x20;Также можно любое значение передать в виде переменной, для более гибкой настройки.&#x20;

Для примера простой вариант в массиве:

<figure><img src="/files/Sl2Y5TvBvwZ3DU3ygI1V" alt="" width="563"><figcaption></figcaption></figure>

## Работа с google-таблицами

Для упрощения работы с инлайн-режимом Telegram реализован механизм, который позволяет получить необходимые настройки с использованием шаблона данных в Google-таблице

Приступим к работе:

Скопируйте к шаблон и не забудьте открыть доступ для чтения к документу для всех, у кого есть ссылка:

1. Перейдем к наполнению данных в заданной структуре:

<figure><img src="/files/qq2WyS7Cp18IwxKH91Ae" alt=""><figcaption></figcaption></figure>

2. Теперь перейдем в проект и и настроим заполнение переменной inline\_bot данными из таблицы. Для этого создаем отдельный блок, который будет запускаться только менеджером. Выполняем следующие настройки:

<figure><img src="/files/YAWODEGgb0MWyMvuURPb" alt=""><figcaption></figcaption></figure>

Пример кода для копирования

set\_inline\_menu\_from\_sheet(sheet\_id, worksheet\_name\_or\_index, in\_line)

Подробнее о функции:

Параметры:

! sheet\_id - идентификатор Google-таблицы worksheet\_name\_or\_index - название или индекс листа в таблице. Необязательный параметр, если в таблице только один лист in\_line - количество инлайн-кнопок в ряду

Результат исполнения функции - общие переменные:

inline\_bot - набор данных, описывающий inline-команды для бота

inline\_bot\_buttons - набор данных, описывающий inline-кнопки, которые могут быть отправлены в чат с клиентом

nabor=set\_inline\_menu\_from\_sheet(sheet\_id, 'меню для кнопок',2)

Plain textCopyMore options

Исполняем блок и получаем заветные словари в общих переменных:

<figure><img src="/files/eJPCgguLOChDkf3qpGnB" alt=""><figcaption></figcaption></figure>

Настройки проекта - Общие переменные

1. Далее подключаем inline-режим для нашего бота. Подробно это рассмотрено выше
2. При желании меняем плейсхолдер. Как это сделать рассказано выше

Image options

Пример вызова бота в inline-режиме

На этом подготовительная часть работы окончена. И далее работаем с результатом исполнения функции.

Например, для отправки меню клиенту используйте inline\_bot\_buttons:

Пример отправки меню в чат с клиентом

<figure><img src="/files/jH0Ki8f97tA6ReNBWs2A" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/inline_mode.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
