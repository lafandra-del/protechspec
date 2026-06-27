> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/api/chatbot.md).

# Функции для работы с ботом

## Как работать с описанием бота Telegram (полное,краткое)

<mark style="background-color:blue;">**Установка приветственного сообщения**</mark>

**tg\_set\_bot\_description(description, language\_code)** - описание бота, показываемое когда чат с ботом пуст&#x20;

Параметры:

<table><thead><tr><th width="315.25">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><strong>description</strong></td><td>описание бота, если передать пустую строку, то это очистит соответствующее описание</td></tr><tr><td><strong>language_code</strong></td><td><p>двухбуквенный код языка по стандарту ISO 639-1 для локализации текста. </p><p></p><p>Если пусто, краткое описание будет применяться ко всем пользователям, для которых нет специального краткого описания.</p></td></tr></tbody></table>

<details>

<summary>Пример</summary>

Пример установки приветсвенного сообщения и меню бота:

<figure><img src="/files/Ynbtp8JQuFurapQaqkF9" alt=""><figcaption><p>Настройка блока в Salebot: используются функции для установки команды и описания</p></figcaption></figure>

После запуска (проводите это единожды по команде администратора):

<figure><img src="/files/9Si6wcCvZoEvdI0nR7eJ" alt=""><figcaption><p>Приветственное сообщение и меню бота</p></figcaption></figure>

Пример кода для копирования:

`tg_set_bot_description('Добро пожаловать! Я ваш виртуальный помощник Юрграм.🤖') command = [["private_office", "Личный кабинет"]] tg_set_command(command, '', 'default')`

</details>

### <mark style="background-color:blue;">**Установка описания для превью ссылки**</mark>

**tg\_set\_bot\_short\_description(description, language\_code)** - краткое описание бота, которое отображается на странице профиля бота и отправляется вместе со ссылкой, когда пользователи делятся ботом.&#x20;

Параметры:

<table><thead><tr><th width="315.25">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><strong>description</strong></td><td>описание бота, если передать пустую строку, то это удалит соответствующее описание</td></tr><tr><td><strong>language_code</strong></td><td><p>двухбуквенный код языка по стандарту ISO 639-1 для локализации текста. </p><p></p><p>Если пусто, краткое описание будет применяться ко всем пользователям, для которых нет специального краткого описания.</p></td></tr></tbody></table>

### <mark style="background-color:blue;">**Получение текущего описания**</mark>

**tg\_get\_bot\_description(language\_code)** - Используйте этот метод, чтобы получить текущее описание бота для данного пользовательского языка

<table><thead><tr><th width="315.25">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><strong>language_code</strong></td><td><p>двухбуквенный код языка по стандарту ISO 639-1 для локализации текста. </p><p></p><p>Если пусто, краткое описание будет применяться ко всем пользователям, для которых нет специального краткого описания.</p></td></tr></tbody></table>

### <mark style="background-color:blue;">**Получение текущего краткого описания**</mark>

**tg\_get\_bot\_short\_description(language\_code)** - Используйте этот метод, чтобы получить текущее краткое описание бота для данного пользовательского языка

<table><thead><tr><th width="315.25">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><strong>language_code</strong></td><td><p>двухбуквенный код языка по стандарту ISO 639-1 для локализации текста. </p><p></p><p>Если пусто, краткое описание будет применяться ко всем пользователям, для которых нет специального краткого описания.</p></td></tr></tbody></table>

## **Как установить команды для бота**

### <mark style="background-color:blue;">**Для установки команд**</mark>&#x20;

**`tg_set_command(commands, language, scope, platform_id, user_id)`**

