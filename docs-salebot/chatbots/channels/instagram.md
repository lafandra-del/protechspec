> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/instagram.md).

# Instagram\*

{% hint style="danger" %} <mark style="color:red;">**\*Instagram**</mark>**&#x20;Принадлежат компании Meta Platforms Inc**., которая признана **на территории Российской Федерации&#x20;**<mark style="color:red;">**экстремистской и**</mark> <mark style="color:red;">**запрещена!**</mark>&#x20;
{% endhint %}

{% hint style="warning" %}
Максимальная длина текстового сообщения 1000 символов. В **закрытых аккаунтах** **боты** **работать не будут.** Учитывайте это при работе со схемой и при построении логики проекта.&#x20;
{% endhint %}

{% hint style="info" %}
В соц. сети не приходят вебхуки по рекламным постам.&#x20;
{% endhint %}

{% hint style="success" %}
Чат-боты в Инстаграм<mark style="color:red;">**\***</mark> **доступны всем бизнес-аккаунтам.**
{% endhint %}

## Памятка по работе социальной сети

{% hint style="success" %}
Со стороны Salebot интеграция <mark style="color:green;">**работает корректно**</mark>, но мы не оказываем влияния на настройки конфиденциальности в приложении пользователей.&#x20;
{% endhint %}

Ознакомиться с правилами работы в мессенджере можно в документации самого Instagram\*.&#x20;

Как правило, в мессенджере сообщения отправляются если:&#x20;

* пользователи подписаны друг на друга;
* ранее был диалог с пользователем;
* работа с запросами включена в двух аккаунтах и в принимающем и в получающем сообщения;
* запрос на переписку принят, если он был направлен;
* в сообщениях нет ссылок, которые могут быть определены внутренними алгоритмами мессенджера, как вредоносный контент;&#x20;
* существующие ссылки не ведут в другие мессенджеры;
* приложение на стороне пользователя имеет актуальную версию;
* интернет-соединение стабильно;
* акаунты, как принимающий, так и отправляющий сообщения, открыты.&#x20;
* учитываются лимиты на отправку сообщений и новые переписки (информацию об актуальных лимитах можно получить в открытых источниках).&#x20;

{% hint style="danger" %}
Обращаем внимание!

Описанные действия в статьях носят рекомендательный характер и не содержат призывов в адрес пользователей и клиентов к работе с настоящей социальной сетью.
{% endhint %}

{% hint style="danger" %}
Обращаем внимание!&#x20;

Мессенджер ужесточил правила отправки сообщений пользователям, которые на вас не подписаны.&#x20;

Теперь можно отправить только приглашение в чат, и если оно не будет принято, остальные сообщения будут уходить в спам у пользователя и они не будут отображаться у него.&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/instagram.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
