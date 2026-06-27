> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/main/admin/settings.md).

# Настройки проекта

В настройках проекта можно выбрать приходящие уведомления, настроить работу с воронками и ботом, установить переменные и константы, переименовать проект и многое другое.&#x20;

<div data-with-frame="true"><figure><img src="/files/TJtdCyOvfhGbGf8vUhpn" alt="" width="299"><figcaption></figcaption></figure></div>

Как это сделать, рассказали ниже.

## Основные настройки

<div data-with-frame="true"><figure><img src="/files/suYXmXQsnFtuGy4m6SgX" alt=""><figcaption></figcaption></figure></div>

В основных настройках проекта пользователь может изменить:

1. название проекта;
2. часовой пояс;
3. владельца проекта;
4. установить домен для ссылок в боте:

<div data-with-frame="true"><figure><img src="/files/QIsr91pj7PYENRGlqaxA" alt="" width="563"><figcaption></figcaption></figure></div>

Установка собственного домена понадобится в том случае, если необходимо, чтобы прокси ссылка была на вашем домене, а не на домене Salebot. Это необязательная настройка.

5. webhook URL\
   Понадобится для того, чтобы получать события из сторонних сервисов.&#x20;

А также в основных настройках проекта можно активировать чекбоксы:

<div data-with-frame="true"><figure><img src="/files/jbV3PCIFyUqiPU19Hjnq" alt="" width="563"><figcaption></figcaption></figure></div>

* Автоматически принимать лиды на первый этап воронки\
  Данный чекбокс будет сразу формировать карточки сделок на первом этапе воронки в SalebotCRM.
* Запретить операторам отправлять файлы\
  При выборе данной настройки сотрудники вашего проекта с ролью Оператор (либо иной настроенной вручную ролью) не смогут отправлять файлы в диалогах
* Клиенты, ожидающие ответа, всегда сверху\
  Отобразит клиентов, которым вы или ваши сотрудники еще не успели ответить, вверху всего списка
* Не проверять формат post-json параметров\
  Для настройки в боте
* Бот включен\
  Чекбокс для включения/выключения бота в проекте

## Callback's

В настройках проекта можно настроить, какие колбеки вы хотите получать в Salebot:

<div data-with-frame="true"><figure><img src="/files/pqHTy666KtSSNjGas1h2" alt=""><figcaption></figcaption></figure></div>

{% hint style="success" %}
Callback - это системное уведомление, которое поможет отслеживать события в Salebot, не проверяя каждый раз списки, метки и воронки в CRM, что значительно сэкономит ваше время.&#x20;
{% endhint %}

{% hint style="info" %}
В данном разделе настраиваются системные уведомления только из разделов Сейлбот. Чтобы увидеть, какие колбеки, например, приходят по платежным системам, мессенджерам и по другим интеграциям, необходимо ознакомиться с соответствующей статьей документации.&#x20;
{% endhint %}

Можно настроить колбеки для уведомлений:

1. Добавление/удаление списков и меток
2. Действия с задачами: создание, удаление, редактирование и завершение.

Например, при создании задачи, привязанной к определенному клиенту, в разделе "Клиенты" с ним в диалоге будет появляться сообщение с текстом: new\_task\_added\_callback task\_id:#{[task.id](https://vk.com/away.php?to=http%3A%2F%2Ftask.id\&post=-155867893_10927\&cc_key=)}, task\_name:#{[task.name](https://vk.com/away.php?to=http%3A%2F%2Ftask.name\&post=-155867893_10927\&cc_key=)}

<div data-with-frame="true"><figure><img src="/files/Pg59JMVMsBl3NxVQMC4p" alt="" width="563"><figcaption></figcaption></figure></div>

А при редактировании задачи, привязанной к определенному клиенту, в диалоге с клиентом будет появляться комментарий с текстом: "Задача была отредактирована #{current\_user.display\_name}: edit\_task\_callback task\_id:#{[task.id](https://vk.com/away.php?to=http%3A%2F%2Ftask.id\&post=-155867893_10927\&cc_key=)}, task\_name:#{[task.name](https://vk.com/away.php?to=http%3A%2F%2Ftask.name\&post=-155867893_10927\&cc_key=)}", где

<div data-with-frame="true"><figure><img src="/files/JtjEonmkvgoRjUml9kql" alt=""><figcaption></figcaption></figure></div>

3. Изменение ответственного у клиента

Колбек включает в себя ID сделки, а также имя ответственного, на которого сменили предыдущего вашего сотрудника:

