> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/vidzhety-dlya-saita/vidzhet-obratnoi-svyazi.md).

# Виджет обратной связи

Виджет обратной связи устанавливается на сайте для того, чтобы посетители могли легко связаться с компанией и задать интересующие их вопросы. Это помогает улучшить взаимодействие с клиентами и оперативно консультировать их, а также собирать отзывы и предложения для повышения уровня удовлетворённости пользователей.

{% hint style="success" %}
При заполнении клиентов формы в виджете обратной связи, клиент создается в разделе "Клиенты", куда также попадает информация о нем.
{% endhint %}

## Настройки

{% hint style="warning" %}
Обращаем внимание! \
Перед настройкой виджета обратной связи убедитесь, что у вас подключена одна из интеграций телефонии. В противном случае, виджет не может быть установлен на сайт.
{% endhint %}

{% hint style="info" %}
Как подключить телефонию в Salebot, читайте в разделе "[Интеграции](broken://pages/-M1dsRhrcgfbT0sgiazE)" - "[Телефония](broken://pages/7WfU841wEEF0kV9gOoXy)".
{% endhint %}

### Основная информация

<figure><img src="/files/7PZ50bN7M8r7IsmgWBh2" alt="" width="563"><figcaption></figcaption></figure>

В разделе "Основная информация" настроек существуют пустые поля с наименованием самого виджета, а также сайта, куда он должен быть внедрен.&#x20;

1. **Название**\
   Соответственно в данном поле вы можете прописать любое необходимое наименование виджета, которое будет отображено на сайте. Это поле является обязательным.
2. **Домен, где будет использован виджет.** \
   Это второе обязательное поле, где необходимо указать домен сайта. Это может быть как сайт, спроектированный на Salebot, так и на сервисе Тильда, а также на свой собственный.

В расширенных настройках  основной информации можно активировать чекбокс для отправки колбеков о звонке:

<figure><img src="/files/uqDTNmNiNmw8yOk5NfZJ" alt="" width="275"><figcaption></figcaption></figure>

Колбеки виджета обратной связи не совпадают с колбеками подключенной телефонии и имеют вид:

<figure><img src="/files/LLKJrkyYnohRewRwRlHU" alt=""><figcaption></figcaption></figure>

В последующем вы можете настроить реакцию чат-бота на полученные колбеки.

{% hint style="info" %}
Какие колбеки существуют, читайте ниже в разделе "[Колбеки](#kollbeki)"
{% endhint %}

Также по своему усмотрению, можно оставить или скрыть логотип "Сделано Salebot" с помощью данного чекбокса:

<figure><img src="/files/IMIm8YhmqLqYB18DM7Vs" alt=""><figcaption></figcaption></figure>

### Условия срабатывания

<figure><img src="/files/DYQCkFWx86ow2OMRPWqY" alt="" width="563"><figcaption></figcaption></figure>

#### Временной интервал

Можно установить тайминг показа виджета на сайте. Для этого воспользуйтесь функцией "Когда показывать виджет":

1. **Сразу**\
   Данная настройка отобразит виджет в момент перехода пользователя на сайт.&#x20;
2. **Спустя время**

<figure><img src="/files/McJ4ljB4feLDIXMXWDue" alt="" width="398"><figcaption></figcaption></figure>

Виджет отобразится на сайте по прошествию определенного количества секунд после того, как клиент перешел на сайт.

Устанавливается временной интервал в секундах, где минимальное значение - 1 секунда, а максимальное  - 15 секунд.

3. **После прокрутки**

<figure><img src="/files/ZNEoLUDVxUCnlIVVF3N1" alt="" width="396"><figcaption></figcaption></figure>

Условие "После прокрутки" обозначает, что как только пользователь совершит действие по прокрутке сайта, независимо от того, полностью ли он долистал сайт до конца или просмотрел небольшую часть, виджет отобразится на сайте по прошествии установленного количества секунд.&#x20;

Минимальное значение временного интервала - 1 секунда; максимальное  - 15.&#x20;

### Факторы отображения на сайте

<figure><img src="/files/MZhogRyYG7HW8eSGq0Hp" alt=""><figcaption></figcaption></figure>

Можно установить отображение виджета как без условий, так и по условиям. Разберем подробнее существующие условия.

1. UTM-метки

{% hint style="info" %}
Чтобы узнать, что такое UTM-метки и как ими пользоваться, рекомендуем прочитать статью "[Как передать параметры и UTM-метки](https://docs.salebot.pro/minilendingi-v-socialnykh-setyakh/kak-peredat-parametry-i-utm-metki)".
{% endhint %}

