> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/loop.md).

# Как создать петлю

Чтобы при направлении сообщения, отличного от условий в стрелках, бот не замолкал, а продолжал работу, добавим петлю.&#x20;

Для этого зациклим вопрос, добавив петлю без условия вокруг блока.&#x20;

{% hint style="info" %}
Полезно знать!

Блоки и соединения без условия в приоритете ниже тех, что с условиями.
{% endhint %}

Для создания петли нажмите на блок, который нужно зациклить, и в открывшейся форме настроек нажмите на многоточие справа в верхнем углу и далее  выберите “Создать петлю”.

<figure><img src="/files/BWyujYBbMCZdcl0skMaD" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Как будет работать схема?

На рисунке 1 продемонстрирована схема чат-бота из четырех блоков.&#x20;

1. Блок "Привет, я бот" — приветственный блок, отрабатывается, когда пользователь написал в диалог с ботом; в этом блоке существует кнопка "Нажми меня".
2. Если клиент нажмет на кнопку, он перейдет в следующий блок "Вот ты и нажал на кнопку", в котором также есть кнопки "Да" и "Нет".&#x20;
3. Если клиент ответит на вопрос "Да", то перейдет в блок "Вы жаворонок!".
4. Если клиент ответит на вопрос "Нет", то перейдет в блок "Вы не жаворонок!".&#x20;

Петля нужна для случаев, если клиент не будет нажимать на кнопки и направит любое другое сообщение в боте, которое отличается от условий, описанных в стрелке.

Как собрать схему, рассказали в статье "[Как создать чат-бота](/chatbots/builder/settings/main.md)", как добавить в бот варианты ответов, рассказали в статье "[Варианты ответов в боте"](/chatbots/builder/settings/bot_answer.md)
{% endhint %}

Таким образом, будет создана петля в схеме:

<figure><img src="/files/7BDVTGkoFrZ1phwbxmFN" alt="" width="563"><figcaption></figcaption></figure>

Теперь если клиент отправит в бот сообщение, отличное от "Да" или "Нет", то ему повторно будет направлено сообщение из второго блока:

<figure><img src="/files/t18Y4Xw0kBe9qlQopN0B" alt="" width="375"><figcaption></figcaption></figure>

Что делать, если клиент не отвечает на сообщение бота? Можно направлять сообщения по таймеру, чтобы напоминать клиенту, что нужно бы ответить на вопрос.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/loop.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