<div data-with-frame="true"><figure><img src="/files/CxdZa9hQiQ1Wzg7wke6h" alt="" width="563"><figcaption></figcaption></figure></div>

4. Удаление сделки

Чтобы видеть все, что происходит в CRM, также наблюдайте за удалением сделок в ваших воронках, чтобы не пропустить ничего важного:

<div data-with-frame="true"><figure><img src="/files/rMqMftI8kJjbAolMJWGD" alt="" width="365"><figcaption></figcaption></figure></div>

5. Перемещение в сделки в системное состояние

В CRM существуют системные состояния воронки, в которые можно переместить сделку:

<div data-with-frame="true"><figure><img src="/files/VNQXKU9BJmKqTsQ2qsgM" alt=""><figcaption></figcaption></figure></div>

Можно установить отправку колбеков при перемещении сделок по состояниям: "удалить сделку", "сделка провалена", "успешная сделка", "в архив". Тогда в диалоге с клиентом будет приходить уведомление следующего вида:

<div data-with-frame="true"><figure><img src="/files/d6kmqqNLs7XZPfrus9eH" alt="" width="563"><figcaption></figcaption></figure></div>

### Настройка колбеков при переходе между этапа CRM

<div data-with-frame="true"><figure><img src="/files/vgBHyyI586ZoxBHvfFgj" alt="" width="563"><figcaption></figcaption></figure></div>

При нажатии на "Настройку колбеков при переходе" откроется модальное окошко со всеми воронками, существующими в проекте:

<div data-with-frame="true"><figure><img src="/files/t318nWW691gJl8CIKVhZ" alt="" width="563"><figcaption></figcaption></figure></div>

Данная настройка поможет активировать бота при переходе клиента в определенное состояние воронки. Для этого достаточно выбрать либо всю воронку (тогда любое перемещение сделки клиента по воронке будет активировать бота) либо только переход в определенное состояние:

<div data-with-frame="true"><figure><img src="/files/ZO5CzdGeEITu9kiODTCZ" alt=""><figcaption></figcaption></figure></div>

Теперь при смене состояния сделки (в автоматическом или ручном режиме) из любого места на сайте сгенерируется уведомление, которое может запустить бота.

{% hint style="info" %}
Уведомление умеет вид: **crm\_state\_changed Имя воронки:Название этапа**
{% endhint %}

Также в карточке клиента появится переменная **callback\_query\_id**, в которой будет сохранен идентификатор сделки, для которой отправлено уведомление:

<div data-with-frame="true"><figure><img src="/files/bglsPqmjvb6P6fH0eBGI" alt=""><figcaption></figcaption></figure></div>

Чтобы запустить бота на это событие, необходимо указать текст уведомления в поле  Условие стрелки или любого блока с условием (блок первостепенной проверки условия, не состояние с условием).&#x20;

## Константы

{% hint style="danger" %}
Обращаем внимание!

Необходимо учитывать лимиты по переменным и константам в проекте:

1. Максимальное количество шаблонных переменных — 100;
2. Название шаблонной переменной не может превышать 100 символов;
3. Максимальное количество констант проекта — 50;&#x20;
4. Название константы не может превышать 100 символов;
5. Значение константы не может превышать 5000 символов.
   {% endhint %}

Константа проекта - это постоянная неизменяемая переменная. Например, она может понадобится для работы с оплатами в боте.&#x20;

<div data-with-frame="true"><figure><img src="/files/g2swEmQ1vHkb82hfyDtm" alt=""><figcaption></figcaption></figure></div>

Чтобы добавить константы проекта, нажмите на иконку карандаша. Тогда откроется модальное окно, где вы сможете ввести название переменной и ее значение:

<div data-with-frame="true"><figure><img src="/files/yjK9fB4E3zsbowWJk8HX" alt=""><figcaption></figcaption></figure></div>

Далее вам достаточно будет ввести переменную:

<div data-with-frame="true"><figure><img src="/files/ggB9TaC78PB8jMsIwJPx" alt=""><figcaption></figcaption></figure></div>

Тогда в диалоге с клиентом бот вытащит значения именно из константы проекта:

<div data-with-frame="true"><figure><img src="/files/3EZA4nzsIOgPqyOy28L3" alt="" width="410"><figcaption></figcaption></figure></div>

## Переменные

{% hint style="danger" %}
Обращаем внимание!

Необходимо учитывать лимиты по переменным и константам в проекте:

1. Максимальное количество шаблонных переменных — 100;
2. Название шаблонной переменной не может превышать 100 символов;
3. Максимальное количество констант проекта — 50;&#x20;
4. Название константы не может превышать 100 символов;
5. Значение константы не может превышать 5000 символов.
   {% endhint %}

Назначенные переменные в настройках проекта также можно использовать внутри вашего чат-бота (в т.ч. [чат-бота с ИИ](/chatbots/ai_assistant.md)).&#x20;

<div data-with-frame="true"><figure><img src="/files/wT2n0oKBySIbIXonOh7j" alt=""><figcaption></figcaption></figure></div>

Вы можете вручную вводить переменные в настройках проекта, а можете воспользоваться назначением переменной в боте.&#x20;

{% hint style="warning" %}
**Отличие переменных и констант**

1. Переменные можно менять через ботов, тогда как из константы можно только брать значение.
2. Значение переменных одинаково для всех пользователей. Значит, если вы через бота поменяете значение переменной, то оно изменится для всех клиентов,  в т.ч. в настройках проекта. Константу так изменить нельзя.&#x20;
3. Значение константы можно поменять только уникально для одного клиента, соответственно, в настройках проекта константа останется с ранее установленным значением без изменений.
4. Если обратится в боте к переменной через конструкцию "project.", то можно изменить значение переменной.
   {% endhint %}

{% hint style="success" %}
Наглядный пример работы с переменной через бота и конструкцию project. вы можете прочитать в статье "[Чат-бот с ИИ для онлайн-записи](/chatbots/ai_assistant/online_booking.md)".&#x20;
{% endhint %}

### **Как правильно назначать переменные/константы в настройках проекта**

{% hint style="danger" %} <mark style="color:red;">**ОБРАЩАЕМ ВНИМАНИЕ!**</mark>

Нельзя в значении переменной/константы В НАСТРОЙКАХ ПРОЕКТА использовать интерполяцию переменных!

Интерполяция - это назначение одной переменной с помощью другой через конструкцию #{}.&#x20;
{% endhint %}

<mark style="color:red;">**НЕПРАВИЛЬНО:**</mark>

<div data-with-frame="true"><figure><img src="/files/7lqg5MU5agoxCqk3V2iN" alt=""><figcaption></figcaption></figure></div>

<mark style="color:green;">**ПРАВИЛЬНО:**</mark>

При назначении переменных в настройках проекта можно использовать различные значения:

<div data-with-frame="true"><figure><img src="/files/1nGI30UIypaub2bQkz7b" alt=""><figcaption></figcaption></figure></div>

Например, переменные со скриншота выше были закешированы в проекте через бота с помощью блоков конструктора и установленных функций:

<div data-with-frame="true"><figure><img src="/files/muLZf9C8IHnscJUTCbc2" alt=""><figcaption></figcaption></figure></div>

{% hint style="info" %}
Функция get\_info\_for\_booking() работает только при настроенном разделе "Услуги" для онлайн-записи и берет значения по доступным свободным слотам для записи.&#x20;
{% endhint %}

Обращаем внимание, что переменная кешируется в настройки проекта через конструкцию "project.":

<div data-with-frame="true"><figure><img src="/files/MKpiOpu0vvD6tCwZssIw" alt="" width="563"><figcaption></figcaption></figure></div>

Также вы можете добавить переменную в настройках проекта, кликнув по иконке карандашика:

<div data-with-frame="true"><figure><img src="/files/cepH1qeGBbagAEIaNWNU" alt=""><figcaption></figcaption></figure></div>

Тогда откроется модальное окно с уже существующим списком переменных, где необходимо кликнуть на "Добавить переменную":

<div data-with-frame="true"><figure><img src="/files/OXp2ULaESZlPyxlDAnqq" alt=""><figcaption></figcaption></figure></div>

