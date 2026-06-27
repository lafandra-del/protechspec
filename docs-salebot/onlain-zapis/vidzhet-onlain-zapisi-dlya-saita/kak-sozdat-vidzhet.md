> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/vidzhet-onlain-zapisi-dlya-saita/kak-sozdat-vidzhet.md).

# Как создать виджет

{% hint style="info" %}
Предварительно нужно создать филиал и настроить услуги, назначив их сотрудникам. Как это сделать, рассказали в разделе "[Онлайн-запись](/onlain-zapis/onlain-zapis-dlya-uslug.md)"
{% endhint %}

Для начала перейдите в раздел "Виджеты", кнопку можно найти в верхнем меню:

<figure><img src="/files/VhKRRYGtKhELlLb2MnSt" alt=""><figcaption></figcaption></figure>

Если в проекте еще не было созданных виджетов, то в середине экрана в разделе "Виджеты" вы увидите четыре кнопки:

<figure><img src="/files/MBdSbNpe5P4NyJSTMBDr" alt="" width="375"><figcaption></figcaption></figure>

Нажмите на кнопку "Виджет онлайн-записи", после чего вы перейдете в настройки виджета:

<figure><img src="/files/p0uP5Olr6D1em4tiVJMb" alt=""><figcaption></figcaption></figure>

### Основная информация

<figure><img src="/files/0aHtvMwDIMj2QHr31lDT" alt="" width="563"><figcaption></figcaption></figure>

В данной вкладке необходимо прописать наименование виджета (будет отображено на сайте) и домен сайта, на котором вы хотите отображать виджет с онлайн-записью (если сайт собран не на стороне Сейлбот). Если сайт собран в конструкторе Сейлбота, то указывать домен не нужно.&#x20;

Далее выберите филиал, услуги и исполнители которого будут отображаться в виджете:

<figure><img src="/files/BUBC8HoqBZV4QkruMrhm" alt=""><figcaption></figcaption></figure>

Теперь можно переходить к кастомизации виджета.

<figure><img src="/files/fWYb0c8Yl0pkH1EYUSWa" alt=""><figcaption></figcaption></figure>

### Настройки внешнего вида

Логотип и название виджета будут отображены в его шапке:

<figure><img src="/files/a6woXHW7CH783yiAz5kf" alt="" width="563"><figcaption></figcaption></figure>

Далее в виджете можно прописать заголовок и подзаголовок, которые отображаются над кнопками выбора услуг или специалиста:

<figure><img src="/files/AHXzaymvjg0kmgHjBZGE" alt="" width="563"><figcaption></figcaption></figure>

#### Цветовая гамма виджета

Цветовую гамму виджета можно выбрать по своему усмотрению:

1. Фон виджета:

<figure><img src="/files/j0Z6gdrmYNjS1gt7Rmc7" alt="" width="349"><figcaption></figcaption></figure>

2. Главная тема бренда виджета: отобразит кнопки, цены и иконки в установленном цветовом решении:

<figure><img src="/files/hg2hOvdi61uO5bK3d8c4" alt="" width="349"><figcaption></figcaption></figure>

3. Цвет текста: изменит цветовое решение текста кнопки или основного текста в зависимости от выбранного значения:

<figure><img src="/files/iO4ukc7Esmv7Z3uA2bi3" alt="" width="311"><figcaption></figcaption></figure>

4. Текст кнопки

<figure><img src="/files/Fxwb4vhAf6n4Fdp3i7s4" alt="" width="375"><figcaption></figcaption></figure>

По умолчанию в кнопке располагается текст "Выбрать услуги" и "Выбрать специалиста", но можно задать собственный текст:

<figure><img src="/files/m5A1dtNva4VubWLtEnYd" alt="" width="375"><figcaption></figcaption></figure>

Теперь сохраните настройки:

<figure><img src="/files/7jz5q5L3nMfINjFyuUcd" alt=""><figcaption></figcaption></figure>

### Как принимать предоплату при записи клиента?

Чтобы настроить предоплату при записи клиента, вам достаточно активировать чекбокс в настройках виджета и выбрать подключенный сервис для приема платежей.

1. В настройках виджета активируйте переключатель "Запись по предоплате":

<figure><img src="/files/IlsfZbFilWblS2jCYlE3" alt=""><figcaption></figcaption></figure>

2. Затем выберите необходимый сервис для приема платежей:

<figure><img src="/files/VbjUuzc1w0Awd3BNbq6g" alt="" width="563"><figcaption></figcaption></figure>

И не забудьте сохранить настройки:

<figure><img src="/files/jE9KyHJMLPCvZaQ2rgT8" alt=""><figcaption></figcaption></figure>

Теперь когда клиент будет записываться к вам на услуги (или бронировать рейс автобуса), то вы сможете принимать предоплату:

<div><figure><img src="/files/kL7wstqRviz6U0WmGHIN" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/TqFXHwlHGaZryUHr9vXM" alt="" width="563"><figcaption></figcaption></figure></div>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/vidzhet-onlain-zapisi-dlya-saita/kak-sozdat-vidzhet.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
