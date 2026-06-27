> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/analitika-dlya-biznesa/analitika-salebot/operatory.md).

# Операторы

Статистические данные теперь можно просматривать и по работе оператора в проекте.&#x20;

<div data-with-frame="true"><figure><img src="/files/HWF3hZRzdDcJbyYpmhzp" alt=""><figcaption></figcaption></figure></div>

{% hint style="success" %}
Обращаем внимание!

Корректный подсчет статистических данных по ответам операторов идёт от 06.02.2025 с 14:00 мск.&#x20;
{% endhint %}

В разделе операторы не нужно ничего настраивать, поскольку подсчет ведется автоматически, но только в рабочее время вашего оператора:

<div data-with-frame="true"><figure><img src="/files/UWXDHD5AIzK0ebJrHTlx" alt=""><figcaption></figcaption></figure></div>

{% hint style="info" %}
Как настраивать рабочее время, рассказали в статье "[Сотрудники](broken://pages/SIUeJLHQq31693zHRNLY#avtomatizaciya)".&#x20;
{% endhint %}

Вы можете выбрать период, в который необходимо просмотреть статистические данные по операторам:

<div data-with-frame="true"><figure><img src="/files/N6AYXV3ExcDvKCe2xxVf" alt=""><figcaption></figcaption></figure></div>

### Значения

Разберем подробнее значения:&#x20;

1. Статистические данные считаются для оператора:

а) по дням:

<div data-with-frame="true"><figure><img src="/files/KDV30xjImkg4flqtHhoR" alt=""><figcaption></figcaption></figure></div>

б) по часам по определенному дню:

<div data-with-frame="true"><figure><img src="/files/rNwLcukPty8C4lpPyEHG" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="success" %}
Внимание!&#x20;

Значение по часам учитывается по часовому поясу проекта.&#x20;
{% endhint %}

2. В строке с определенным оператором указаны значения в формате <mark style="color:purple;">**секунды**</mark>**/**<mark style="color:orange;">**ответы**</mark>**/**<mark style="color:blue;">**диалоги:**</mark>

<div data-with-frame="true"><figure><img src="/files/PFF48MGPE0LKaMzrZoFs" alt="" width="563"><figcaption></figcaption></figure></div>

* <mark style="color:blue;">**NN диалогов**</mark> — это общее количество диалогов с клиентами, в которых ваши операторы отвечали клиентам:

{% hint style="info" %}
В статистику засчитывается любой диалог, в котором оператор ответил на сообщение клиента.&#x20;
{% endhint %}

а) Значение по дням:

<div data-with-frame="true"><figure><img src="/files/cyXs4FZuWNShLCbsadCd" alt="" width="563"><figcaption><p>Всего диалогов за день</p></figcaption></figure></div>

б) Значение по часам:

<div data-with-frame="true"><figure><img src="/files/j6YPQONRAS2N1hqTrCCk" alt="" width="563"><figcaption><p>Всего диалогов с 18:00:00 до 18:59:59</p></figcaption></figure></div>

{% hint style="info" %}
Внимание!&#x20;

Значения по часам учитываются по рабочему времени, выставленному в проекте (в разделе "Сотрудники" -> "[Автоматизация](/main/admin/employees.md#avtomatizaciya)").&#x20;

Соответственно, часы указываются по часовому поясу проекта.&#x20;
{% endhint %}

* <mark style="color:orange;">**NN ответов**</mark> — всего ответов (сообщений), которые были направлены вашим клиентам операторами в <mark style="color:blue;">**NN диалогах**</mark>:

а) по дням:

<div data-with-frame="true"><figure><img src="/files/sDTOcrvkrywJQCo6JUGj" alt="" width="563"><figcaption><p>Например, оператор направил 72 сообщения в 37 диалогах</p></figcaption></figure></div>

б) по часам:

<div data-with-frame="true"><figure><img src="/files/bVHjUnJGc0CjgyvG1Zqd" alt="" width="563"><figcaption><p>Например, оператор отправил 8 ответов в пяти диалогах в период с 18:00 до 18 ч. 59 мин. 59 сек</p></figcaption></figure></div>

* &#x20;<mark style="color:purple;">**NN cекунд**</mark> — среднее значение времени, затраченное на ответы в диалогах.&#x20;

а) по дням:

<div data-with-frame="true"><figure><img src="/files/LfWjkb68ru8UFkO7cScI" alt="" width="563"><figcaption></figcaption></figure></div>

б) по часам:

<div data-with-frame="true"><figure><img src="/files/zwEgWUG11MppoD6ugOkF" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Среднее значение времени учитывается следующим образом: учитывается время отклика, затраченное оператором на КАЖДЫЙ ответ, и делится на общее количество ответов (по дням, если статистика за день, и по часам, если статистика за час).&#x20;

Например, оператор дал ответ клиенту:

а) в первом диалоге: на один ответ было затрачено 120 секунд; на второй ответ - 30 секунд;&#x20;

б) во втором диалоге: на один ответ - 40 секунд; на второй ответ - 60 секунд; на третий ответ - 180 секунд.&#x20;

Итого: оператор дал 5 ответов в двух диалогах, среднее время = 86 секунд =  (120+30+40+60+180) / 5&#x20;

Статистика будет выглядеть: 86 сек/ 5 ответов / 2 диалога&#x20;

Время отклика — это разница между временем получения сообщения от клиента и время отправки сообщения оператором.&#x20;
{% endhint %}

{% hint style="success" %}
Статистика обновляется в момент отправки сообщения оператором без задержек.&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/analitika-dlya-biznesa/analitika-salebot/operatory.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
