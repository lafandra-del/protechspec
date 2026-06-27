> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/main/admin/employees.md).

# Сотрудники

## Что такое роль в Salebot?

В рамках одного проекта могут работать несколько сотрудников, каждому из которых может быть назначена своя Роль.&#x20;

**Роль** - это набор прав, который даёт возможность пользователю просматривать и изменять разные разделы приложения.

По умолчанию можно использовать три роли - **Администратор**, **Редактор** и **Оператор**. Права данных ролей нередактируемые. &#x20;

<div data-with-frame="true"><figure><img src="/files/UVqQChviNyTNDwaZQ4Bd" alt=""><figcaption></figcaption></figure></div>

Пользователь с правами Администратора или Создателя проекта может создать новую **Настраиваемую роль**.

По **распределению прав** можно отметить следующее:

**Редактор**: Создание редактирование воронок, в клиентах есть возможность переотправлять сообщения с ошибкой. Создание и редактирование сделок в срм. Создание редактирование задач, списков, рассылок, минилендингов. Доступ к аналитике.

**Оператор**: Имеет возможность создание редактирование сделок в срм. Создание редактирование задач, списков, рассылок. Доступ к аналитике.

**Кастомная или Настраиваемая роль**: По умолчанию видно только своих клиентов. Удалять клиентов возможности нет. Есть возможность создать задачу и редактировать ее. И тоже самое с рассылками.

**Администратор**: может все

Также существует роль "**Владелец проекта**":

<div data-with-frame="true"><figure><img src="/files/8PfkVZlmgARsGRXeT0VE" alt=""><figcaption></figcaption></figure></div>

Владелец проекта обладает всеми правами администратора, при этом Владельца проекта нельзя удалить из проекта другим администраторам, Владельцу проекта нельзя изменять права доступа в проекте и только Владелец проекта может назначить другого владельца.

### Редактировать сотрудника

Чтобы редактировать информацию о сотруднике или его контактные данные, перейдите в раздел "Сотрудники" и найдите кнопку дополнительных действий:

<div data-with-frame="true"><figure><img src="/files/aL79HFuhQnTAU7kafNcm" alt=""><figcaption></figcaption></figure></div>

При клике на кнопку откроется дополнительные действия с сотрудником "Редактировать" и "Удалить". Нажмите "Редактировать":

<figure><img src="/files/YEIfFN3uoQoWkTikLRjU" alt=""><figcaption></figcaption></figure>

Вам откроется модальное окно, где вы можете редактировать имя сотрудника, его роль, описание.

<div data-with-frame="true"><figure><img src="/files/i5jxuaeNqayFf5udlfrg" alt="" width="563"><figcaption></figcaption></figure></div>

Также добавили возможность в настройки сотрудника добавили указать дополнительные данные:

\- email

\- Телефон

\- Должность

и до трех дополнительных полей (при клике на кнопку "+ Добавить поле").

Эти данные можно получить в калькуляторе с помощью функции get\_operator\_info(field\_name)

