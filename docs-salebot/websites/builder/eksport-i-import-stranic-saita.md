> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/eksport-i-import-stranic-saita.md).

# Экспорт и импорт страниц сайта

В конструкторе сайтов существует возможность экспорта (выгрузки) страницы сайта и импорта (загрузки). Это поможет, например, перенести сайт с одного вашего проекта без сборки в другие проекты с сохранением всех файлов.&#x20;

Как это сделать?&#x20;

Предварительно сохраните все изменения, которые вы внесли на сайт. Для этого нажмите на "Сохранить":

<figure><img src="/files/jFIlQ0DPjoYC97Aa9G1o" alt=""><figcaption></figcaption></figure>

В режиме редактирования вашего готовой страницы найдите кнопку "Экспорт страницы" и кликните на нее для сохранения файла:

<figure><img src="/files/QBZKeGiMvzBv9d2KWn3z" alt=""><figcaption></figcaption></figure>

По окончанию загрузки файла со страницей вы увидите сам файл в своих загрузках и уведомление об успешной загрузке файла.

Далее перейдите в настройки того сайта в проекте, в котором необходимо создать идентичную страницу и кликните по кнопке "Создать":

<div><figure><img src="/files/8U4GACNQPhuG96aL5mQI" alt="" width="563"><figcaption><p>Кликаем на сайт, в котором <br>загрузим скачанную страницу</p></figcaption></figure> <figure><img src="/files/jExie9zK3Z0imeTZcFrs" alt="" width="563"><figcaption><p>Нажимаем "Создать страницу"<br>и загружаем скачанную страницу из файла</p></figcaption></figure></div>

Далее выберите файл, который вы сохранили при экспорте страницы:

<figure><img src="/files/I8ZLiMrfDrcudHBKXQCo" alt=""><figcaption></figcaption></figure>

После чего вы увидите уведомление о том, что файл успешно загружен, а также автоматически перейдете в режим редактирования импортированной страницы:

<figure><img src="/files/HJG0bAsSUMRqS4C0WmgQ" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
При необходимости внесите необходимые настройки и <mark style="color:blue;">**нажмите на кнопку "Сохранить".**</mark>
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/eksport-i-import-stranic-saita.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