<table><thead><tr><th width="239.27734375">Параметр </th><th>Описание</th></tr></thead><tbody><tr><td><mark style="color:red;"><strong>!</strong></mark><strong> commands</strong></td><td>команды для бота в виде списка списков, каждый вложенный список состоит из 2 элементов: 1 - наименование команды, 2 - ее описание (существует ограничение в 100 команд), </td></tr><tr><td><strong>language</strong></td><td><p>двухбуквенный код языка ISO 639-1, например 'ru' или 'en' <br></p><p>Если не указан, то команды будут применяться ко всем пользователям из области, для языка которых нет выделенных команд), </p></td></tr><tr><td><strong>scope</strong></td><td>параметр описывающий круг пользователей, для которых создаются команды. Значение по умолчанию  <em>'default'</em> </td></tr><tr><td><strong>platform_id</strong></td><td><p>идентификатор чата внутри Telegram <a href="#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii"><strong>*</strong></a>. </p><p></p><p>Применяется только при определенных значениях параметра <strong>scope</strong></p></td></tr><tr><td><strong>user_id</strong></td><td><p>идентификатор пользователя внутри Telegram <a href="#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii"><strong>*</strong></a> . </p><p></p><p>Применяется только при определенных значениях параметра <strong>scope</strong></p></td></tr></tbody></table>

<details>

<summary>Пример</summary>

<figure><img src="/files/8Dmy2fvBtzDuShbEzPnt" alt=""><figcaption></figcaption></figure>

**command = \[\["count", "return count of user"],\["unpin", "unpin all message"]] tg\_set\_command(command, '', 'all\_chat\_administrators')**

В этом примере команды вынесены в отдельную переменную. Также можно добавить эти команды прямо в функцию:&#x20;

**tg\_set\_command('\[\["count", "return count of user"],\["unpin", "unpin all message"]]', '', 'all\_chat\_administrators')**

{% hint style="warning" %}
Для дальнейшего вызова команд в поле ввода сообщения введите символ '/'. Если все было сделано верно, то увидите подсказку в виде списка команд. Жирным шрифтом выделены команды, правее их описание.
{% endhint %}

Для использования команд настройте реакцию на сообщения содержащие команды.

</details>

## **Как просмотреть команды для бота**

<mark style="background-color:blue;">**Для просмотра команд**</mark>

**`tg_get_command(language, scope, platform_id, user_id)`**

<table><thead><tr><th width="262.8671875">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><strong>language</strong></td><td>двухбуквенный код языка ISO 639-1, например 'ru' или 'en' <br>Если не указан, то будут показаны команды, применяемые ко всем пользователям из заданной области, для языка которых нет выделенных команд)</td></tr><tr><td><strong>scope</strong></td><td>параметр описывающий круг пользователей, для которых должны быть показаны команды(необязательный параметр, если не используете, то по умолчанию будет применено значение <em>'default')</em></td></tr><tr><td><strong>platform_id</strong> </td><td>идентификатор чата внутри Telegram <a href="#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii"><strong>*</strong></a><br>Применяется только при определенных значениях параметра <strong>scope</strong></td></tr><tr><td><strong>user_id</strong></td><td>дентификатор пользователя внутри Telegram <a href="#gde-vzyat-platform_id-dlya-otpravki-uvedomlenii"><strong>*</strong></a><br>Применяется только при определенных значениях параметра <strong>scope</strong>.</td></tr></tbody></table>

{% hint style="info" %}
Если Вы **не** хотите **использовать** параметр **language**, но при этом **используете** параметр **scope**, то не забудьте указать в начале пустой параметр, как в примере:&#x20;

**tg\_get\_command('', scope)**
{% endhint %}

<details>

<summary>Пример</summary>

***command = tg\_get\_command('', 'all\_chat\_administrators')***

Переменной присваиваем в качестве значения эту функцию и внутри переменной после выполнения будет ответ сервера с командами для заданного в параметре **scope** круга пользователей.&#x20;

***{"ok":true,"result":\[{"command":"count","description":"return count of user"},{"command":"unpin","description":"unpin all message"}]}***

Если вызвать функцию без параметров, то scope по умолчанию примет значение 'default'.

***command = tg\_get\_command()***

</details>

