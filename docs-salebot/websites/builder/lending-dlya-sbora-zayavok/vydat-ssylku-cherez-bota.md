> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/lending-dlya-sbora-zayavok/vydat-ssylku-cherez-bota.md).

# Выдать ссылку через бота

Чтобы выдать ссылку через Чат-бота, в конструкторе создайте блок:

<figure><img src="/files/JUaOUVxXKzo8GDBYad1O" alt=""><figcaption></figcaption></figure>

В калькуляторе назначьте переменную и присвойте ей значение в виде метода quiz\_link(ID сайта):

<figure><img src="/files/FOjDGcbG9PqpTdw7MTLS" alt=""><figcaption></figcaption></figure>

В скобках необходимо указать номер лендинга:

<figure><img src="/files/9OWCpPGx0JdesMNZSUWd" alt=""><figcaption></figcaption></figure>

Далее вложите переменную либо в кнопку, либо в поле URL во вложениях:

а) в поле URL во вложении:

<figure><img src="/files/PmImHRwUFqp9lhPWpRyf" alt=""><figcaption></figcaption></figure>

б) в кнопке:

<figure><img src="/files/c4zdVHwAaym4PSexwKEN" alt=""><figcaption></figcaption></figure>

После перехода клиента по ссылке и заполнения им формы, всплывет сообщение об успешном отправлении формы в систему, а в разделе "Заявки" в настройках сайта вы увидите заявки ваших клиентов:

<figure><img src="/files/4BiA3fd96sNdlLmIbs0t" alt=""><figcaption></figcaption></figure>

При этом помните, что в чат-бот <mark style="color:red;">**коллбек**</mark> об успешном заполнении формы <mark style="color:red;">**не приходит**</mark>:

<figure><img src="/files/I0dqEFtGvzUvBxXhC15R" alt="" width="563"><figcaption></figcaption></figure>

Все данные будут отображены в разделе "Заявки", если кликните на плашку лендинга "Форма":

<figure><img src="/files/sO4ZuIv7xI1oBzF4so90" alt="" width="563"><figcaption></figcaption></figure>

Также во вкладку "Заявки" можно перейти в общем разделе с сайтами, кликнув по кнопке "Заявки":

<figure><img src="/files/0epciDQDf9B7T3KJ1mm6" alt="" width="563"><figcaption></figcaption></figure>

Во вкладке "Заявки" вы увидите таблицу с информацией о ваших клиентах, которые заполнили данную заявку:

<figure><img src="/files/aFIuorYb8Maj01xsVJJt" alt=""><figcaption></figcaption></figure>

Далее отработанные заявки можно пометить галочкой и удалить:

Нажав на кнопку "Открыть ответы", можно просмотреть сводку вопросов пользователей, прошедших опрос: какой вариант ответа, из предложенных вами, наиболее часто выбирают ваши клиенты; а также просмотреть данные (например, номера телефонов), которые были отправлены при заполнении формы.

При этом отдельно можно просмотреть, какое количество человек выбрало тот или иной вариант ответа во вкладке "Вопросы"; а также просмотреть выбранные ответы отдельными пользователями.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/lending-dlya-sbora-zayavok/vydat-ssylku-cherez-bota.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