<figure><img src="/files/O53E9n1Z6rsyPpt2Lz3L" alt=""><figcaption></figcaption></figure>

В соответствующем поле пропишите название необходимой метки:

<figure><img src="/files/y0n1VhODqVamp3pzUBlz" alt="" width="362"><figcaption></figcaption></figure>

Далее выберите оператор соответствия метки значению:

<figure><img src="/files/8D305DEfcqvVHOMARPOr" alt="" width="362"><figcaption></figcaption></figure>

{% hint style="info" %}
В чем разница содержит/не содержит и равно/не равно?

Основное различие в том, что "**содержит/не содержит**" проверяет значение на факт того, что UTM-метка включает (или не включает) то или иное значение. \
Тогда как оператор "**равно**" строго присваивает значение, в связи с чем система ищет совпадение в UTM-метке по строгому значению (соответственно "Не равно" противоположно).
{% endhint %}

После чего пропишите необходимое значение для UTM-метки:

<figure><img src="/files/1n9AzqLiiqudFja4JblU" alt=""><figcaption></figcaption></figure>

2. Страна

<figure><img src="/files/9lDzMxPTRFubqvGGtUy5" alt=""><figcaption></figcaption></figure>

Также можно выбрать условие "Страна", которое отобразит виджет в зависимости от IP страны подключения. \
Выберите необходимую страну из перечня, а также тип оператора (является или не является):

<figure><img src="/files/kyY2ToZVmR06BXC83Yg2" alt="" width="233"><figcaption></figcaption></figure>

3. Устройство

<figure><img src="/files/eLIS8bO8oNrqKidP0b0t" alt=""><figcaption></figcaption></figure>

При необходимости установите условие "Устройство", которое отобразит виджет в зависимости от типа устройства клиента, перешедшего на сайт:

<div><figure><img src="/files/4rS2zBzah861nlFK8JqX" alt="" width="240"><figcaption></figcaption></figure> <figure><img src="/files/sDyPsQTtZOyjyWtVccuU" alt=""><figcaption></figcaption></figure></div>

В настройках также существует функция для добавления нескольких значений для отображения виджета. Для этого достаточно кликнуть по "+ Добавить значение" и установить еще одно или несколько необходимых условий:

<figure><img src="/files/ekPwbDM198KK8cNOaoYh" alt=""><figcaption></figcaption></figure>

### Телефония

По своему усмотрению вы можете подключить телефонию для срабатывания обратного звонка либо собирать заявки для дальнейшей связи с клиентом без автоматического звонка.&#x20;

<figure><img src="/files/IVVmJZBG83HWp2NjXinG" alt="" width="563"><figcaption></figcaption></figure>

Чекбокс "Обратный звонок через телефонию" в активном состоянии поможет автоматически принимать заявки для обратного вызова клиенту спустя время, установленное в настройках виджета.&#x20;

При неактивном состоянии данного чекбокса, будет создаваться заявка на звонок с данными клиента, где вы сможете уже связаться с ними вне подключенных интеграций с телефонией. Однако помните, что функционал таймера и отложенного звонка в виджете не будет доступен.&#x20;