{% hint style="info" %}
Подробнее о работе с методом калькулятора [рассказали здесь.](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-sotrudnikami.md#poluchit-informaciyu-o-sotrudnike)
{% endhint %}

### Как создать новую роль

Создать **“настраиваемую роль”** может Владелец проекта или Администратор и далее назначить эту роль другим пользователям (сотрудникам):

<div data-with-frame="true"><figure><img src="/files/kTUKH5iwqbitGWtbIsL3" alt=""><figcaption></figcaption></figure></div>

Для новой роли может быть задано любое имя.

Чтобы создать роль перейдите во вкладку "Роли":

<div data-with-frame="true"><figure><img src="/files/22FlEU1S5WAkU1CrpQeC" alt="" width="563"><figcaption></figcaption></figure></div>

Меню предусматривает основные разделов, доступы к которым можно настроить при создании роли:

<div data-with-frame="true"><figure><img src="/files/he7xfkVqUYbxvMAZN7eT" alt=""><figcaption></figcaption></figure></div>

Если запретить доступ к какому-либо разделу, то он перестанет отображаться в основном меню и в него нельзя будет попасть.&#x20;

Например, для стандартной роли Оператора недоступны разделы конструктора чат-бота, АИ-ассистента, онлайн-курсов и настроек проекта.&#x20;

<div data-with-frame="true"><figure><img src="/files/CFuWKLNBic2nzeeWUQ7Y" alt="" width="326"><figcaption></figcaption></figure></div>

Настроить разделы можно 3 способами: недоступно, только просмотр, просмотр и редактирование:

<div data-with-frame="true"><figure><img src="/files/rHCchoZj8sBf7I4KVxi8" alt=""><figcaption></figcaption></figure></div>

**Недоступно** - это значит полностью ограничить доступ к просмотру и редактированию выбранного раздела&#x20;

**Только просмотр** - это позволит только просматривать раздел, без возможности вносить каких-либо изменений&#x20;

**Просмотр и редактирование** - это полный доступ к разделу

При этом важно отметить, что доступ на просмотр или просмотр/редактирование может быть выдан в разрезе листов проекта:

В разделе "Аналитика" можно настроить кастомную роль таким образом, чтобы сотруднику были доступны только определенные вкладки:

<div data-with-frame="true"><figure><img src="/files/Kfwt4FthOKLbEEnU39gN" alt=""><figcaption></figcaption></figure></div>

### Раздел: Задачи

<div data-with-frame="true"><figure><img src="/files/P4MjCbH482pgAEhCO4m4" alt=""><figcaption></figcaption></figure></div>

При активном состоянии тумблера **“Просмотр чужих задач”** пользователь сможет видеть не только свои задачи, но и задачи, назначенные другим пользователям, а также задачи без пользователей (свободные задачи).&#x20;

При неактивном состоянии тумблера **“Просмотр чужих задач”** пользователь сможет видеть только свои задачи. При активном состоянии тумблера “Редактирование задач” пользователь сможет редактировать и удалять все доступные задачи.

### Раздел: Клиенты

<div data-with-frame="true"><figure><img src="/files/tYsq6p1c8Ob3XuK511Li" alt=""><figcaption></figcaption></figure></div>

При активном состоянии чекбокса "М**ожет удалять сообщения**" пользователю будет доступна возможность удалять сообщения в карточке клиента бота

При активном состоянии чекбокса **“Просмотр чужих клиентов”** пользователь сможет видеть своих клиентов и клиентов других пользователей.

При активном состоянии чекбокса **“Просмотр свободных клиентов”** пользователь сможет видеть своих и свободных клиентов.&#x20;

При активном состоянии чекбокса **“Просмотр ID мессенджера”** пользователь сможет видеть ID мессенджера клиента в карточке клиента:

<div data-with-frame="true"><figure><img src="/files/CuAfGpbqMMoOXDStpP2J" alt="" width="375"><figcaption></figcaption></figure></div>

При активном состоянии чекбокса **“Взаимодействие с клиентами”** пользователь сможет: писать сообщения клиентам, редактировать, удалять переписку, редактировать данные клиента (фото, имя и т.п.), блокировать, удалять клиента, назначать себе клиента, передавать, перемещать клиента.

При неактивном состоянии чекбокса **“Взаимодействие с клиентами”** действия, направленные на коммуникацию с клиентом, будут недоступны.

При активном состоянии чекбокса **"Ограничить выгрузку базы csv"** пользователю будет недоступна возможность выгрузки данных:

### Раздел: Переменные

<div data-with-frame="true"><figure><img src="/files/6LmXHvnhRUYNHheHP9o2" alt="" width="375"><figcaption></figcaption></figure></div>

При активном состоянии чекбокса **“Просмотр клиентских переменных”** пользователь сможет видеть клиентские переменные:

<div data-with-frame="true"><figure><img src="/files/CczZ5Y6aUDjR7JaYFs0o" alt=""><figcaption></figcaption></figure></div>

Аналогично работает чекбокс **“Просмотр переменных сделки”**.&#x20;

Активация/деактивация отображения переменных влияет на отображение переменных в других разделах приложения.

## Как изменить владельца проекта

Чтобы изменить владельца проекта, перейдите в настройки проекта:

<div data-with-frame="true"><figure><img src="/files/PBvA9ZKRJj6jLpr8Bw73" alt="" width="304"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Переназначить владельца проекта может только текущий владелец.&#x20;
{% endhint %}

Далее во вкладке "Основные настройки" найдите строку "Владелец проекта":

<div data-with-frame="true"><figure><img src="/files/jNA59c7QYvVKLuEwKm6p" alt=""><figcaption></figcaption></figure></div>

Кликните по строке"Владелец проекта" и выберите из выпадающего списка email сотрудника, который будет назначен в проекте владельцем:

<div data-with-frame="true"><figure><img src="/files/Tgio6QIPpJgwO7r4YwlG" alt=""><figcaption></figcaption></figure></div>

Затем обязательно нажмите на "Готово" внизу экрана:

<div data-with-frame="true"><figure><img src="/files/9sFOHZobWFPKLL0HkM57" alt=""><figcaption></figcaption></figure></div>

После чего страница обновится и у бывшего владельца проекта пропадет строка для изменения владельца:

<div data-with-frame="true"><figure><img src="/files/HmgTHcktdnxuJqd43P3X" alt=""><figcaption></figcaption></figure></div>

## Назначение ролей пользователю (сотруднику)

После создания роли на нее можно назначить любого сотрудника проекта, при этом в зависимости от полномочий и прав доступа настроенной роли, пользователь сможет просматривать только те разделы приложения, которые были заранее определены.

<div data-with-frame="true"><figure><img src="/files/ExkAGSwkG0ARxcnZnzXV" alt="" width="563"><figcaption></figcaption></figure></div>

<figure><img src="/files/SQIngwuIsHupGU835k67" alt=""><figcaption></figcaption></figure>

Чтобы назначить роль вновь добавляемому сотруднику, выберите роль в модальном окне:

<figure><img src="/files/33SJEFp0GJrxyBua4qOZ" alt="" width="563"><figcaption></figcaption></figure>

Роль также можно назначить уже добавленному в проект пользователю через редактирование профиля сотрудника:

<figure><img src="/files/PsmzJJacBGY7wcDpGojo" alt=""><figcaption></figcaption></figure>

Далее выбрать необходимую роль:

<figure><img src="/files/ykYZC9PZrW4CFjKLdoBZ" alt=""><figcaption></figcaption></figure>

**Готово!**

### **Удаление ролей**

Прежде, чем удалить созданную вами роль, необходимо отменить ее привязку к сотрудникам: это делается аналогично настройке ролей для сотрудников в их профиле в проекте.&#x20;

Далее перейдите в карточку роли и нажмите кнопку Удалить.

<figure><img src="/files/j1VYu7O6tInVncRtYO1f" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
Внимание!&#x20;

Удаление созданной вами роли невозможно, если она назначена кому-либо из сотрудников.&#x20;
{% endhint %}

<figure><img src="/files/wBkd4B4C7ar8fBNXDZVr" alt=""><figcaption></figcaption></figure>

## Автоматизация

С помощью вкладки "Автоматизация" в разделе "сотрудники" вы можете настроить автораспределение клиентов в проекте по добавленным сотрудникам:

<figure><img src="/files/sWaOXH4ObktvwzBzf67M" alt=""><figcaption></figcaption></figure>

Чтобы включать автораспределение клиентов, необходимо активировать чекбокс "Включать":

<figure><img src="/files/ZISfmVHAwDgqTXDQEneI" alt=""><figcaption></figcaption></figure>

После активации чекбокса автораспределение клиентов по операторам заработает в проекте. Далее вы можете выбрать следующие настройки:

1. Рабочее время:

<figure><img src="/files/B4tegvYaf01ASginzlRN" alt=""><figcaption></figcaption></figure>

Для работы функции распределения может быть выбран круглосуточный период, то есть непрерывное автораспределение между операторами:

<figure><img src="/files/Np9oIhbXeBQf8nAvNX98" alt=""><figcaption></figcaption></figure>

Тогда вам не понадобится настраивать рабочий промежуток для работы распределения.&#x20;

Также вы можете установить рабочее время, выбрав необходимые интервалы:

<figure><img src="/files/VJt1R20BexFqA0xhlnvc" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
В разделе "Аналитика" во вкладке "Операторы" статистические данные "Среднее время ответа по дням" учитывается только по рабочему времени сотрудника.&#x20;

Подробнее о статистических данных по операторам читайте в статье "[Аналитика Salebot](broken://pages/wYAWtCPmmg5M9uDmeUPE#operatory)".&#x20;
{% endhint %}

2. Настройки операторов

<figure><img src="/files/53cacLgcO0GfMmwJ2udl" alt="" width="563"><figcaption></figcaption></figure>

Данное меню настроек поможет выбрать, каким образом будет осуществляться автораспределение клиентов, а также добавить иные необходимые настройки: например, вы можете установить, чтобы клиент не распределялся по операторам, если ответил бот; снять оператора со смены по окончанию рабочего дня и прочее в зависимости от потребностей вашего проекта.&#x20;

## Видеоурок "Как работать с ролями"

{% embed url="<https://youtu.be/mo19XGzEDR8>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/main/admin/employees.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
