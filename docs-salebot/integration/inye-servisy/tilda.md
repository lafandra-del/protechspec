> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/inye-servisy/tilda.md).

# Tilda

## Интеграция лендинга Salebot в блок Tilda

Чтобы интегрировать на ваш сайт Tilda форму бота, создайте в разделе Минилендинги новый минилендинг, где нужно указать необходимые вам данные.&#x20;

После создания минилендига у вас появится кнопка как на  рис.1 По нажатию на эту кнопку, вы получите html код как на картинке.&#x20;

![рис.1  раздел Минилендинги - кнопка Код для сайта - скопировать код формы с кнопками для сайта](/files/vTTVjPUwyEvkHjbDfjA8)

Данный код нужно вставить в блок на вашем Тильда сайте -> код можно ставить в pop-up

{% hint style="info" %}
Обратите внимание! \
В настройках минилендинга  поле Тег должно быть обязательно заполнено.\
\
Оформление минилендинга НЕ передается на ваш сайт, только форма сбора данных и кнопки мессенджеров.&#x20;
{% endhint %}

![](/files/-MT0E0HzVY7PkSTuw_Gr)

Для этого откройте   "Библиотеку блоков" > "Другое" и добавьте блок "Т123. HTML-код"

![](/files/-MT0E3OO4NMRde8Z2Elr)

В режиме редактирования “Контент”, добавьте код с нашего сайта

![Пример добавления кода в блок](/files/agYuL8ux2YnVFFzg9OWb)

\
В этом блоке на вашем сайте должны появится поля ввода для телефона и почты, если поставлены соответствующие галочки в настройках минилендинга, а также кнопки мессенджеров.

![](/files/atM8pvj1v6KUCcI5eLeF)

Данный функционал позволяет:

* Сохранять utm метки из поисковой строки вашего сайта, а также телефон, почту и другие данные из формы сбора заявок в переменные клиента.&#x20;
* Перенаправлять клиента в бота, используя Тег из настроек минилендинга

Чтобы работали скрипты статистики, их нужно указывать непосредственно в Тильде, код указанный в настройках минилендинга для тега head вставлен не будет.&#x20;

html код для тега body указанный в настройках минилендинга остается рабочим.

{% hint style="info" %}
Скрипт может быть указан на html-странице вашего стороннего сайта и использован по тому же назначению
{% endhint %}

### Передать все переменные, с которыми открылся сайт

{% hint style="info" %}
Рассказали в статье "[Как создать сайт](broken://pages/DEo6RMg8pk6wIRpptw7g#html-css-js)"
{% endhint %}

### Передать в бота куки аналитики

{% hint style="info" %}
Рассказали в статье "[Как создать сайт](broken://pages/DEo6RMg8pk6wIRpptw7g#html-css-js)"
{% endhint %}

Воспользуйтесь возможностью создавать сайты с Salebot!

Широкий функционал от вставки видео до подключения сервисов аналитики и настройки закрытого доступа.

Пример оформления [многостраничного сайта на Сейлбот ](https://sbsite.pro/st/salebot_web_example)👈

{% hint style="info" %}
Узнать полный список возможностей можно в разделе ["Сайты для бизнеса".](broken://pages/-M1L_fPpT9ptt_t1BNvt)
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/inye-servisy/tilda.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
