> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/connections/once_click.md).

# Переходить один раз

<figure><img src="/files/ElpYrdfrBEcFOWee4GQf" alt=""><figcaption></figcaption></figure>

Если включен данный ползунок, пользователь сможет перейти по стрелке только один раз в процессе общения с ботом. При этом сообщение будет планироваться столько раз, сколько раз будет выполнено условие для планирования сообщения, к которому ведет стрелка.&#x20;

{% hint style="warning" %}
**Перейти** один раз <mark style="color:red;">НЕ РАВНО</mark> **запланировать** переход по стрелке один раз.&#x20;
{% endhint %}

Разберём варианты срабатывания стрелки с включенным ползунком Переходить один раз

Переходить один раз + Отменить сообщения с таймером

<figure><img src="/files/Cjn6eCtTHUJY18mNgI2h" alt=""><figcaption></figcaption></figure>

Если в стрелке включен ползунок Отменить сообщение с таймером, то при повторном переходе в блок Сообщение 1 отменяются ранее запланированные сообщения и остается только последнее запланированное сообщение.&#x20;

Также в стрелке включен ползунок Переходить один раз. И значит как только будет переход по стрелке в блок Сообщение 2 больше переход по этой стрелке не будет планироваться.

#### Переходить один раз. Остальные ползунки отключены

Если в настройках стрелки включен только ползунок Переходить один, то новые сообщения будут планироваться до тех, пор пока не будет совершен ПЕРЕХОД по стрелке

<figure><img src="/files/qqMOisclsI6KbhEkH5YQ" alt=""><figcaption></figcaption></figure>

Клиент переходит в блок "Сообщение 1" и планируется переход в блок "Сообщение 2". Пока пользователь не получит текст из блока "Сообщение 2" будут планироваться переходы.

Ползунок "Переходить один раз" активируется ТОЛЬКО ПРИ ПЕРЕХОДЕ.  После перехода в блок "Сообщение 2" при повторных входах в блок "Сообщение 1"  переход по стрелке больше НЕ планируется.&#x20;

{% hint style="success" %}
Будьте внимательны в настройках  и всегда тестируйте разные варианты поведения пользователей в боте
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/connections/once_click.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
