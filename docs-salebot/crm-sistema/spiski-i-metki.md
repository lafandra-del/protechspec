> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/crm-sistema/spiski-i-metki.md).

# Списки и метки

В разделе "Списки"  вы можете создавать, редактировать и использовать кастомные списки клиентов для дальнейшей автоматизации. Добавление пользователей в список можно настроить автоматически через шаги бота — при выполнении определённых условий или действий пользователя. Списки могут использоваться как для фильтрации и сегментации клиентов внутри одного проекта, так и для экспорта данных — вы можете выгрузить список в файл и загрузить в другой проект Salebot.

<div data-with-frame="true"><figure><img src="/files/NmF7wDcy8cUu4TdV4aIw" alt=""><figcaption></figcaption></figure></div>

#### Преимущества использования списков:

* Автоматическое пополнение или удаление клиентов из списков через логику бота;
* Переносимость: списки можно экспортировать и импортировать между проектами;
* Отправление рассылок или определенных сообщений из блока воронки по фильтрованным спискам клиентов.

Использование списков упрощает работу с сегментами аудитории и делает автоматизацию взаимодействия с клиентами более точной и эффективной.

## Как создать список

Списки создаются в одноименном разделе во вкладке "Списки":

<div data-with-frame="true"><figure><img src="/files/F1PGv6fpUZdJld5rUD4O" alt=""><figcaption></figcaption></figure></div>

Кликните по кнопке "Создать списки", чтобы открылось окно с полями ввода, где нужно прописать название списка и при необходимости выбрать папку (если они уже есть), в который нужно добавить список:

<div data-with-frame="true"><figure><img src="/files/rLbb5XTDu2EfFrF1D6Zq" alt=""><figcaption></figcaption></figure></div>

В разделе Списки можно отсортировать списки по ID списков или по алфавиту (по названию):

<div data-with-frame="true"><figure><img src="/files/NEvrNlMMKCdjzuAoj5Jc" alt=""><figcaption></figcaption></figure></div>

Удобство списков клиентов заключается в гибкости возможностей действий над списками. Например, добавление клиента в несколько списков одновременно.

Списки можно группировать в папки, можно отредактировать наименование списка, удалить список (при этом клиенты останутся в базе) или удалить из проекта клиентов указанного списка.

<div data-with-frame="true"><figure><img src="/files/9m4acAwacr4gFBbglaFb" alt=""><figcaption></figcaption></figure></div>