## **Как удалить команды в боте**

<mark style="background-color:blue;">**Для удаления команд**</mark>

**tg\_delete\_command(language, scope, platform\_id, user\_id),** где&#x20;

<table><thead><tr><th width="308.98828125">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><strong>language</strong></td><td>двухбуквенный код языка ISO 639-1, например 'ru' или 'en' (необязательный параметр, если не указан, то будут удалены команды, которые применяться ко всем пользователям из заданной области, для языка которых нет выделенных команд)</td></tr><tr><td><strong>scope</strong></td><td>параметр описывающий круг пользователей, для которых удаляются команды<br>Если не используете, то по умолчанию будет применено значение <em>'default'</em> </td></tr><tr><td><strong>platform_id</strong></td><td>идентификатор чата (необязательный параметр, применяется только при определенных значениях параметра <strong>scope</strong>)</td></tr><tr><td><strong>user_id</strong></td><td>идентификатор пользователя (необязательный параметр, применяется только при определенных значениях параметра <strong>scope</strong>).</td></tr></tbody></table>

{% hint style="info" %}
&#x20;Если Вы не хотите использовать параметр language, но при этом используете параметр scope, то не забудьте указать в начале пустой параметр, как в примере: **tg\_delete\_command('', scope)**
{% endhint %}

{% hint style="info" %}
Команда вида tg\_delete\_command() удалит команды без указания параметра language из параметра scope по умолчанию.
{% endhint %}

<details>

<summary>Пример</summary>

Удалить установленные команды можно, прописав функцию с параметрами в калькуляторе:

<figure><img src="/files/wwq0hIFvKv8Gao9AuXUR" alt=""><figcaption></figcaption></figure>

**Пример кода для копирования:**

**`tg_delete_command('', 'all_chat_administrators')`**

</details>

## Как настроить реакцию на команды

Для команд в переписке с ботом реагировать нужно на сообщения вида:\
\&#xNAN;**'/command\_name'** – в этом примере **command\_name** – команда.

для команд в чатах при вводе команды будут приходить сообщения вида:

Для команд в группах и чатах реагировать нужно на сообщения вида:

**'/command\_name\@bot\_username'** – в этом примере **command\_name** – команда, а **@bot\_username** – username бота.

**Список значений scope:**

<table><thead><tr><th width="214.984375">Параметр</th><th>Значение</th></tr></thead><tbody><tr><td><strong>'default'</strong></td><td>параметр по умолчанию, подразумевает, что команды будут работать в личных сообщениях с ботом.</td></tr><tr><td><strong>'all_private_chats'</strong></td><td>все закрытые чаты, команды доступны всем в закрытых чатах, в которых добавлен бот.</td></tr><tr><td><strong>'all_group_chats'</strong></td><td>все групповые и супергрупповые чаты, команды доступны всем в указанных видах чатов, в которых добавлен бот.</td></tr><tr><td><strong>'all_chat_administrators'</strong> </td><td>команды для администраторов всех групповых и супергрупповых чатов, в которых добавлен бот.</td></tr><tr><td><strong>'chat'</strong></td><td>команды для определенного чата (если выбрали данный вариант, то необходимо указать <strong>platform_id</strong>).</td></tr><tr><td><strong>'chat_administrators'</strong></td><td>команды для администраторов определенного чата (если выбрали данный вариант, то необходимо указать <strong>platform_id</strong>).</td></tr><tr><td><strong>'chat_member'</strong></td><td>команды для конкретного участника определенного чата (если выбрали данный вариант, то необходимо указать <strong>platform_id</strong> и <strong>user_id</strong>, указанный пользователь должен состоять в указанном чате).</td></tr></tbody></table>

{% hint style="info" %}
Если Вы не хотите использовать параметр language, но при этом используете параметр scope, то не забудьте указать после команд пустой параметр, как в примере: \
\&#xNAN;***tg\_set\_command(command, '', scope)***
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/api/chatbot.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
