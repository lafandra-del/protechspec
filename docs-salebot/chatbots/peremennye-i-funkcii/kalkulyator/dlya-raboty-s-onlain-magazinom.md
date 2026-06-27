> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-onlain-magazinom.md).

# Для работы с онлайн-магазином

## Изменить статус оплаты у заявки в интернет-магазине

change\_order\_shop\_status(order\_id, status, update\_stock) - изменить статус оплаты у заявки в интернет-магазине

<table><thead><tr><th width="316.09375">Параметры</th><th>Описание</th></tr></thead><tbody><tr><td>order_id</td><td>id заявки в интернет-магазине. Обязательный параметр (при создании заявки этот id сохраняется в переменную клиента callback_order_id)</td></tr><tr><td>status</td><td>статус оплаты, который необходимо присвоить заявке. Возможные значения: "paid" - оплачено, "unpaid" - не оплачено. По умолчанию "paid". Необязательный параметр.</td></tr><tr><td>update_stock</td><td>изменять ли наличие товара. По умолчанию параметр выключен. Чтобы наличие товара изменилось, нужно передать "1". При передаче этого параметра и установке статуса "оплачено" количество товара в наличии уменьшится, при статусе "не оплачено" - увеличится</td></tr></tbody></table>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-onlain-magazinom.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
