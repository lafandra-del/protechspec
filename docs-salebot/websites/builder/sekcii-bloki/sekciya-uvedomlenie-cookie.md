> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/sekcii-bloki/sekciya-uvedomlenie-cookie.md).

# Секция "Уведомление" (cookie)

**Cookie-файлы (или HTTP-куки)** представляют собой специальные данные, сохраняемые в браузере для хранения сведений о пользовательской активности на сайте.&#x20;

Они позволяют системе распознавать пользователя: так вы можете отслеживать посетителей сайта в аналитике, просматривать количество уникальных пользователей, количество подключений бота, заявок, общую конверсию, количество сессий.&#x20;

<figure><img src="/files/3xyp1hU3tlkifopHWXub" alt=""><figcaption><p>Вкладка "Сайты" в разделе "Аналитика"</p></figcaption></figure>

Чтобы информировать пользователей о том, что сайт собирает обезличенную информацию о посетителях сайта, нужна плашка о куки (файлах cookie):

<figure><img src="/files/D048xuGontYOXAQkfkz3" alt=""><figcaption><p>Пример отображения уведомления о cookie на сайте</p></figcaption></figure>

В конструкторе сайтов Сейлбот существует секция, которая поможет информировать пользователей об использовании cookie-файлов на сайте.&#x20;

## Как добавить секцию

Для начала необходимо перейти в режим редактирования страницы сайта. Для этого:

1. Перейдите в раздел "Сайты":

<figure><img src="/files/iSlGGZZY6R8egNplYNex" alt="" width="444"><figcaption></figcaption></figure>

2. Выберите сайт, на страницу которого хотите добавить уведомление об использовании куки, и нажмите на плашку сайта:

<figure><img src="/files/BuvwYVPl9UwqbZd3q8B1" alt="" width="563"><figcaption></figcaption></figure>

а) если многостраничный сайт, то вы перейдете в настройки сайта в раздел с отображением всех существующих страниц сайта:

<figure><img src="/files/HbBWjq70qVTyTqAXUPrc" alt=""><figcaption></figcaption></figure>

Здесь нужно выбрать страницу, на которую хотите поместить уведомление о файлах куки. Традиционно для отображения уведомления используют главную страницу сайта.

Тогда вы перейдете в режим редактирования главной страницы:

<figure><img src="/files/jWZwQ38xboX1YX5nCD4F" alt=""><figcaption></figcaption></figure>

б) если сайт одностраничный (лендинг, форма, квиз, опрос), то при клике на плашку сайта:

<figure><img src="/files/elf7OSQjj57aMLXtfNHe" alt="" width="563"><figcaption></figcaption></figure>

Вы перейдете в раздел общей информации о лендинге (форме, квизе, опросе), где отображается информация о заявках. В свою очередь, вам нужно найти кнопку "Редактировать" и кликнуть по ней:

<figure><img src="/files/F6SiHy90e5XI5aLAp3bk" alt=""><figcaption><p>прим: все данные вымышлены, совпадения случайны</p></figcaption></figure>

Тогда вы перейдете в режим редактирования страницы лендинга (квиза, формы, опроса):

<figure><img src="/files/sOOedR0tY8RKAsEkDlJp" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Теперь можно перейти к созданию секции и ее настройкам.
{% endhint %}

### Создание секции на странице сайта

В режиме редактирования страницы сайта (лендинга, квиза, формы или опроса) наведите на рабочую область редактирования, чтобы найти кнопку "+":

<figure><img src="/files/tHz49BtKrVfpglRPTlp9" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Секцию "Уведомление" (cookie) можно добавить в любой части сайта: как в начале, в середине, так и в конце. Уведомление о файлах куки будет всплывать сразу, как только пользователь перейдет на данную страницу, если сайт многостраничный, или перейдет на лендинг (форму, квиз, опрос).&#x20;
{% endhint %}

Далее нажмите плюс, чтобы открылся правый бар со списком секций для страницы:&#x20;

