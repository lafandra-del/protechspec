> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/inye-servisy/sms-servisy.md).

# SMS-сервисы

Вы можете интегрироваться с любым сервисом отправки SMS-сообщений, у которого есть API. Данные сервисы представлены для примера интеграции.

## Как работать с SMS.RU

Пример работы с [sms.ru](https://vk.com/away.php?to=http%3A%2F%2Fsms.ru\&cc_key=)\
\
Запрос: **GET**\
url:\
**<https://sms.ru/sms/send?api\\_id=#{sms\\_api\\_key}\\&to=#{phone}\\&msg=#{msg}\\&json=1**\\>
\
где \
\&#xNAN;**#{sms\_api\_key}\*\* - api ключ сервиса\
\&#xNAN;**#{phone}** - телефон пользователя, кому уходит смс\
**msg** - сообщение

<figure><img src="/files/W2zaoUtxaGo32bPARMSN" alt=""><figcaption></figcaption></figure>

Ссылка для регистрации: [https://evlanalytics.sms.ru ](<https://evlanalytics.sms.ru >)


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/inye-servisy/sms-servisy.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
