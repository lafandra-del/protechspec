> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/online_courses/webinars/custom_role.md).

# Кастомные роли для трансляций

Полный доступ к настройке, редактированию трансляции, премодерации сообщений в чате или удаление трансляции имеет лишь создатель проекта или администратор проекта.

В остальных случаях, при необходимости, можно настроить кастомную роль с функциями модератора и разрешить осуществление следующих действий:

* настройки премодерации;
* модерация сообщений;
* возможность блокировать пользователей в трансляции.

Для этого перейдите в настройки проекта, раздел "Сотрудники":

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeHRYeZQK1OaYZteS4fqdUB-nb-AXlqOmmH4ScG1DnVXIidPN_dI8yPWM7-dSLewWTB7qi8e_qFMDmYt6mB2XvGikKgamHgq_0zMnfJZuD8Fgj8xit5WiCIOJXCi5TyzsYMWciV?key=AYUpCenzlfBL1b97HUAIeg" alt="" width="188"><figcaption></figcaption></figure>

Далее перейдите во вкладку роли и нажмите на создать роль.

После найдите в списке разделов - "Трансляции" и разрешите для кастомной роли модератора необходимые действия:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcQZp8HpGeTWgQxr5E4b9Z8ny0ewVoQnnsTqSOXx1hOsMCeJ10ZruymGlrJKdB-mbbc4ltsTbl83npsmgwgcRulUARcc6mQdWao_j7lTdyP8TpawGz0u0E6ZSvG3_Bl8lJTAGA8ig?key=AYUpCenzlfBL1b97HUAIeg" alt=""><figcaption></figcaption></figure>

Можно выбрать что-то одно, можно активировать сразу три возможности редактирования и изменения в трансляциях для роли.

## Как добавить трансляцию в урок

Чтобы добавить трансляцию на страницу урока, перейдите в настройки курса во вкладку "Уроки":

<figure><img src="/files/ZWTOpP8d9RRBqjbLvoTl" alt=""><figcaption></figcaption></figure>

Далее в режиме редактирования урока, наведите на рабочую область и найдите кнопку "+", чтобы добавить секцию:

<figure><img src="/files/2PWfHBUGOOTdeM3Gv0G8" alt=""><figcaption></figcaption></figure>

В правой части экрана откроется меню, чтобы добавить необходимую секцию в урок. Выберите секцию "Вебинар":

<figure><img src="/files/5TzkEquklMpDPic35Et9" alt="" width="563"><figcaption></figcaption></figure>

Тогда вам останется только выбрать вебинар из выпадающего списка, который будет транслироваться прямо в уроке:

<figure><img src="/files/mC5z2yQUoVcdDekLs3zf" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!&#x20;

Теперь вы знаете, как добавить трансляцию в урок.
{% endhint %}

## Как проверить, был ли ученик на вебинаре

{% hint style="info" %}
Подробно рассказали в статье "[Функции калькулятора для курсов](/online_courses/selling/chatbot/funkcii-kalkulyatora-dlya-kursov.md#kak-proverit-byl-li-uchenik-na-vebinare)"
{% endhint %}

## Как посмотреть статистику

Чтобы посмотреть статистику вебинара, перейдите в раздел "Аналитика" во вкладку "Трансляции"

<figure><img src="/files/af8LJm54SJC1KmY5OmRj" alt=""><figcaption></figcaption></figure>

Во вкладке "Трансляции" в аналитике вы сможете выбрать трансляцию, по которой нужно просмотреть статистику:

<figure><img src="/files/utcMhYiKjz4eS8OdcwG0" alt=""><figcaption></figcaption></figure>

Выбрать временной промежуток вебинара для просмотра статистики:

<figure><img src="/files/GnKpiD0TaZayxVSlwOBE" alt=""><figcaption></figcaption></figure>

А также просмотреть:

1. Количество уникальных зрителей;
2. Количество комментариев;
3. Количество реакций;
4. Количество незарегистрированных зрителей.

А также увидеть наглядный график:

<figure><img src="/files/HFSJxiRan9jxCl4MxgU8" alt=""><figcaption></figcaption></figure>

Для отчетности, данные можно выгрузить в виде таблицы, кликнув по кнопке "Выгрузить cvs":

<figure><img src="/files/pNOj3a7H0mMX2eqH9Zn2" alt="" width="563"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/online_courses/webinars/custom_role.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
