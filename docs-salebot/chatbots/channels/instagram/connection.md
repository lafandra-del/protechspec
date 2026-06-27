> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/instagram/connection.md).

# Как создать чат-бота для Instagram\*

{% hint style="danger" %}
\***Принадлежат компании Meta Platforms Inc**., деятельность которой признана **на территории Российской Федерации&#x20;**<mark style="color:red;">**экстремистской и**</mark> <mark style="color:red;">**запрещена!**</mark>&#x20;
{% endhint %}

{% hint style="danger" %}
Мы не призываем Пользователей к использованию ресурса.

Помните!

1. Действия, связанные с приобретением товаров или услуг у запрещенной организации могут быть расценены как финансирование экстремистской деятельности, согласно ст. 282.3 УК РФ.
2. Также с 1 сентября 2025 запрещено распространять рекламу на информационных ресурсах тех организаций, деятельность которых запрещена в РФ (согласно ч. 3 ст. 12 ФЗ от 25 июля 2002 № 114-ФЗ).
   {% endhint %}

## Как подготовить свой аккаунт Instagram<mark style="color:red;">\*</mark>

Вам необходимо нажать на кнопку "Изменить" в профиле социальной сети.

Далее найдите кнопку "Переключиться на профессиональный аккаунт" и нажмите на нее:

<div><figure><img src="/files/YoiflTU3OQAISW2qouH3" alt="" width="375"><figcaption></figcaption></figure> <figure><img src="/files/qZkwnmMPd3fLpuI130RN" alt="" width="375"><figcaption></figcaption></figure> <figure><img src="/files/HRR8MUPu2eTKKzZfY7lt" alt="" width="375"><figcaption></figcaption></figure></div>

{% hint style="danger" %}
Тип аккаунта нужно поменять на БИЗНЕС. Если у вас "Аккаунт автора", то интеграция работать НЕ будет. Нужен именно "Бизнес"
{% endhint %}

<figure><img src="/files/czLOw1Akbxg4orcfyaJT" alt="" width="375"><figcaption></figcaption></figure>

Далее проверьте свои данные, при необходимости нужно их заполнить:

<figure><img src="/files/YnoN0yiN4dbPTWmFmfhw" alt="" width="375"><figcaption></figcaption></figure>

Далее необходимо подождать до 30 секунд для переключения аккаунта, в остальном настройки завершены. После переключения вы увидите соответствующее уведомление, что вам доступны профессиональные инструменты. Можно посмотреть предлагаемые 8 шагов, а можно закрыть настройки:

<figure><img src="/files/BFIPEsQz8eo4WfJ5jpvt" alt="" width="375"><figcaption></figcaption></figure>

После переключения на бизнес-аккаунт вы увидите информацию об этом в своем профиле:

<figure><img src="/files/suc689FNMH4MsL9wRhEu" alt="" width="375"><figcaption></figcaption></figure>

## Как подключить аккаунт к Salebot

Чтобы подключить аккаунт Instagram<mark style="color:red;">**\***</mark> к Salebot, вам необходимо сначала подготовить свой аккаунт, переключив его на профессиональный (как это сделать, [рассказали выше](#kak-podgotovit-svoi-akkaunt-instagram)).&#x20;

Далее перейдите в раздел "Каналы" в Salebot:

<figure><img src="/files/uiHEqh1hpoQJMFVeVDuJ" alt="" width="267"><figcaption></figcaption></figure>

После чего найдите плашку Instagram для подключения к Salebot:

<figure><img src="/files/FxwNW17BEx3ovrDWNtW7" alt=""><figcaption></figcaption></figure>

Вам откроется модальное окно следующего вида:

<figure><img src="/files/uUPYx023uQrq6leweUT1" alt="" width="563"><figcaption></figcaption></figure>

Далее вам остается кликнуть по кнопке "Вход", чтобы перейти непосредственно на официальный сайт социальной сети и ввести свой логин и пароль:

<figure><img src="/files/FXxiJ6yei1ThnUNwHII0" alt="" width="563"><figcaption></figcaption></figure>

Далее вам остается разрешение на подключение Аккаунта к Salebot:

<figure><img src="/files/dtr143tjO9gngvNf600H" alt=""><figcaption></figcaption></figure>

При успешном подключении будет уведомление:

<figure><img src="/files/Vxm1R6QgYePEDrUPK8Nn" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
**У API нет доступа к аккаунтам Instagram**<mark style="color:red;">**\***</mark>**, не являющимся бизнес-аккаунтами.**

Перед тем, как подключить чат-бота к Instagram<mark style="color:red;">**\***</mark>, вы должны перевести аккаунт в тип бизнес.

*Аккаунт должен быть именно бизнес аккаунтом, а не аккаунтом автора!*
{% endhint %}

Если вы всё настроили по инструкции, но бот не работает, проверьте подключение в самом аккаунте Инстаграм<mark style="color:red;">\*</mark>. Настройки - Конфиденциальность - Сообщения.

&#x20;Там в самом низу нужно включить ползунок "Разрешить доступ к сообщениям".

<figure><img src="/files/JFiudIGF36DszdZbaolT" alt="" width="563"><figcaption></figcaption></figure>

ff


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/instagram/connection.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