Чтобы виджет с активным чекбоксом телефонии работал корректно, подключите [телефонию](broken://pages/7WfU841wEEF0kV9gOoXy).&#x20;

<figure><img src="/files/QNjb9J9lepFr3Q6BdhK0" alt=""><figcaption></figcaption></figure>

Если у вас уже установлена телефония, то выберите соответствующую интеграцию в списке:

<figure><img src="/files/UcRVT7VrhulLurvXR64o" alt="" width="366"><figcaption></figcaption></figure>

После того, как была выбрана телефония, вы сможете выбрать доступных для звонков сотрудников в проекте, поставив галочку напротив:

<figure><img src="/files/ovNGbT4s7UnqSC9Xsrpe" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Если клиента нет в проекте, с номером звонящего создается клиент типа Whatsapp
{% endhint %}

## График работы

<figure><img src="/files/7czn3rRTDsDODG5KJYpI" alt="" width="563"><figcaption></figcaption></figure>

График работы играет ключевую роль для чекбоксов "**Отключить виджет в нерабочее время**" и "**Не перезванивать клиентам автоматически при заказе в нерабочее время**":

<figure><img src="/files/blpmNgKGeX714HIvAbQU" alt="" width="563"><figcaption></figcaption></figure>

Соответственно при активированных чекбоксах "Отключить виджет" и "Не перезванивать автоматически", согласно графику, виджет не будет активен и (или) функция авто-перезвона не будет работать вне рабочего времени ваших сотрудников.\
Что является очень удобным, поскольку тогда ваши клиенты не будут теряться в догадках, почему они заказали звонок, а его не происходит.&#x20;

Чекбокс **"Выбрать удобное время для звонка"** также использует график работы: благодаря нему, система предложит клиенту ближайшее время для звонка, согласно установленному рабочему времени:

<figure><img src="/files/liWSNc32756lX6OW8gus" alt="" width="563"><figcaption></figcaption></figure>

Чтобы настроить график работы, достаточно воспользоваться данными настройками:

<figure><img src="/files/WG1vt4qlg0WNJcJDIDmG" alt="" width="487"><figcaption></figcaption></figure>

Вы можете настроить каждый будний день отдельно: для этого достаточно поставить ползунок в неактивное положение:

<figure><img src="/files/PTTxthR5cL9puhAqCqGf" alt="" width="476"><figcaption></figcaption></figure>

## Внешний вид

<figure><img src="/files/NMSKxJki1eovtRnEQeod" alt="" width="523"><figcaption></figcaption></figure>

Настройки внешнего вида можно подразделить на настройки кнопки и настройки самого виджета.&#x20;

### Настройки кнопки

1. Размер кнопки: доступен выбор большой, средней и маленькой кнопки виджета:

<div><figure><img src="/files/40nLHUXQ0Fzo91P2QJKB" alt=""><figcaption><p>Маленькая</p></figcaption></figure> <figure><img src="/files/t62ekICOna9gNk3d8KPx" alt=""><figcaption><p>Средняя</p></figcaption></figure> <figure><img src="/files/5MWUmEbGz7oP50KFSv3B" alt=""><figcaption><p>Большая</p></figcaption></figure></div>

2. Текст на кнопке

<figure><img src="/files/tFMkeUxbGjRq3zCujium" alt="" width="368"><figcaption></figcaption></figure>

Вместо иконки телефона можно установить любой необходимый текст:

<div><figure><img src="/files/RMGjYN7n8X5hWbHv5nhT" alt="" width="135"><figcaption></figcaption></figure> <figure><img src="/files/rIwwhEfRRiHtw8Q1Kd6A" alt="" width="140"><figcaption></figcaption></figure></div>

3. Цвет кнопки: с помощью обширной цветовой палитры выберите наиболее подходящий для вас цвет.

<div><figure><img src="/files/TUyB2RfNbMLgBFBwWOou" alt="" width="163"><figcaption></figcaption></figure> <figure><img src="/files/zM2r86yhXG8jrwjrcnyy" alt=""><figcaption></figcaption></figure></div>

4. Цвет текста кнопки: если вы заполнили пустое поле для текста, отображаемого на иконке виджета, то сможете изменить цветовую гамму текста:

<figure><img src="/files/5JFyG3v6wSDoR4BQbuNZ" alt="" width="239"><figcaption></figcaption></figure>

5. Анимация кнопки поможет украсить ваш сайт и сделать его более живым.

<figure><img src="/files/28uD5lmWGB3InO2EPCD3" alt="" width="280"><figcaption></figcaption></figure>

Как выглядит каждая из анимации для кнопки:

<div><figure><img src="/files/6iq7hyuRiN8R3dxdsthE" alt="" width="188"><figcaption><p>Волнистая</p></figcaption></figure> <figure><img src="/files/fh286wzV4dEoTylQuVww" alt="" width="188"><figcaption><p>Бешеная</p></figcaption></figure> <figure><img src="/files/7aazFsKyByEvTTZBN3sU" alt="" width="188"><figcaption><p>Пульсирующая</p></figcaption></figure></div>

### Настройки виджета

После того, как вы разобрались с настройками внешнего вида кнопки, давайте приступим к содержанию и виду самого виджета.

<figure><img src="/files/rfz1E77EDvt0ozBUM7T1" alt=""><figcaption></figcaption></figure>

Для начала можно заполнить текстовые поля внутри виджета:

1. Заголовок

<figure><img src="/files/lk8jRQkstQQmL5xl5rJA" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/L8jdgPfHjVLldPF8ITXP" alt="" width="333"><figcaption></figcaption></figure>

2. Подзаголовок:

<figure><img src="/files/D62s81BJQwFVb4hXLkLs" alt="" width="488"><figcaption></figcaption></figure>

<figure><img src="/files/lzg45EgagcNe1tWtuCD2" alt="" width="322"><figcaption></figcaption></figure>

{% hint style="info" %}
Данное поле является необязательным.
{% endhint %}

3. Текст виджета после запуска таймера:

<figure><img src="/files/o0izEZGBYx7SC5FGoZtN" alt="" width="371"><figcaption></figcaption></figure>

Текст отобразится в виджете только после того, как клиент нажмет на кнопку "Перезвоните мне" (или с любым другим текстом) во время отсчета таймера.

Таймер на виджете устанавливаете с помощью данной настройки:&#x20;

<figure><img src="/files/APoyLqnWPhwFAz3InTGW" alt="" width="156"><figcaption></figcaption></figure>

4. Текст на кнопке:

<figure><img src="/files/EvwfVGnYaEXi3UhrQoMv" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/iuyL1vXlxcL5a5xrD7EL" alt="" width="344"><figcaption></figcaption></figure>

Аналогично любому текстовому редактору, текст внутри виджета можно выровнять относительно центра, левого и правого края с помощью данных кнопок:

<figure><img src="/files/z8ucws0Z6k1010pPyJ99" alt="" width="248"><figcaption></figcaption></figure>

С помощью обширной цветовой палитры можно поиграть с тоном или градиентом для фона, цвета кнопок и даже установить узор:

<figure><img src="/files/OHl5QPwGOYJp7zpq7zQ2" alt="" width="563"><figcaption></figcaption></figure>

## Встраиваем виджет на сайт

После того, как вами были установлены все настройки и отредактирован внешний вид виджета по своему уникальному дизайну, нажмите на кнопку "Добавить виджет" внизу экрана:

<figure><img src="/files/n3BHqrMiDnWQKzFWqpsZ" alt="" width="563"><figcaption></figcaption></figure>

После чего вы перейдете в список уже готовых виджетов, где вам необходимо кликнуть по кнопке "Встроить код на сайт":

<figure><img src="/files/FBxcSOgO3i1nVjRdfesT" alt="" width="563"><figcaption></figcaption></figure>

После чего вам откроется модальное окно со скриптом:

<figure><img src="/files/bXl4tDT1gNvrvivwpR7L" alt="" width="563"><figcaption></figcaption></figure>

Скопируйте скрипт и перейдите в настройки сайта, домен которого указали в настройках виджета:

<figure><img src="/files/LogussseEmQ9hIt7D4n3" alt=""><figcaption></figcaption></figure>

После чего вставьте скрипт в HTML-код head:

<figure><img src="/files/vPFTHi7MobfkLc9M3EBL" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Чтобы встроить виджет на сайт тильды, также скопируйте скрипт виджета с помощью кнопки "Встроить код на сайт", после чего устанавливаете его на сайт.&#x20;
{% endhint %}

Готово! На этом настройка виджета и его установка на сайт завершена!&#x20;

## Коллбеки

Какие коллбеки существуют:

1. widget\_callback\_later widget\_id: 1 at 23.04.2024 18:00 - это отложенный звонок, где <mark style="color:green;">**widget\_callback\_later**</mark> - тело колбека; <mark style="color:yellow;">**widget\_id: 1 at 23.04.2024 18:00**</mark> - ID виджета, а также дата и время, когда необходимо осуществить звонок клиенту
2. widget\_callback\_need\_call widget\_id: 1 at 23.04.2024 18:00 - клиенту необходим звонок, где\ <mark style="color:green;">**widget\_callback\_need\_call**</mark> - тело колбека; <mark style="color:yellow;">**widget\_id: 1 at 23.04.2024 18:00**</mark> - ID виджета, а также дата и время, когда необходимо осуществить звонок клиенту
3. widget\_callback\_now widget\_id: 1 - колбек о необходимости звонка клиенту в данное время, где <mark style="color:green;">**widget\_callback\_now**</mark> - тело колбека;  <mark style="color:yellow;">**widget\_id: 1**</mark>  - ID виджета;
4. widget\_callback\_need\_call - колбек о необходимости звонка. Приходит, если включена настройка:

<figure><img src="/files/i4VyRkKOtSUYHbQFkrgL" alt=""><figcaption></figcaption></figure>

5. widget\_callback\_now - колбек текущий звонок.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/vidzhety-dlya-saita/vidzhet-obratnoi-svyazi.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