Добавление и удаление из списка работают с набором фильтров, что позволяет добавлять/удалять клиентов используя тип фильтра как из формы, так и из файла. Подробнее [ниже](#kak-vruchnuyu-rabotat-so-spiskami).

Чтобы просмотреть клиентов из списка, нажмите на список, чтобы открылось правое меню, затем кликните на кнопку "К списку клиентов":

<div data-with-frame="true"><figure><img src="/files/kmz7KAhvizTPtTzS5QVX" alt="" width="563"><figcaption></figcaption></figure></div>

Тогда откроется новое окно из раздела "Клиенты", где вы увидите пользователей, находящимися в списке:

<div data-with-frame="true"><figure><img src="/files/N50Bcxgj5vsLI8nRUF1f" alt="" width="375"><figcaption></figcaption></figure></div>

## Как автоматизировать работу со списками

Можно автоматически добавлять, удалять и перемещать клиентов в списки при работе чат-бота.

Набор команд — действий над списками — вы найдете в любом блоке конструктора:

<div data-with-frame="true"><figure><img src="/files/Y7TGeuwgVIG8cBwhKdne" alt=""><figcaption></figcaption></figure></div>

При включении раздела Действия станет возможным выбрать действия над списками:

<div data-with-frame="true"><figure><img src="/files/NbtryJYkCwQ1G5w4Fl4t" alt="" width="563"><figcaption></figcaption></figure></div>

После выбора действия станет возможным выбор конкретного списка, с которым необходимо произвести указанное действие. В одном блоке можно указать несколько разных действий:

<div align="center" data-with-frame="true"><figure><img src="/files/j8SBkUZOkewbCVeCTaPI" alt="" width="563"><figcaption></figcaption></figure></div>

Количество действий в одном блоке не ограничено:

<div data-with-frame="true"><figure><img src="/files/5FKBGYsMayqLE78UexG2" alt="" width="563"><figcaption></figcaption></figure></div>

Выполняются команды по порядку следования в настройках блока.

### **Проверка наличия человека в списке**

<mark style="color:green;">**Для проверки наличия клиента**</mark> в списке можно использовать функцию  <mark style="color:green;">**`inlist(номер_списка)`**</mark> в поле <mark style="color:green;">**Переменная для сравнения**</mark> в блоках и стрелках

Результат выполнения функции- булево значение (True или False).

`inlist(номер списка) == True  -` клиент ЕСТЬ в списке или

`inlist(номер списка) == False -` клиента НЕТ в списке.

<div data-with-frame="true"><figure><img src="/files/jBme7kHXIuL90wN4MSJR" alt=""><figcaption></figcaption></figure></div>

Номер списка можно найти, кликнув по необходимому списку. Тогда откроется правое меню с информацией о списке:

<div data-with-frame="true"><figure><img src="/files/hpkbuBN3c58uJgeW2Ods" alt=""><figcaption></figcaption></figure></div>

Тогда блоки отработаются так:

<div data-with-frame="true"><figure><img src="/files/jCuXEgSCig0GnNlO3mt4" alt=""><figcaption></figcaption></figure></div>

### Другие функции работы со списками:

Дальнейшие команды вводятся в поле "Калькулятор" любого блока:

<div data-with-frame="true"><figure><img src="/files/MdIG6j8sYh4B2MoXsU69" alt=""><figcaption></figcaption></figure></div>

**Добавить в список**

`add_to_list(номер списка)`

<div data-with-frame="true"><figure><img src="/files/T4grZNrFKmWxaqQPzeYW" alt="" width="563"><figcaption><p>Добавление в список</p></figcaption></figure></div>

Номер списка может быть передан в виде массива, тогда функция примет вид: `add_to_list('[list1,list2]')`

**Удалить из списка**

`remove_from_list(номер списка)`

<div data-with-frame="true"><figure><img src="/files/g86cU2cP8LBW5C43RHJs" alt="" width="563"><figcaption><p>Удаление из списка</p></figcaption></figure></div>

Номер списка может быть передан в виде массива, тогда функция примет вид: `remove_from_list('[list1,list2]')`

**Переместить в список**

`move_to_list(номер списка)`

<div data-with-frame="true"><figure><img src="/files/kYb3bfS0ixeca971QJ1d" alt="" width="563"><figcaption><p>Перемещение в список</p></figcaption></figure></div>

При перемещении человек будет удален из всех списков и добавлен в выбранный.

#### Проверка размера списка

`list_size(номер списка)`

<div data-with-frame="true"><figure><img src="/files/BExSEGRV28nx9cgzMqIf" alt="" width="375"><figcaption><p>Проверка размера списка</p></figcaption></figure></div>

Вернет количество людей в списке.

Больше возможностей функций калькулятора рассмотрено в разделе [Калькулятор - Работа со списками](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-spiskami.md)

## Как вручную работать со списками

В каждом списке есть кнопки для **добавления** и **исключения** клиентов из данного списка, **запуска рассылки** из списка и возможность **скачать список** клиентов файлом. В контекстном меню добавлены команды для **добавления списка в папку** и **редактирования списка.** А также кнопки **удаления списка** (клиенты остаются в проекте без списка) и **удаления участников списка из проекта**

{% hint style="danger" %}
**Будьте внимательны**! Команда "**удаления участников списка из проекта"** полностью удаляет клиентов из проекта без возможности восстановления!
{% endhint %}

### Добавить клиентов в список

<div data-with-frame="true"><figure><img src="/files/U1ZCpRqv486KGrFLBjaj" alt="" width="375"><figcaption></figcaption></figure></div>

В список клиентов можно вручную <mark style="color:green;">**загрузить СУЩЕСТВУЮЩИХ клиентов**</mark>, отфильтровав их в форме, из файла или из другого списка.

{% hint style="warning" %}
ВАЖНО! При добавлении <mark style="color:green;">**существующих**</mark> клиентов в список из файла в первой колонке должны быть указаны внутренние  ID идентификаторы клиентов (переменная client\_id).&#x20;
{% endhint %}

#### Добавление клиентов из файла:

1. Выберите тип фильтра "Клиенты из файла":

<div data-with-frame="true"><figure><img src="/files/AS4t3SgVh0j62aYRE2un" alt="" width="563"><figcaption></figcaption></figure></div>

2. Далее загрузите список с клиентами в формате .CVS:

<div data-with-frame="true"><figure><img src="/files/RM0ySgl7jt975Uh3W5qQ" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы <mark style="color:green;">**добавить НОВЫХ клиентов**</mark> в определенный список перейдите в раздел Каналы. Затем нажмите на кнопку "Загрузить список клиентов" и выберите список, в который хотите загрузить клиентов.

### Исключить клиентов из списка

По тому же принципу можно удалить клиентов из списка: нажмите на кнопку "— Исключить из списка" и выберите фильтры (при необходимости):

<div data-with-frame="true"><figure><img src="/files/8z322CrHWAls9JoqPCSx" alt="" width="375"><figcaption></figcaption></figure></div>

И кажите необходимые фильтры для удаления определенной категории клиентов ИЗ этого списка (не из базы клиентов!):

{% hint style="warning" %} <mark style="color:red;">**Будьте внимательны при заполнении формы**</mark>.&#x20;

**Если** в форме Исключить из списка **не заполнены поля фильтра**, то из списка **будут удалены все клиенты этого списка**.&#x20;

Если Вам нужно сделать частичное удаление, то заполните соответствующие фильтры:

* Фильтр по подключенным мессенджерам - выбор конкретного бота
* Для клиентов, находящихся в состоянии, - выбор состояния - номер блока в воронке. Может быть указано несколько блоков
* По переменным сделки - указание конкретного значения переменной для клиента
* Зарегистрировались до/после - указание интересующей даты для выбора клиентов
* За исключением списков. Если указаны номера списков, то из текущего списка будут удалены все клиенты, которые не состоят ни в одном из списков исключения.
  {% endhint %}

## Создать рассылку

При клике на список, в правом меню вы также увидите кнопку "Создать рассылку":

<div data-with-frame="true"><figure><img src="/files/mh8S90PB036neEKzxEV7" alt=""><figcaption></figcaption></figure></div>

Можно создать рассылку как в мессенджеры, так и в email (если подключена почта в проекте):

<div data-with-frame="true"><figure><img src="/files/suk8q7e6J1LcaugUXaIf" alt="" width="563"><figcaption></figcaption></figure></div>

## Как перенести клиентов из других платформ

При загрузке клиентов в разделе Каналы из других платформ вы можете выбрать один или несколько списков, куда попадут клиенты после загрузки.

Для этого перейдите в раздел "Каналы" и выберите подключенный мессенджер, куда необходимо загрузить клиентов:

<div data-with-frame="true"><figure><img src="/files/imB5jw5LtBjXWF2nJdHC" alt=""><figcaption></figcaption></figure></div>

Кликните по кнопке "Загрузить клиентов" и загрузите список, настроив необходимые поля загрузки (кодировку, в какой список добавить клиентов и тп):

<div data-with-frame="true"><figure><img src="/files/QlAFXskgeaQLa7XtL0gS" alt="" width="563"><figcaption></figcaption></figure></div>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/crm-sistema/spiski-i-metki.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
