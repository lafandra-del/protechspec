> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/about.md).

# Верхняя строка редактора блока

В верхней строке редактора блока расположено несколько полей:

1. Тип блока

<figure><img src="/files/3PCwt4pG4wgdkwNiyc68" alt=""><figcaption></figcaption></figure>

2. Название блока (Описание)

<figure><img src="/files/YpZIJ0JE9tXgkhpQAzNJ" alt="" width="563"><figcaption></figcaption></figure>

3. Уникальный номер блока

<figure><img src="/files/sE07K7Ouw4QFXMVA1ihW" alt="" width="563"><figcaption></figcaption></figure>

Чтобы скопировать номер блока (ID блока) достаточно кликнуть по номеру блока.&#x20;

4. Меню дополнительных команд

<figure><img src="/files/uDq47fHRkAQgLxxUhkTr" alt="" width="563"><figcaption></figcaption></figure>

5. Генерация текста искусственным интеллектом

<figure><img src="/files/MsPQZkcDxvZzEV6lbnk1" alt="" width="563"><figcaption></figcaption></figure>

### **Поле: Тип блока**

{% hint style="info" %}
По умолчанию выбрано "Состояние диалога"
{% endhint %}

Поле, которое отвечает за выбор типа блока. Подробнее о типах блоков читайте [в данной **статье**](/chatbots/builder/message/buttons/type.md)

Чтобы сменить тип блока кликните по значку типа блока, откроется выпадающее меню.&#x20;

<figure><img src="/files/GqWKKEeJ043U0XxjUBX1" alt="" width="563"><figcaption></figcaption></figure>

### **Поле: Название блока (Описание)**

**Описание:** в это поле можно задать краткое описание назначения блока. Полезно для структурирования логики бота, поможет не запутаться, если работаете над сложным проектом с большим количеством блоков. По умолчанию текст берется из поля "Текст сообщения". На работу бота данное поле не влияет.

![](https://lh4.googleusercontent.com/o4EDaSo12ytb99nmjQD6OGLJfWh75wO1T5cLGUHKZY2pDvi9Ssd2Iqp4ABRFiq44M8JC_vAbBYNhnRjzlatB68qfr2BPaST6iRkaDdXBkoGCQCY59aL6apSlRnKseULjQQ_QOTwB)

По умолчанию в названии блока лежит наименование его типа:

<figure><img src="/files/Mi5sPNAEmSwhDpW3mdQW" alt="" width="375"><figcaption></figcaption></figure>

Задать собственное название блока можно, кликнув по строке:

<figure><img src="/files/oVgXHWPEiGWTw2Ny2Qc5" alt="" width="563"><figcaption></figcaption></figure>

### Поле: Меню дополнительных команд (три точки)

<figure><img src="/files/QdBahQbTdLLUUKPKCI3X" alt="" width="563"><figcaption></figcaption></figure>

В данном разделе находятся дополнительные команды:&#x20;

* ***Создать петлю***

Петля -  стрелка, которая возвращает пользователя в тот же блок.

*Пример использования петли при получении номера телефона пользователя.*\
&#x20;\
От блока "Введи номер телефона идут две стрелки: [стрелка со сбором данных](/chatbots/builder/connections/type.md#strelka-so-sborom-dannykh) к блоку "Твой номер... "  и стрелка [с пустым условием](/chatbots/builder/connections/type.md#strelka-s-usloviem) к блоку "Попробуй еще раз".\
\
В стрелке со сбором данных в поле Условие указываем [регулярное выражение](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-regulyarnymi-vyrazheniyami.md) - условие, с помощью которого бот может проверять формат введенных данных: пользователь ввел именно номер телефона или что-то иное. \
\
Если пользователь ввел НЕ номер телефона, то ему придёт сообщение из блока "Попробуй ещё раз".  У данного блока создана петля. \
Каждый раз, когда пользователь вводит НЕ номер телефона, он будет возвращаться в блок " Попробуй еще раз". До тех пор пока не введет номер телефона и не перейдет в блок по стрелке со сбором данных с регулярным выражением в блок "Твой номер..."&#x20;

<figure><img src="/files/gCUvh4BUYTD3KjoNHXd1" alt=""><figcaption></figcaption></figure>

* ***Создать блок ниже***

Команда для быстрого создания нового блока (по умолчанию,  тип Состояние диалога), соединенного с текущим стрелкой. Можно создать любое количество блоков.&#x20;

<figure><img src="/files/p3nFZSCfFWYRLZFdWBjK" alt=""><figcaption></figcaption></figure>

* ***Пересчитать статистику***

Команда Пересчитать статистику помогает увидеть количество пользователей в блоках( состоянии) в момент нажатия данной кнопки.&#x20;

{% hint style="info" %}
Для обновления данной статистики  повторно нажимаем команду Пересчитать статистику в любом блоке конструктора воронок.
{% endhint %}

<figure><img src="/files/MThTGP1V4rLcMgkXFK7Q" alt=""><figcaption><p>Количество пользователей, находящихся в данном состоянии воронки<br>после пересчета статистики</p></figcaption></figure>

* ***Создать рассылку***

Команду Создать рассылку можно использовать [для создания рассылок из блока](https://docs.salebot.pro/rassylki-1/rassylki) и для перемещения клиентов из одного состояния(блока воронки) в другое.&#x20;

<figure><img src="/files/j5wmygVszrSEhXiV6coZ" alt="" width="563"><figcaption></figcaption></figure>

После выбора типа рассылки ( в мессенджеры или E-mail) откроется форма рассылки. При таком способе создания рассылки текст сообщения, вложения и другие настройки берутся из блока, в котором вызвали команду Создать рассылку:

1\) Переход в настройки рассылки при клике на кнопку "Рассылка в мессенджеры"&#x20;

<figure><img src="/files/jYIGWtRa6e9iIxtBxrR7" alt="" width="563"><figcaption></figcaption></figure>

2\) Вкладка "Сообщение" в настройках рассылки

