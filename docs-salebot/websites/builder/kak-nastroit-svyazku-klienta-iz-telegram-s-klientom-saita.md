> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/kak-nastroit-svyazku-klienta-iz-telegram-s-klientom-saita.md).

# Как настроить связку клиента из Телеграм с клиентом сайта

{% hint style="warning" %}
Внимание!

При связке все переменные, сделки, сообщения и контакты перенесутся в ТГ клиента, а клиент сайта удалится.&#x20;
{% endhint %}

Данный функционал доступен при использовании функции оплаты в форме:

<figure><img src="/files/JYrmmGM2imEXeGGlXYKA" alt=""><figcaption></figcaption></figure>

Шаг 1. Создайте страницу успешной оплаты

Для этого вам понадобится создать новый небольшой сайт, НА который перейдет ваш пользователь, с кнопкой Телеграм:

<figure><img src="/files/FXMQRoNDz3sBcXeiWYCB" alt=""><figcaption><p>Сайт с текстом успешной оплаты и кнопкой Телеграм</p></figcaption></figure>

И скопируйте ссылку на сайт, на который перейдет ваш клиент после оплаты в форме на сайте.&#x20;

Шаг 2.&#x20;

В настройках сайта с формой оплаты необходимо найти поле "Ссылка на страницу после успешной оплаты":

<figure><img src="/files/E7jrlrsmdZs1Htw5VjKO" alt=""><figcaption></figcaption></figure>

Добавляем в поле "Ссылка на страницу после успешной оплаты" ссылку САЙТА УСПЕШНОЙ ОПЛАТЫ, которую вы скопировали в Шаге 1, где в конце данной ссылки необходимо указать параметр ?start=

<figure><img src="/files/t3Wn6Xeed0B6vsOgKfwH" alt=""><figcaption></figcaption></figure>

<mark style="color:red;">**<https://salebot.pro/md/page\\_spasibo>**</mark><mark style="color:green;">**?start=,**</mark> где <mark style="color:red;">**красным**</mark> отмечена сама ссылка, а <mark style="color:green;">**зеленым**</mark> — параметр.

Далее после ?start= укажите **УСЛОВИЕ ВЫЗОВА БЛОКА:**

**1) скопируйте условие блока**

<figure><img src="/files/e2JukJ0G9bJ6E9CMWg5E" alt=""><figcaption></figcaption></figure>

**2) вставьте в строку "Ссылка на страницу после успешной оплаты":**

<figure><img src="/files/SQ8fT3M0gR3sxt5cSS8U" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!

Теперь после оплаты ваших клиентов будет редиректить на страницу после успешной оплаты для дальнейшего взаимодействия клиента в ТГ.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/kak-nastroit-svyazku-klienta-iz-telegram-s-klientom-saita.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