<figure><img src="/files/Ur1if3biA0X1zFM9ZDXG" alt=""><figcaption></figcaption></figure>

Далее нажмите на "Уведомление", чтобы добавить секцию куки на сайт:

<figure><img src="/files/3tbJzmPSmC4CKsERbIq1" alt=""><figcaption></figcaption></figure>

Секция "Уведомление" добавится на сайт, при этом автоматически откроется правый бар для редактирования контента куки:

<figure><img src="/files/460S0ZOJjGgaseRyedTd" alt=""><figcaption></figcaption></figure>

## Редактировать контент секции

В поле "Текст" можно изменить текст самого уведомления:

<figure><img src="/files/K9BTugb4yU9b0UAAcaK7" alt=""><figcaption></figcaption></figure>

По умолчанию в секции отображается текст "Мы используем файлы cookie, чтобы обеспечить наилучшее взаимодействие с сайтом".&#x20;

Также можно изменить текст кнопки:

<figure><img src="/files/tkGZw2bVdwqeoP3hD2c1" alt=""><figcaption></figcaption></figure>

По умолчанию в кнопке отображается текст "Хорошо, больше не показывать".&#x20;

Для текста уведомления и кнопки существуют различные настройки, аналогичные любому текстовому редактору:

1. начертание;
2. жирность;
3. курсив;
4. подчеркивание;&#x20;
5. размер шрифта;&#x20;
6. цвет;
7. выделение текста;&#x20;
8. добавление ссылки прямо в текст;
9. выравнивание;
10. добавление маркированного списка и др.:

<figure><img src="/files/eT7ss04Lr7R35sW4Yai0" alt="" width="563"><figcaption></figcaption></figure>

Например, вы можете более ярко выделить текст уведомления, а также вшить в ссылку в тексте и в кнопке на файл с подробной информацией о том, для чего вам нужны файлы куки:

<figure><img src="/files/g8Qapaqa5ybPVqrU1Qrh" alt=""><figcaption></figcaption></figure>

После того как вы закончили с текстовыми элементами контента, можно перейти к настройкам секции. Нажмите на "Сохранить и закрыть", чтобы закрыть правый бар редактирования контента:

<figure><img src="/files/Gkk6ES3Z4QJM9mPM6bbV" alt=""><figcaption></figcaption></figure>

## Настройки

Чтобы перейти в настройки секции, наведите на секцию куки и кликните на кнопку "Настройки":

<figure><img src="/files/7DlH1tbXe5o4d2BIBipc" alt=""><figcaption></figcaption></figure>

Вам откроется правый бар для настроек контента (секция и кнопки), шрифтов, фона, отображения:

<figure><img src="/files/8GETtmSImWY23vkb2YTI" alt=""><figcaption></figcaption></figure>

### Настройки секции

#### Позиция

<figure><img src="/files/FYgUcd2GZgaott5jmNCm" alt="" width="563"><figcaption></figcaption></figure>

Уведомление о файлах куки можно расположить слева снизу (позиция по умолчанию), справа снизу или на всю ширину снизу.&#x20;

Выглядеть будет следующим образом:

<figure><img src="/files/goZtwfb9NrE9cXzlCq1a" alt="" width="563"><figcaption><p>Пример: уведомление о куки расположено слева снизу</p></figcaption></figure>

<figure><img src="/files/TVeOGNA3u9EIsOPT2AAN" alt="" width="563"><figcaption><p>Пример: уведомление о куки расположено справа снизу</p></figcaption></figure>

<figure><img src="/files/WiTxyJoNZI4v4H5ABgQR" alt=""><figcaption><p>Пример: уведомление о куки расположено посередине снизу</p></figcaption></figure>

### Настройки кнопки

По умолчанию в секции отображается синяя кнопка:

<figure><img src="/files/sUuHyr9P4C7d23jQKwBC" alt=""><figcaption></figcaption></figure>

Кнопку можно полностью кастомизировать под дизайн вашего сайта с помощью данных настроек:

<figure><img src="/files/GMnZxGQVkcYPMOyiIuAG" alt="" width="563"><figcaption></figcaption></figure>

