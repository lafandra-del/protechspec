> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/sheets.md).

# Как добавить листы воронки

С помощью листов вы можете разделять бота так, как вам удобно. Это все то же огромное поле, где размещаются все ветки бота, но визуально разделено на отдельные страницы. При этом сам бот работает в едином поле.

При разрыве цепочек образуются связующие блоки.

Чтобы добавить новый лист, нажмите на плюсик в нижнем правом углу поля. И введите название нового листа.

<figure><img src="/files/vM8MFDswXtB0TxM6Oo76" alt=""><figcaption><p>Создание нового листа</p></figcaption></figure>

Чтобы продолжить текущую схему на новом листе, кликните на блок или выделите несколько блоков и нажмите на стрелку ![↪](https://lh4.googleusercontent.com/F77Xq_mHDBTrCAue4M9ndKA0jHU8jQSoJwsbOc5lE5yRjCiXfFWV6tS2A6ooV5B6A-AyOZaquEzQSj6BkoW8A8W-f1XpX97VIPtK9uIFs-1g3s_zX8SK8RaHOLwlUzLq2dSTKscg) с подсказкой "Нажмите, чтобы связать этот блок с другим листом". После появления предупреждения о переносе, выбираете нужный лист из списка внизу возле плюсика.

![](https://lh4.googleusercontent.com/qH4fAtd6ZEEOl3xJ1Y1O1ckJfZvLruzAikoeTpetI1mztKRE-SJsTG1mG8qn9bDT-k1e789OlRqSHDlTK7xSixZYtUZejjY_3bGvqNjoGG_u15FfkdKxM-GeZ7kKXzSqTxgaSWhZ)

В открывшемся окне вы видите инструкцию о том, что надо сделать для окончания переноса.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/sheets.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