<figure><img src="/files/NiuX7wDzzgL2GzG7dlBw" alt="" width="563"><figcaption></figcaption></figure>

### Пример: Отправить пользователей в другой блок

Пошаговая инструкция как массово переместить клиентов (пользователей) в другой блок воронки на примере пользователей в мессенджерах.

**Шаг 1.  Копируем ID блока, ИЗ которого нужно "забрать" клиентов.** \
Открываем редактор блока - верхняя строка - кликнуть по номеру блока.&#x20;

<figure><img src="/files/YHL1z3qAKwYE7BWgpa7f" alt=""><figcaption></figcaption></figure>

**Шаг 2.  Запустить создание рассылки в блоке, В КОТОРЫЙ необходимо переместить клиентов.**\
Открываем редактор блока КУДА надо переместить клиентов. \
Верхняя строка редактора -Три точки (Меню дополнительных команд)(1) - Создать рассылку (2)- Рассылка в мессенджеры (3)

<figure><img src="/files/ba0iVh3fvf0i3HcrLnpS" alt=""><figcaption></figcaption></figure>

**Шаг 3. Создание рассылки, заполнение раздела Получатели в форме рассылки.**\
В форме создания рассылки в разделе Получатели отфильтровать по номеру блока ОТКУДА "забираем клиента (получили в шаге 1).

<figure><img src="/files/BZ3ydXj0Zk3NFgWWFWsQ" alt="" width="563"><figcaption></figcaption></figure>

Выберите блок. Перед отправкой пересчитайте количество получателей рассылки. \
\
Всё содержание рассылки будет автоматически добавлено из блока, в который пользователи будет переведены данной рассылкой.\
\
**Шаг 4. Отправить рассылку.** \
После успешной отправки рассылки можно нажать Пересчитать статистику в блоке.

### Видео-обзор "Меню блока"

{% embed url="<https://www.youtube.com/watch?v=74J1vmVcEP8>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/about.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
