> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/block_type/without_trigger.md).

# Блоки без условия

## **Блок: Состояние диалога**

{% hint style="info" %}
Если в блоке не должно быть текста, то в поле Ответ впишите *#{none} (стоит по умолчанию)*
{% endhint %}

**Состояние диалога**: белый блок, без условия. В него можно перейти только по стрелке. Предназначен для промежуточных ответов, развилки, отправки нескольких сообщений друг за другом через определенные промежутки времени.

<figure><img src="/files/7ARhSmon0NPqouEq1vah" alt=""><figcaption></figcaption></figure>

## **Блок: Закрыть сделку**

**Закрыть сделку**: блок без условия, имеет красный цвет. Основная задача данных типов блоков - это формирование заявки. При переходе в этот блок все собранные к этому моменту времени данные  (значения переменных) о пользователе отправляются в CRM систему, на электронную почту, в личный WhatsApp или Телеграм (или иной указанный в настройках проекта контакт) в виде готовой заявки. После передачи значения переменных сделки из конструктора удаляются.

<figure><img src="/files/H7bwuEkvBhW4uhBfMIzL" alt=""><figcaption></figcaption></figure>

## **Блок: комментарий**

Комментарий не является блоком для отправки сообщений. Он служит для добавления комментариев в рабочую область схемы чат-бота:

<figure><img src="/files/e6oUvA2xUe02trierZ4Z" alt=""><figcaption></figcaption></figure>

С помощью него вы можете расставить любое количество комментариев различного содержания в рабочей области воронки, например, для себя, чтобы не забыть важные детали, также чтобы обозначить, для чего нужен тот или иной блок в схеме и т.п.&#x20;

{% hint style="warning" %}
Обращаем внимание!

Блок комментарий НЕ отправляется через чат-бота, соответственно, к нему не могут быть применены условия, нельзя к комментарию провести стрелку или прописать какие-либо функции в калькуляторе.
{% endhint %}

{% hint style="success" %}
Данный блок поможет расставить акценты, написать замечания или обозначения в схеме.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/block_type/without_trigger.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
