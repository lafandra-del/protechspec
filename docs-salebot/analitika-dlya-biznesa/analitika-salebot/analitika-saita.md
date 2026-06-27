> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/analitika-dlya-biznesa/analitika-salebot/analitika-saita.md).

# Аналитика сайта

Аналитика сайтов в Salebot помогает узнать количество посетителей за определенный период времени, а также количество отправленных заявок в форме отправки сайта. Это позволяет выявить конверсию любого из созданных вами минилендингов (сайтов) в определенный промежуток времени или за все время:

<div data-with-frame="true"><figure><img src="/files/8mYnos9xEgcj504VxTOK" alt=""><figcaption></figcaption></figure></div>

Для этого выберите соответствующий сайт, аналитику которого необходимо отследить, а также нужный период.

Аналитика и конверсия на сайтах являются важными показателями успешности ваших проектов: они позволяют оценить эффективность работы сайта и выявить возможности для улучшения пользовательского опыта и повышения продаж (например, сбор информации от пользователей с помощью соответствующей формы опроса).

На примере мы видим поле, в котором можно выбрать сайт, необходимый для аналитики:

<div data-with-frame="true"><figure><img src="/files/yZDQplTzceeVxmZsHD2c" alt=""><figcaption></figcaption></figure></div>

Следом идет выбор периода, за который необходимо отследить аналитику сайта:

<div data-with-frame="true"><figure><img src="/files/IzLqOEf110JPundXP8iT" alt=""><figcaption></figcaption></figure></div>

На примере выше видно количество сессий и заявок за определенный период, а также отношение числа ***сессий*** (посетителей сайта) к количеству ***заявок*** (то есть, например, отправленных через установленные на сайте ответы форм заявки на подписку, на приобретение товара, сделок в CRM и т.п.), выраженное в процентах, - что называется ***конверсией***.&#x20;

Далее можно увидеть график, в котором наглядно можно отследить изменения по выбранному периоду времени и количеству заявок и(или) сессий:

<div data-with-frame="true"><figure><img src="/files/qCR7EezA4zUW9HqLNPjE" alt=""><figcaption></figcaption></figure></div>

Чекбоксы (галочки) напротив "Сессий" и "Заявки" позволяют отобразить сессии и заявки на сайте отдельно или в совокупности.&#x20;

После графика находится таблица, в которой отображены все показатели аналитики лендинга (сайта):

<div data-with-frame="true"><figure><img src="/files/KrEYuduoTKvwNALpsHg7" alt="" width="563"><figcaption></figcaption></figure></div>

Сайт, аналитику которого мы решили просмотреть, в качестве примера был создан 4 января, соответственно показатели до создания сайта отображаются в виде нуля. Уже с 4 января в таблице видно количество сессий, заявок и их соотношение в процентах.&#x20;

Так в таблице можно отобразить показатели за день (сегодня или вчера), за неделю, месяц и т.п.&#x20;

### Видеогид

{% embed url="<https://youtu.be/5SqM093RGEU>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/analitika-dlya-biznesa/analitika-salebot/analitika-saita.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
