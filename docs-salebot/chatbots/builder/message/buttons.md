> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/buttons.md).

# Вкладка: Кнопки

<figure><img src="/files/U6nXVeGacnFIkbmNoRdo" alt="" width="563"><figcaption></figcaption></figure>

Кнопки можно создавать [двумя способами](/chatbots/builder/connections.md): \
\- стрелками с условием (включить настройку Отображать как кнопку)

<figure><img src="/files/FepVHkP3BDKqFJZeHiwD" alt=""><figcaption></figcaption></figure>

\- в редакторе блока Вкладка Кнопки

### Поле: Кнопки

Быстрый способ создать кнопки: достаточно кликнуть "Добавить кнопку", заполнить необходимые поля и сохранить.&#x20;

<figure><img src="/files/scSHQvkVsklP8M8VnB7O" alt="" width="563"><figcaption></figcaption></figure>

Также в этом поле легко менять кнопки местами, зажав левую кнопку мыши и перетянув кнопку в новое положение.&#x20;

<figure><img src="/files/V1Yb8Rv8q7NrGjs0ixmD" alt="" width="563"><figcaption></figcaption></figure>

Под визуальным отображением кнопок есть переключатель типа созданных кнопок : Клавиатура (reply кнопки) и Кнопки в тексте (inline кнопки), а также автоматический режим:

<figure><img src="/files/9QpXd7qweVtLoCg8VNNe" alt="" width="563"><figcaption></figcaption></figure>

### Поле: Расширенные настройки кнопок

<figure><img src="/files/Ql8iJerNAKJdZYiYlQ7E" alt="" width="375"><figcaption></figcaption></figure>

### **Чекбокс Показать кнопки**

**Показать кнопки:** по умолчанию данный ползунок включен и клиенту показываются кнопки.

<figure><img src="/files/c2yCu8FKdaZVXSuqRYW0" alt="" width="563"><figcaption></figcaption></figure>

### Чекбокс Показать стрелки как кнопки

Показать стрелки как кнопки: по умолчанию данный ползунок включен и условия стрелок (соединений) из данного блока отображаются как кнопки

<figure><img src="/files/WFTfDxNq2wKOSzpOyKDf" alt="" width="563"><figcaption></figcaption></figure>

### **Поле: Подсказка в мессенджерах без кнопок**

Поле "**Подсказка в мессенджерах без кнопок**" необходимо, когда ваш бот должен работать одновременно в мессенджерах с кнопками и без (например, Telegram и обычный Whatsapp). Так как Whatsapp не поддерживает кнопки, то в этом поле вы можете предложить пользователям текст с цифровым меню. Он будет отображаться только в Whatsapp. Применяется для навигации внутри бота.

<figure><img src="/files/F9wZOQGHogin6zqi4jWC" alt="" width="563"><figcaption></figcaption></figure>

### **Поле: Расширенные настройки кнопок - код кнопок**

Поле "**Расширенные настройки кнопок (код кнопок)"** можно использовать для создания уникальных кнопок с помощью кода.

<figure><img src="/files/bqc9o2DgUzt1ivzTPYqK" alt="" width="563"><figcaption></figcaption></figure>

Все возможные настройки кнопок можно прочитать [в этой статье](/chatbots/builder/message/buttons/type.md).


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/buttons.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
