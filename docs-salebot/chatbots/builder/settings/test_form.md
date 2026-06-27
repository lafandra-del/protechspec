> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/test_form.md).

# Тестирование чат-бота

После создания  или в процессе создания любой схемы, чат-бота нужно тестировать для отработки необходимых сценариев и правильности настройки.&#x20;

Можно подключить бота к проекту и тестировать в нем, но если создается бот в Whatsapp, то написать самому себе нельзя. Для этого есть другой способ: можно открыть онлайн-чат с ботом и работать с ним. Для этого нажмите на кнопку в левом нижнем углу конструктора:

<figure><img src="/files/rdoi4cmqFoqvIOrLHbHO" alt=""><figcaption></figcaption></figure>

При нажатии на кнопку "Протестировать бота" откроется тестовое окно:

<figure><img src="/files/JyzkM8YjWndIGYaXnhcQ" alt=""><figcaption></figcaption></figure>

Левая область экрана в тестировочном окне отображает созданные блоки для чат-бота:

<figure><img src="/files/YzjaB9cwKuXSs53kp5Cx" alt=""><figcaption></figcaption></figure>

В правой части вы увидите тестовые данные клиента (то есть себя):

<figure><img src="/files/TtvkqkXa5bgf6LCwUc9C" alt=""><figcaption></figcaption></figure>

Посередине экрана вы увидите онлайн-чат, в котором можно протестировать бота. Для этого пропишите условие из блока "Начало диалога":

<figure><img src="/files/u45ptxC2wsfsSn0RPOkN" alt="" width="375"><figcaption></figcaption></figure>

Как работает бот, собранный нами по пяти шагам:

<figure><img src="/files/F0SGkXNu1ZEVa7Zv6SsS" alt="" width="375"><figcaption></figcaption></figure>

### О вкладке "Тестирование"

После создания схемы чат-бота в режиме тестирования слева вы увидите все плашки с информацией о блоках:

<figure><img src="/files/9XXkq3klitjPlPs0BFUw" alt=""><figcaption></figcaption></figure>

Каждая плашка на экране слева отображает номер блока, его тип, а также содержание:

<figure><img src="/files/KmpYlBykHzeRZUSz21DM" alt=""><figcaption></figcaption></figure>

Блоки можно отобразить по типу, отфильтровав их с помощью соответствующей кнопки "Фильтр":

<figure><img src="/files/Giymhm5jAb4KEaIqb1NH" alt="" width="563"><figcaption></figcaption></figure>

Чтобы проверить отработку только одного блока из схемы, можно выбрать соответствующий блок, кликнув по нему, и нажать на "Отправить блок":

<figure><img src="/files/SuXwMSiKVLR5IANoWbSg" alt="" width="426"><figcaption></figcaption></figure>

Выбранный блок отправится от имени чат-бота в средней части экрана - окне тестировки:

<figure><img src="/files/fQnIeLgO7MPj9IypTARx" alt="" width="375"><figcaption></figcaption></figure>

В этой же части экрана вы сможете отработать всю схему блока, начиная с самого первого в схеме.&#x20;

{% hint style="info" %}
Тестировать схему чат-бота можно не только с самого начала: например, если вы добавили к своей схеме новые блоки, то воспользуйтесь функцией "Отправить блок" и начните тестировать схему именно с выбранного блока.&#x20;
{% endhint %}

В правой части экрана расположено отображение тестового клиента:

<figure><img src="/files/09GtaQuJRSjOMBIsH3do" alt="" width="563"><figcaption></figcaption></figure>

В этом же окне клиента существуют следующие возможности:

1. Присвоить или добавить метки/списки клиенту;&#x20;
2. Добавить переменные;
3. Просмотреть переменные, присвоенные клиенту с помощью отработки схемы чат-бота:

<figure><img src="/files/EJyfqQXTfjZKE4f3wv5N" alt="" width="563"><figcaption></figcaption></figure>

Таким образом вы можете полностью отработать схему чат-бота (а также любую его часть), сразу просмотреть карточку клиента и его данные.&#x20;

### Видеоверсия

{% embed url="<https://youtu.be/S9BywbmO4pc>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/test_form.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
