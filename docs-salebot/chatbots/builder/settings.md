> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings.md).

# Конструктор чат-бота

{% hint style="warning" %} <mark style="color:red;">**Обратите внимание!**</mark>

Длительность хранения данных и настроек после окончания подписки:

* мессенджеры через 3 недели после окончания срока действия тарифа;
* сообщения, длиннее 800 символов, удаляются через 3 месяца;
* все переписки хранятся не менее 2 месяцев, но не более 6 месяцев;
* клиенты (ученики) хранятся 1 год с момента окончания подписки. В случае, если в течение 1-го года с даты окончания подписки, отсутствует продление подписки, то ВСЕ КЛИЕНТЫ будут удалены безвозвратно.
* проекты хранятся 2 года после окончания подписки. В случае, если в течение 2-х лет с даты окончания подписки, отсутствует продление подписки, то проекты (в том числе его настройки, файлы и т.п.) удаляются безвозвратно!

Иное:

* сообщения, не доставленные Адресатам, хранятся 2 недели.

Возможность использования мессенджерами отключается через 3 недели при отсутствии оплаты.

Лимиты:

* не более 32 запланированных сообщений на одного клиента;
* у тестового бота (при пробной или неоплаченной подписке) 1000 сообщений в сутки, в этот лимит входят сообщения боту с тестового аккаунта.
  {% endhint %}

**Структура Salebot**

<figure><img src="/files/7sOKmkNr4NRUK2GXvY84" alt=""><figcaption></figcaption></figure>

В личном кабинете Пользователя отражается перечень доступных проектов, могут быть выполнены настройки Домена, можно поучаствовать в Партнерской программе, настроить уведомления и многое другое с помощью левого бара меню:

<figure><img src="/files/Zb7yM2OzB5SMltyMOupo" alt="" width="242"><figcaption></figcaption></figure>

Для вашего удобства есть возможность группировать проекты внутри папок:

<figure><img src="/files/iW4hstTJB2CU4jYsZggp" alt=""><figcaption></figcaption></figure>

Создание чат-бота, сайта, онлайн-курса или любого другого инструмента автоматизации начинается с создания проекта:

<figure><img src="/files/d98AAkNqp6qt48istF07" alt=""><figcaption></figcaption></figure>

При клике на кнопку "Создать проект" открывается окно модальной формы:

<figure><img src="/files/TBba4kDUJJMb0oZJiS5d" alt=""><figcaption></figcaption></figure>

Название проекта может быть любое удобное Вам:

<figure><img src="/files/QLiFqLvJ8NjgSJ25TWe5" alt="" width="563"><figcaption></figcaption></figure>

Часовой пояс проекта поможет правильно отображать настройки времени, записи на услуги и прочее:

<figure><img src="/files/cqhslRqolASWLAlXtKOb" alt="" width="563"><figcaption></figcaption></figure>

Также при создании проекта можно сразу установить шаблон схемы чат-бота:

<figure><img src="/files/8yOzsASijzyxd3GdQLUZ" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Подробнее о том, какие шаблоны существуют в Сейлботе и как их использовать, рассказали в разделе "[Шаблоны](broken://pages/-MSmydTpE3MI1S1XcyW0)".&#x20;
{% endhint %}

Далее укажите необязательные настройки, если создавали папки, выберите папку, в которую добавится проект, а также цвет верхней грани плашки проекта:

<figure><img src="/files/pVwcnlYEvPahI4Gmqr3i" alt="" width="563"><figcaption></figcaption></figure>

Далее укажите промокод (при наличии) и нажмите "Готово".&#x20;

{% hint style="info" %}
Все настройки можно будет отредактировать впоследствии внутри проекта, **кроме** Описания и Промокода.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
