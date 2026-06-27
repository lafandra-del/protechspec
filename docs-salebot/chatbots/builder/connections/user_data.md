> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/connections/user_data.md).

# Пользователь вводит данные

**Пользователь вводит данные:** при включении данного переключателя, появляется дополнительное поле "Вводимые данные". В него нужно внести название переменной, в которую запишется ответ пользователя. Название переменной вводится одним словом. Переменная чувствительна к регистру. В примере ответ пользователя запишется в переменную "ответ\_пользователя":

<figure><img src="/files/wABQSk8oosMuVtHOBUlx" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
ВАЖНО!&#x20;

Стрелка со сбором данных  работает БЕЗ ЗАДЕРЖКИ в настройках данной стрелки. Это значит, что бот будет ждать пока пользователь ответит на этот вопрос.\
Чтобы пользователи не останавливались на долго в блоке перед ответом на вопрос, продумайте логику воронки и [добавьте догоняющее сообщение ](/chatbots/builder/block_type/fallback.md#blok-ne-sostoyanie)(например, с помощью блока не состояние), если нужно напомнить о себе. &#x20;
{% endhint %}

<figure><img src="/files/N7jocvWmS4PRRIsTFfnr" alt=""><figcaption><p>Верно</p></figcaption></figure>

<figure><img src="/files/ARe7fN3hd2vfkIFujccA" alt=""><figcaption><p>Неверно: Нельзя ставить задержку в стрелке со сбором данных</p></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/connections/user_data.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
