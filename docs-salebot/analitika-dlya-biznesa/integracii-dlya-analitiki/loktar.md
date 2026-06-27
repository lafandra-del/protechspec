> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/loktar.md).

# Loktar

## Как настроить интеграцию

Настраиваем интеграцию со стороны Salebot. Для этого заходим в настройки проекта, там включаем переключатель "Подключить Loktar" и жмем Готово.

![](/files/U6JpS7Vrd11dfxC50dmx)

Переходим в Loktar. Нажимаем на шестеренку, это Настройки таблицы:

![](/files/iUJunTN5aEYxzl49kP2e)

Включаем столбцы Salebot

![](/files/zudcEH6bOqdHKqiMAFgJ)

Обязательно выставляйте UTM-метки

![](/files/ArSwDCh7k8AXU2prrZl6)

Как их правильно использовать, читайте здесь <http://vk.com/@loktar_target-utm>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/loktar.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
