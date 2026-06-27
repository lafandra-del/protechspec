> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/bot_answer.md).

# Варианты ответов в боте

В схеме чат-ботов можно добавить вопросы, на который есть несколько вариантов ответа. *Варианты ответа* — это стрелки из блока. На одной будет условие “да”, на другой - “нет”.

Для этого кликнем на второй блок "Состояние" и создадим два блока ниже с помощью меню дополнительных настроек:

<figure><img src="/files/RRli3CC9TI5jyakIPwGs" alt="" width="563"><figcaption></figcaption></figure>

Таким образом мы создали два блока к нашей схеме. Дальше необходимо настроить условия в стрелках.&#x20;

<figure><img src="/files/DA5WgKK9nDL11mhtKzP0" alt="" width="375"><figcaption></figcaption></figure>

Наведите на стрелку, ведущую к блоку, и пропишите в условии вариант ответа, например, "да":

<figure><img src="/files/Rmjn6LzifaTwy24FuDrv" alt=""><figcaption></figcaption></figure>

А затем обязательно сохраните. После чего также в настройках второй стрелки укажите другой вариант ответа:

<figure><img src="/files/E1RusuofbHqdsQG48mil" alt=""><figcaption></figcaption></figure>

В предыдущем блоке, ИЗ которого ведут две стрелки с вариантами ответа, пропишите любой вопрос:

<figure><img src="/files/nRTHl7OFkFmUAEBgk8vx" alt=""><figcaption></figcaption></figure>

Теперь в блоках "Состояние", в которые ведут стрелки с вариантами ответа, пропишите ответное сообщение бота:

<figure><img src="/files/0xsGtX0o5m5DxOAUX896" alt=""><figcaption><p>Теперь итоговая схема выглядит следующим образом</p></figcaption></figure>

#### Как работает эта схема:

1. Пользователь пишет "Привет" и попадает в зеленый блок.
2. Дальше пользователь нажимает на кнопку и переходит во второй блок, который у него спрашивает: “Вы жаворонок?”
3. Пользователь пишет или нажимает кнопку “да” или “нет” и переходит в одно из состояний в зависимости от ответа.

Но что если пользователь напишет что-то иное: ни “да” и ни “нет”? Диалог не перейдет ни в одно из состояний, а останется в том же, что и был до момента написания ответа пользователем. И диалог заглохнет.&#x20;

Что делать в таком случае? Для этого воспользуемся замечательным инструментом - петлей.&#x20;

{% hint style="info" %}
Об инструменте петля — рассказали в следующей статье "[Как создать петлю](/chatbots/builder/settings/loop.md)".
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/bot_answer.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
