> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-uslug/udalit-izmenit-filial.md).

# Удалить / изменить филиал

Чтобы изменить основную информацию о филиале (например, его адрес, название) или удалить его, необходимо перейти в филиал, который требует изменений или удаления.

Для этого разверните выпадающий список с филиалами и кликните на тот, информацию о котором необходимо скорректировать:

<figure><img src="/files/fCljEZvded5KENJpwkpo" alt="" width="563"><figcaption></figcaption></figure>

Далее найдите кнопку настроек и кликните по ней:

<figure><img src="/files/2ab9vmYs0kJeejOTJfV1" alt="" width="563"><figcaption></figcaption></figure>

После чего откроется модальное окно для изменения информации о филиале или для его удаления:

<figure><img src="/files/errMUd3iWpDMJoV0pMTA" alt=""><figcaption></figcaption></figure>

В полях "Название филиала" и (или) "Адрес" скорректируйте информацию, затем нажмите на "Сохранить". Тогда информация будет изменена и сохранена.&#x20;

Чтобы удалить филиал, пропишите "Подтвердить" в поле удаления филиала.&#x20;

{% hint style="danger" %}
Внимание!&#x20;

Если удалить филиал, удалятся все записи ваших клиентов!&#x20;

Восстановить или вернуть филиал и его записи невозможно!&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-uslug/udalit-izmenit-filial.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
