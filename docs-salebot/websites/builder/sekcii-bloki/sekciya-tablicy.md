> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/sekcii-bloki/sekciya-tablicy.md).

# Секция "Таблицы"

Секция **«Таблицы»** — это универсальный инструмент для структурированной подачи информации на сайте. Теперь вы можете удобно оформлять расписания, прайс-листы, сравнения товаров, программы мероприятий и многое другое прямо в конструкторе SaleBot — без необходимости верстки или подключения сторонних решений.

<figure><img src="/files/ntWDmdXlETuLcFqZEDjk" alt=""><figcaption></figcaption></figure>

С помощью этой секции вы сможете:

* добавлять **любое количество строк и столбцов**;
* оформлять заголовки таблиц;
* **вставлять кнопки, ссылки** прямо в ячейки;
* настраивать **выравнивание, отступы и цвета**;

Также доступны стилизация строк, чередование цветов, адаптивная верстка под мобильные устройства.

Такой подход подходит для:

* **расписаний мастер-классов** или мероприятий;
* **таблиц цен** на услуги или товары;
* **сравнительных характеристик** продуктов;
* **контактных данных** по филиалам;
* и многих других задач.

## Создание таблицы

Чтобы создать таблицу, перейдите в редактирование страницы сайта. Найдите кнопку "+", чтобы добавить новую секцию:

<figure><img src="/files/DBBBaD9zBqy55AnSNz46" alt=""><figcaption></figcaption></figure>

Далее в открывшемся меню в правой части экрана найдите кнопку "Таблица" и нажмите на нее, чтобы секция добавилась на страницу:

<figure><img src="/files/a03WUvLLaXCFMOm5KEUq" alt=""><figcaption></figcaption></figure>

В конструкторе существует шаблон таблицы с заполненными полями, поэтому таблица добавится следующего вида:

<figure><img src="/files/bDEHRTMrTHCeyAdsUW54" alt=""><figcaption></figcaption></figure>

Справа будет открыто меню с настройками контента таблицы.

## Контент секции

Контент редактируется в секции с помощью простых и понятных настроек:

<figure><img src="/files/CXw41ZCfMUGUVtvTt56I" alt="" width="563"><figcaption></figcaption></figure>

Названия столбцов указываются в поле "Шапка таблицы" через точку с запятой:

<figure><img src="/files/Pg9O7IKrPvxmkY3ffJ8f" alt=""><figcaption><p>Шапка со значением "Время;Шеф-повар;Зал;Уровень;Тема мастер-класса"</p></figcaption></figure>

Содержимое таблицы редактируется ПОСТРОЧНО, где значение каждой ячейки таблицы в строке также прописывается через точку с запятой:

<figure><img src="/files/oeAt2QOJiGLVIYrf5IkN" alt=""><figcaption><p>Первая строка со значением "09:00 - 10:30;Ирина Белова;Зал 1;новичок;Домашняя итальянская паста"</p></figcaption></figure>

Каждая последующая строка таблицы начинается с НОВОЙ строки.

Ширина колонок также указывается через точку с запятой:

<figure><img src="/files/QvUtatL2OFPG40hJUCEr" alt="" width="563"><figcaption><p>Можно оставить пустым, тогда ширина <br>автоматически будет определена по контенту</p></figcaption></figure>

### Как добавить кнопку/ссылку в таблицу

Чтобы добавить кнопку в ячейку таблицы,  передайте в строку ячейки "<mark style="color:blue;">**Название кнопки button=<https://sbsite.pro>**</mark>" без кавычек:

<figure><img src="/files/XsQbqgw8d69qCih2WsYQ" alt=""><figcaption></figcaption></figure>

Чтобы добавить ссылку в ячейку, вшитую в фразу/слово, передайте в строку ячейки значение "<mark style="color:blue;">**Фраза, в которую будет вшита ссылка link=<https://sbsite.pro>**</mark>**"**

<figure><img src="/files/KZOFrSP6luNiWf4W9C3r" alt=""><figcaption></figcaption></figure>

## Настройки секции

Чтобы перейти в настройки секции,  наведите на Таблицы и найдите соответствующую кнопку "Настройки":

<figure><img src="/files/3E1A6iba89gJ3a4qCTSJ" alt=""><figcaption></figcaption></figure>

Здесь вы увидите настройки шрифтов, цветов и границ для таблицы:

<figure><img src="/files/GXj2cI5uS3MjRi3kiWBg" alt=""><figcaption></figcaption></figure>

Здесь можно выбрать цвет четных и нечетных строк, подобрать цвет таблицы, а также кнопок, добавленных в ячейки таблицы.

Чекбоксы для выравнивания границы и значений в столбце:

<figure><img src="/files/NsfwTf1ugglYHhEgesWZ" alt=""><figcaption></figcaption></figure>

1. Скрыть вертикальные границы

При активном положении чекбокса, вертикальных границ таблицы нет. Если деактивировать чекбокс, то будут разделены столбцы границами по вертикали:

<figure><img src="/files/VpXQvoQAQRbJMForRIhO" alt=""><figcaption></figcaption></figure>

2. Скрыть верхнюю границу

Если активировать чекбокс, то верхняя граница не будет видна. При неактивном положении чекбокса верхняя граница располагается над шапкой:

<figure><img src="/files/3WL7HKDCDe0h1KfUUWre" alt=""><figcaption></figcaption></figure>

3. Не применять выравнивание к первому столбцу

По умолчанию активный чекбокс. Если отключить, то первый столбец будет выровнен относительно таблицы.

### Универсальные настройки шрифтов, фона и отображения

Для каждого блока существуют универсальные настройки шрифтов, фона и отображения — то есть такие настройки являются схожими для разных блоков.

<figure><img src="/files/g7QV5hcxludTLbMG9Q36" alt=""><figcaption></figcaption></figure>

Аналогично, к секции (блоку) "Таблицы" можно применить различные настройки шрифтов, выбрать или добавить собственные шрифты, размер, начертание, выбрать фон для секции, а также настроить ширину контента, диапазон видимости на устройствах.&#x20;

{% hint style="info" %}
Подробнее о настроках шрифтов, фона и отображений, рассказали в статье "[Универсальные настройки секций](broken://pages/3znyClBeT2ARaTjeA1OU)".
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/sekcii-bloki/sekciya-tablicy.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
