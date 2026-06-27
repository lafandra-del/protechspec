> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/bot_links/proxy.md).

# Ссылки на мессенджеры

## Как получить ссылку на бота с сайта?

Вы можете создать сайт с ссылками на ботов. При этом необязательно использовать страницы сайта, поскольку можно для таких целей взять прокси-ссылки.  В этих ссылках будут действовать настройки страницы сайта.&#x20;

Чтобы найти ссылки на месседжеры, наведите на строку со страницей сайта:

<div data-with-frame="true"><figure><img src="/files/OvB1pY4XzfCe6fW5D21d" alt=""><figcaption></figcaption></figure></div>

Далее нажмите на "Ссылки на мессенджеры", чтобы открылось меню справа:

<div data-with-frame="true"><figure><img src="/files/3DdV7Z9HzacIzFPddIgW" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="danger" %}
**Нельзя брать ссылки с кнопок сайта**. Они временные и создаются уникально под каждое посещение.
{% endhint %}

Здесь же можно увидеть встроенную статистику страницы сайта, которая считает количество переходов на страницу, клики по кнопкам и дальнейший запуск бота.&#x20;

<div data-with-frame="true"><figure><img src="/files/bqS9B3ugmjjEGXooXKz8" alt="" width="563"><figcaption></figcaption></figure></div>

После тестирования и настройки бота, а также перед запуском трафика тестовую статистику можно обнулить.&#x20;

Также можно увидеть ссылки на бота в разделе "Каналы":

<div data-with-frame="true"><figure><img src="/files/HLStG07Bx68nvs5F7EkT" alt=""><figcaption></figcaption></figure></div>

Чтобы добавить новую ссылку, нажмите +:

<div data-with-frame="true"><figure><img src="/files/Hsg7iNzcd5cZcw93hVcs" alt=""><figcaption></figcaption></figure></div>

Далее в открывшемся окне заполните поля и выберите метки, которые будут присвоены клиенту, или списки, куда попадет клиент, если напишет вашему боту при переходе по данной ссылке:

<div data-with-frame="true"><figure><img src="/files/mJTmwBvqs2nrbtgyNa7k" alt="" width="563"><figcaption></figcaption></figure></div>

Далее нажмите "Сохранить". Тогда новая ссылка появится в списке.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/bot_links/proxy.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