<figure><img src="/files/5igCOvvZCJ3XnuNnkCDt" alt=""><figcaption></figcaption></figure>

Существуют следующие настройки кастомизации кнопки:

1. **Цвет и размер границы** кнопки:

<figure><img src="/files/lGFAQX5zvzUuz6O64Au4" alt=""><figcaption></figcaption></figure>

2. **Цвет текста внутри кнопки:**

<figure><img src="/files/WOc0lrA3NYyINwSrlbnL" alt=""><figcaption></figcaption></figure>

3. **Цвет фона кнопки:**

<figure><img src="/files/VLptpCFs8b1n7IfnyxMp" alt=""><figcaption></figcaption></figure>

4. Отступы внутри&#x20;

ГИФКА

Для настройки отступов между текстом и границей кнопки

5. Отступы снаружи

<figure><img src="/files/t7VOeCphhEiEekHQRRn6" alt=""><figcaption></figcaption></figure>

Для настройки отступа между текстом уведомления и кнопки.

### Настройки фона

Чтобы изменить фон плашки уведомления, перейдите в настройки заднего фона:

<figure><img src="/files/k4q0nZKUHrf8IDi1ZlGU" alt=""><figcaption></figcaption></figure>

Разверните вкладку с настройками заднего фона, где вы можете:

1. Загрузить изображение для фона уведомления;
2. Выбрать цвет фона, в том числе сделать градиент:

<figure><img src="/files/QrE3QTH6m2I6lbNOJ1zp" alt=""><figcaption></figcaption></figure>

Для этого нажмите на плитку с цветом:

<figure><img src="/files/2maQkbCM2SzZ9sBlUzic" alt="" width="375"><figcaption></figcaption></figure>

Вам откроется палитра цветов:

<figure><img src="/files/GBKbRePAKNH8fixwKTtn" alt="" width="375"><figcaption></figcaption></figure>

Далее в выпадающем списке выберите тип градиента (linear или radial):

<figure><img src="/files/Nq81sk6jLrecGQ9obiOI" alt="" width="375"><figcaption></figcaption></figure>

Затем подберите цвета для градиента:

<figure><img src="/files/kitjrUYNsO0l443mtH7x" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Настройки заднего фона относятся к универсальным настройкам секции — это значит, что такие настройки схожи для всех секций страницы.&#x20;

Подробнее о настройках заднего фона рассказали в статье "[Настройки фона](broken://pages/Kzz11oGy5x3cKdOCKJdq)".
{% endhint %}

### Настройки шрифтов уведомления

Настройки шрифтов относятся к универсальным настройкам секций страниц сайта.

<figure><img src="/files/fVBSWD4KTqfRAfLyIDWT" alt="" width="375"><figcaption></figcaption></figure>

Можно выбрать любой понравившийся шрифт к секции и кнопке, а также при необходимости загружать собственные; задавать начертание шрифта, размер и т.п.

{% hint style="info" %}
Настройки шрифтов относятся к универсальным настройкам секции — это значит, что такие настройки схожи для всех секций страницы.&#x20;

Подробнее о настройках шрифтов [рассказали в одноименной статье.](broken://pages/sz6X5lJzXENDOypKOi5U)
{% endhint %}

### Настройки отображения

С помощью настроек отображения можно регулировать:&#x20;

1. размер секции;
2. скругление границ секций;
3. видимость на устройствах и многое другое:

<figure><img src="/files/QfYu6h18B9mB7WmIDjZ7" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %}
Настройки отображения относятся к универсальным настройкам секции — это значит, что такие настройки схожи для всех секций страницы.&#x20;

Подробнее о настройках отображения рассказали в [одноименной статье.](broken://pages/msBEKFo8VvBW9ub2kISO)
{% endhint %}

{% hint style="success" %}
Готово!

Теперь вы знаете, как создавать и редактировать секцию "Уведомление" (cookie).
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/sekcii-bloki/sekciya-uvedomlenie-cookie.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
