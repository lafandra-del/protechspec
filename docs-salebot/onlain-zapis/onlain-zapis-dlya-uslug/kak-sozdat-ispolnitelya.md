> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-uslug/kak-sozdat-ispolnitelya.md).

# Как создать исполнителя

После настройки вкладки с услугами перейдите во вкладку "Исполнители":

<figure><img src="/files/KBJFkXh6Ido6BBKxXxWj" alt="" width="375"><figcaption></figcaption></figure>

Здесь необходимо создать исполнителя: для этого нажмите на одноименную кнопку, после чего откроется модальное окошко с добавлением исполнителя:

<figure><img src="/files/7OG37b13o5GReCuFnX88" alt="" width="375"><figcaption></figcaption></figure>

Выберите тип сотрудника:

1. Штатный сотрудник

<figure><img src="/files/U3XaMCIIFJyeD3LflGkL" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Обращаем внимание!&#x20;

Типы исполнителя, как "рейсовый автобус" необходим для услуг пассажирских перевозок.

Подробнее о пассажирских перевозках рассказали в разделе "[Онлайн-запись для перевозок](broken://pages/i1qbQT5hEWx5QM7g2rgp)".
{% endhint %}

Предварительно добавьте пользователей в разделе "Сотрудники":

<figure><img src="/files/PewgQbAenh8QPrjOwrKk" alt="" width="330"><figcaption></figcaption></figure>

{% hint style="info" %}
Как добавлять пользователей в проект, рассказали в статье "[Настраиваемые роли](broken://pages/SIUeJLHQq31693zHRNLY)".
{% endhint %}

Далее выберите сотрудника, который будет оказывать услуги:

<figure><img src="/files/qPUYhE8KexvrY8BdC1g5" alt="" width="375"><figcaption></figcaption></figure>

Далее пропишите имя сотрудника:

<figure><img src="/files/AoZ47oUXIFmzoUi56dUh" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Поле "Имя сотрудника" является обязательным - это необходимо, чтобы в онлайн-записи не отображалась электронная почта сотрудника, если вы не указали имя сотрудника при его добавлении в разделе "Сотрудники".&#x20;
{% endhint %}

Пропишите описание сотрудника и добавьте фотографию при необходимости:

<figure><img src="/files/zhOpuRn4OQ1HLhn2LiWB" alt="" width="375"><figcaption></figcaption></figure>

Далее нажмите "Сохранить".&#x20;

2. Внештатный сотрудник

Отличие штатного и внештатного сотрудника в том, что внештатного сотрудника не нужно добавлять в проект.&#x20;

<figure><img src="/files/VVPTAxBVYrRHpULDSulk" alt="" width="375"><figcaption></figcaption></figure>

Также заполните для внештатного сотрудника поля с именем и при необходимости с описанием, затем клиенте "Сохранить".&#x20;

Теперь сотрудникам можно назначить услуги:

<figure><img src="/files/sCrdqgBP6hdZDUqop1uu" alt="" width="371"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-uslug/kak-sozdat-ispolnitelya.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
