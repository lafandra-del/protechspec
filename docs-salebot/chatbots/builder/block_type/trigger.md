> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/block_type/trigger.md).

# Блоки с условием

{% hint style="warning" %}
Обращаем внимание!

Ограничения по блокам:

1. Суммарный лимит в схеме не более 500 шт. для блоков с условием: Блок "Стартовое условие" + Блок "Не состояние" не должны в совокупности превышать 500 шт. в одном проекте.
   {% endhint %}

## **Блок: Стартовое условие**

**Стартовое условие**: блок ярко зеленого цвета, имеет наивысший приоритет. Если в поле "условие" записать ключевое слово/фразу, то цепочка бота будет запускаться именно с этого блока, когда пользователь напишет ему указанное слово/фразу.&#x20;

Пример настройки реакции бота на приветствие от клиента:

<figure><img src="/files/Iete09oyPeKpD9SaZz2C" alt=""><figcaption></figcaption></figure>

В ответ клиент получит сообщение информация об акции.

## **Блок:** Не состояние с условием

Не состояние с условием - это темно-серый блок.

По своим функциям данный вид блока аналогичен блоку Первостепенная проверка условия с той лишь разницей, что клиент в этот блок не попадает.

Такой блок поможет отправлять напоминания клиентам, информационные сообщения, рекламы и акции и иные рассылки, при этом клиента не выбьет из основной воронки.

<figure><img src="/files/JiyQ0UKwg9HByuqHArPQ" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Приоритет этого блока, по сравнению с иными блоками с условием, минимальный - это значит он сработает в самую последнюю очередь.&#x20;
{% endhint %}

### Видео-обзор "Блоки с условием"

{% embed url="<https://www.youtube.com/watch?v=92-AjG2MciE>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/block_type/trigger.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
