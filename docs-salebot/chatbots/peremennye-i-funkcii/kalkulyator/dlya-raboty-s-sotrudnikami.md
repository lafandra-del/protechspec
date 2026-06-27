> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-sotrudnikami.md).

# Для работы с сотрудниками

## Для уведомления сотрудника

**send\_notification(text, users, priority) -** отправляет уведомление указанным сотрудникам.&#x20;

Параметры:

<table><thead><tr><th width="268">Параметры</th><th>Значение</th></tr></thead><tbody><tr><td><mark style="color:red;"><strong>!</strong></mark> text </td><td>обязательный параметр, текст уведомления</td></tr><tr><td>users</td><td><p>необязательный параметр, список емейлов сотрудников в проекте, которым нужно отправить уведомление в мессенджер. </p><p>Если не указать, уведомление будет отправлено всем сотрудникам</p></td></tr><tr><td>priority</td><td><p>необязательный параметр, указывает важность уведомления. </p><p>Возможные значения: </p><p>0 - нейтральный (по умолчанию);</p><p>1 - успех; </p><p>2 - предупреждение; </p><p>3 - ошибка. </p></td></tr></tbody></table>

### Пример использования

В примере показано, что параметр users передан в качестве массива с email-адресами сотрудников проекта.&#x20;

Далее параметр users передается в функции без кавычек и скобочек:

<figure><img src="/files/VLh5m6KoHRCes00gpeBw" alt="" width="563"><figcaption></figcaption></figure>

Если вам необходимо направить конкретному сотруднику письмо, то users можно передать следующим образом:

<figure><img src="/files/ExYgq9DWnbg8arxwaNya" alt="" width="563"><figcaption></figcaption></figure>

Уведомления:&#x20;

<figure><img src="/files/bpk6dsrQHsq1QFtw27Gr" alt="" width="380"><figcaption></figcaption></figure>

{% hint style="info" %}
Получение уведомлений из этого метода изменяется в настройках уведомлений, в разделе "Чат-бот
{% endhint %}

`Пример кода для копирования:`

`users = ["email_one@gmail.com", "email_two@gmail.com"]`

`send_notification('Текст уведомления', users, 1)`

### Получить информацию о сотруднике

get\_operator\_info(field\_name) - получить данные о сотруднике.

| Параметры                                             | Описание                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ----------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <mark style="color:$danger;">**!**</mark> field\_name | <p>параметр, отвечающий за поле, которое необходимо получить. <br>Возможные значения:<br>- description - описание сотрудника</p><p>- email - емейл сотрудника, указанный в доп. данных</p><p>- phone - телефон сотрудника, указанный в доп. данных</p><p>- position - данные из поля "должность", указанные в доп. данных</p><p>- custom\_field1 - данные из доп. поля №1</p><p>- custom\_field2 - данные из доп. поля №2</p><p>- custom\_field3 - данные из доп. поля №3</p> |


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-sotrudnikami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
