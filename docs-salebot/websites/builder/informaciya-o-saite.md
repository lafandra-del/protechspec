> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/informaciya-o-saite.md).

# Информация о сайте

## Где найти ID страницы?

ID страницы сайта в списке сайтов можно передать в функции в боте, чтобы, например, передавать ссылку на ваш сайт через бота или открывать как мини-приложение в Телеграм.&#x20;

{% hint style="info" %}
Подробнее о [Telegram WebAp здесь. ](/chatbots/channels/telegram/buttons.md#knopka-telegram-web-application)
{% endhint %}

{% hint style="info" %}
ID страницы присваевается автоматически.
{% endhint %}

ID страницы можно найти при наведении на необходимую страницу сайта:

<figure><img src="/files/vgBxMNUbBIWXUMSW4gGe" alt=""><figcaption></figcaption></figure>

## Информация о сайте

<div><figure><img src="/files/2duntRFgh2oD2bs9JbEM" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/0R9AbjM4w03z4UE6DeOZ" alt="" width="563"><figcaption></figcaption></figure></div>

* Визиты — общее количество посетителей сайта;
* Заявки — показатель отображается, если на сайте создана форма заявки; показывает количество заполненных и отправленных вам заявок через [форму заявки](broken://pages/YOzidl4HYJaWmkPXnuYY);
* Переходы — количество пользователей из общего числа посетителей сайта, которые перешли в бота (схоже с конверсией);
* Ответы — отображается, если создана форма опроса / квиз; показывает количество ответов пользователей, которые в форме квиз / опрос и отправили вам ответы.&#x20;

{% hint style="warning" %}
Важно!

Если удалить страницу (в многостраничном сайте), на котором существует форма опроса, квиза или сбора заявок, то отображаемое количество заявок/ответов не изменится и заявки тоже не пропадут.&#x20;

Также останется заявка, если вы удалили страницу сайта (многостраничного).&#x20;

Если удалили сайт полностью (в том числе лендинг, квиз или форму), то все заявки также исчезнут.&#x20;
{% endhint %}

## Код для сайта

Чтобы интегрировать страницу вашего сайта, собранную в конструкторе Сейлбота, в какой-либо другой конструктор или самописный сайт, вам понадобится код для сайта.&#x20;

{% hint style="warning" %}
ВАЖНО! Код для сайта позволяет установить форму для сбора данных и кнопки мессенджеров.

Оформление, HTML и CSS-коды нужно устанавливать на вашем сайте.&#x20;
{% endhint %}

После создания страницы можно скопировать "Код для сайта". Для этого наведите на необходимую страницу сайта и кликните на кнопку дополнительного меню справа:

<figure><img src="/files/imTE9yy29ztPpDa1tEZO" alt=""><figcaption></figcaption></figure>

Вы увидите кнопку "Код для сайта", кликните на нее чтобы открыть модальное окошко с кодом:

<figure><img src="/files/gdi7LDQz9f2xpkPfNjTd" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
ВАЖНО!\
Для передачи данных в бота установите в настройках сайта [<mark style="color:green;">**ТЕГ**</mark>](#teg)!
{% endhint %}

Данный код нужно вставить в блок на вашем сайте.

{% hint style="info" %}
Про установку кода на страницу Тильды можно [узнать в этой статье.](https://docs.salebot.pro/integracii/tilda)
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/informaciya-o-saite.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
