> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/block_type/main.md).

# Как работать с блоками

{% hint style="info" %}
Salebot позволяет создавать чат-бот, прорисовывая его структуру в виде блок-схемы, состоящей из блоков и стрелок.&#x20;
{% endhint %}

**Блоки** - это структура, описывающая действие или событие, которое должно быть обработано/выполнено ботом. В блоке в том числе может содержаться текст сообщения, которое будет направляться вашему клиенту в боте.

{% hint style="danger" %}
Обращаем внимание!

Ограничения по блокам:

1. Суммарный лимит в схеме не более 500 шт. для блоков с условием: количество блоков "Стартовое условие" + "Не состояние с условием" не должно превышать 500 шт. в одном проекте.
2. Другие блоки неограничено.
   {% endhint %}

**Стрелки** - это соединение между блоками, в которых можно отразить условие и/или точное время перехода в следующий блок.&#x20;

{% hint style="info" %}
Всего существует 5 типов блоков: условные и безусловные. Также существует Блок "Комментарий", который не является блоком для отправки сообщений (нужен только для рабочей области в конструкторе)

Условные блоки выполняют функцию запуска бота при определенных условиях.\
Безусловные блоки работают только при переходе в них через стрелки или callback'и (с которыми мы с вами познакомимся позже)
{% endhint %}

{% hint style="warning" %}
Обращаем внимание!&#x20;

1. У блоков и стрелок существует приоритет выполнения!
2. Первыми всегда отработаются блоки, у которых установлено условие!&#x20;

Приоритет блоков и стрелок:

1. Самым первым всегда отрабатывается блок "Стартовое условие":

Сначала отработается блок "Стартовое условие", у которого в поле условия указано триггерное значение для старта воронки, затем отработается блок "Стартовое условие", в котором условия нет (если он существует).

2. Далее отработается стрелка (если клиент уже в воронке) из блока, в котором сейчас клиент
3. Блок "Не состояние с условием"
4. Если ответа не нашлось и включен ИИ Ассистент, то отвечает ассистент (если условие для запуска позволяет)
   {% endhint %}

<figure><img src="/files/Oo5iSYzNsD0R2VAGf5yi" alt=""><figcaption></figcaption></figure>

Все блоки имеют однотипную структуру:

Каждый блок содержит перечень разделов, который вы можете включить/отключить при желании:

<figure><img src="/files/sZgmeuj6K3PLuDhwvku3" alt=""><figcaption></figcaption></figure>

**Раздел Сообщение** *позволяет указать текст сообщения. В тексте можно использовать переменные, для их вывода используйте конструкцию #{имя\_переменной}*

<figure><img src="/files/THNRdASdJ4CaUTousJBp" alt="" width="563"><figcaption></figcaption></figure>

**Раздел Вложение** *позволяет загрузить вложение или указать на него ссылку (ссылка, изображение, видео, аудио, файл) для отправки клиенту ботом*

<figure><img src="/files/UiVbKUvMpJQaibNafHoc" alt="" width="563"><figcaption></figcaption></figure>

**Раздел Кнопки** *позволяет задать настройки кнопок для бота*

<figure><img src="/files/NjM7MKNV4dA2f81NdJLC" alt="" width="563"><figcaption></figcaption></figure>

**Раздел Действие** позволяет указать вспомогательные действия для бота (добавление, перемещение или удаление клиента из списка и перемещение в некое состояние воронки CRM)

<figure><img src="/files/WtFOJzOqhHJSdT9YiLya" alt="" width="563"><figcaption></figcaption></figure>

**Раздел Калькулятор** позволяет производить вычисляемые действия в процессе работы бота, а также выполнение различных функций (например, выставить ссылку на оплату, приостановить работу бота, очистить диалог с клиентом и многое другое):

<figure><img src="/files/xvYm4Jfm6MaXmhkDIhAz" alt="" width="563"><figcaption></figcaption></figure>

**Раздел API-запрос** позволяет выполнять различные виды запросов, в том числе скрипты:

<figure><img src="/files/2XxOXmdHOOEd6NvyFf6e" alt="" width="563"><figcaption></figcaption></figure>

**Раздел Условие** доступен только для условных блоков и позволяет задать ключи/условия, на которые должен реагировать бот для запуска воронки

<figure><img src="/files/TCaj1EFYwzMPxhmR5SQe" alt="" width="563"><figcaption></figcaption></figure>

*К условным блокам относятся блок первостепенной проверки условия, блок Начало диалога и блок Не состояние с условием*

## Меню блока

* **основное меню**

*Для каждого блока есть основное меню, из которого можно создать петлю, создать новый связанный блок (по умолчанию блок Состояние диалога), пересчитать статистику или создать рассылку данного блока*

<figure><img src="/files/xyyh2lIrOUvgr2MP9uSD" alt=""><figcaption></figcaption></figure>

* **всплывающее меню**

*Для каждого блока есть всплывающее меню, позволяющее выполнить определенные действия над блоком*, в частности:&#x20;

<figure><img src="/files/OPSETuEK3uhYu9vmhv25" alt="" width="563"><figcaption></figcaption></figure>

* копирование блока:

<figure><img src="/files/rU9pGB8guhfqPX5fxiTT" alt="" width="563"><figcaption></figcaption></figure>

* удаление&#x20;

<figure><img src="/files/wmtYruZtjj96SRe9Zlzc" alt="" width="563"><figcaption></figcaption></figure>

* копирование блока с присоединением&#x20;

<figure><img src="/files/N2IGz2nDao0FoGsRn6Sw" alt="" width="563"><figcaption></figcaption></figure>

* перенос на другой лист

<figure><img src="/files/KrNkH9Pv1n1jOuLQj6ki" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Приоритет блоков/переходов по убыванию:

·  Стартовое условие

·  Стрелка (соединение)

·  Не состояние с условием
{% endhint %}

Давайте более близко познакомимся с каждым из типов блоков: как их создавать и для чего они нужны?&#x20;

Для создания первого блока достаточно кликнуть 2 раза левой кнопкой мыши на рабочем пространстве редактора: по умолчанию, если у вас еще нет блоков в конструкторе, создается блок "Стартовое условие", если блоки уже существует в схеме, то будет создан Блок "Состояние".

{% hint style="info" %}
Подробнее о каждом типе блока рассказали в статьях ["Блоки с условием](/chatbots/builder/block_type/trigger.md)", "[Блоки Не состояние](/chatbots/builder/block_type/fallback.md)", "[Блоки без условия](/chatbots/builder/block_type/without_trigger.md)".
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/block_type/main.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