Причем название переменной вы можете задать по своему усмотрению, избегая наименования [системных переменных:](/chatbots/peremennye-i-funkcii/peremennye.md#sluzhebnye-peremennye)&#x20;

<figure><img src="/files/4tSNZK2qzbUlLyw1Ra90" alt=""><figcaption></figcaption></figure>

### Шаблоны переменных

С помощью функции "Шаблоны переменных проекта" вы сможете быстро собрать переменные вне зависимости от их типов.&#x20;

Чтобы собрать переменную по шаблону, кликните по одноименной кнопке:

<div data-with-frame="true"><figure><img src="/files/9YLS9csujoAJle6yleDj" alt=""><figcaption></figcaption></figure></div>

Вам откроется модальное окно, в котором вы увидите пустое поле для названия переменной и выпадающий список с типом:

<div data-with-frame="true"><figure><img src="/files/r6Itktgth1RQdhM157dI" alt=""><figcaption></figcaption></figure></div>

Если вы выбрали тип переменной "**Список**", то вы можете указать возможные значения для переменной:

<div data-with-frame="true"><figure><img src="/files/1uQVUJDfT5V0my49chbq" alt=""><figcaption></figcaption></figure></div>

Чтобы добавить несколько значений:

Шаг 1: введите название переменной;

Шаг 2: введите значение1 для переменной;

Шаг 3: нажмите на плюс в строке со значением: после того, как вы нажмете плюс для одного из значений переменной, появится плашка под полем с введенными вами данными для переменной:

<div data-with-frame="true"><figure><img src="/files/5uPlYDq661J4FPRxb8N5" alt=""><figcaption></figcaption></figure></div>

Шаг 4. Пропишите следующее значение переменной и снова нажмите плюс: кликать на плюс необходимо после каждого ввода одного из значений переменой.&#x20;

Шаг 5. Кликните "Создать": тогда переменная добавится внизу модального окна:

<div data-with-frame="true"><figure><img src="/files/5Phjpsq4euoui25JaoZP" alt="" width="563"><figcaption></figcaption></figure></div>

## Переписка

Данный раздел закроет все необходимые моменты при работе с чат-ботами:

<div data-with-frame="true"><figure><img src="/files/w42CSx6x7T9TnOLlJtiw" alt=""><figcaption></figcaption></figure></div>

1. Можно указать свой адрес/несколько адресов почты, чтобы получать заказы/заявки на свою почту, не пропуская ни одного события.
2. При необходимости, существует настройка автоматического ответа на первое сообщение пользователя в окне онлайн-чата или мессенджере с кнопками.

{% hint style="info" %}
Подробнее в статье "[Первое сообщение в мессенджерах](broken://pages/-M1G8JhiblHfVMG4OKwP)"
{% endhint %}

3. Также можно подстраховать себя, чтобы бот никогда не молчал: установите текст сообщения, если бот не знает ответа пользователя.&#x20;
4. Также, активируя чекбоксы для уведомлений, вы сможете видеть клиентов, написавших вам в бот, даже если вы в это время находитесь в другом проекте Salebot.&#x20;

### Дублирование сообщений

Также в настройках проекта в разделе Переписка можно установить дублирование сообщений на почту ваших учеников и клиентов:

<div data-with-frame="true"><figure><img src="/files/bjtGKETIFxlS7DVwWup4" alt=""><figcaption></figcaption></figure></div>

Как это работает?

Если ученик / клиент напишет вам в онлайн-чате, а после сообщение не будет им прочитано, то при установке данной настройки спустя заданный промежуток времени ученику / клиенту придет сообщение на почту.&#x20;

{% hint style="warning" %}
Важно! Чтобы данная функция работала необходим подключенный и авторизованный email-бот.
{% endhint %}

{% hint style="info" %}
Как подключить email-бот, рассказали в статье "[Email-рассылки](/broadcasts/email.md)".
{% endhint %}

&#x20;Чтобы дублирование сообщений на почту работало, необходимо установить интервал, через который непрочитанное учеником / клиентом сообщение будет продублировано на почту:

<div data-with-frame="true"><figure><img src="/files/7X0skzxW839P2RrUo6hW" alt=""><figcaption></figcaption></figure></div>

Если в проекте подключено несколько email-ботов, то можно будет выбрать, от какого именно будет направляться продублированное сообщение:

<div data-with-frame="true"><figure><img src="/files/7hIoCzlLY1urXsFOtPsS" alt=""><figcaption></figcaption></figure></div>

## Интеграции

В настройках проекта можно активировать два чекбокса для последующей интеграции двух сервисов для Аналитики:&#x20;

<div data-with-frame="true"><figure><img src="/files/wFgqnQfJqdLy4fI18eOZ" alt=""><figcaption></figcaption></figure></div>

{% hint style="info" %}
Подробнее о настройках интеграции, читайте в статьях "[Lokta](/analitika-dlya-biznesa/integracii-dlya-analitiki/loktar.md)r", "[Втаргете](/analitika-dlya-biznesa/integracii-dlya-analitiki/vtargete.md)".&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/main/admin/settings.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
