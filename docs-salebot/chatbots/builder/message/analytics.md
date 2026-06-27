> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/analytics.md).

# Вкладка: Аналитика

<figure><img src="/files/ToKHQ5zUtRMTYqBc7eDU" alt="" width="563"><figcaption></figcaption></figure>

При клике на кнопку "Аналитика" открывается форма ввода данных:

<figure><img src="/files/kXw0xR7q9Vegdc0QIpcE" alt="" width="563"><figcaption></figcaption></figure>

с полями:

* категория события - обобщенное название для каких-либо событий в боте:

<figure><img src="/files/ZvSGS1X3HfIBtmh0ICa2" alt="" width="563"><figcaption></figcaption></figure>

Например, к категориям в боте можно отнести:\
а)  обобщенные действия: пришли, купили, оплатили; \
б) обобщенные категории товаров: одежда женская, одежда мужская, обувь, хозтовары и пр.\
в) категории услуги: стрижки, маникюр и т.д.

Является необязательным полем для настройки. &#x20;

* название события, для которого будет собираться статистика (Обязательное поле!)

<figure><img src="/files/ylHzufESnd8C1a2OitIX" alt="" width="563"><figcaption></figcaption></figure>

Частное из обобщенной категории.&#x20;

Например, в категории обобщенных действий:

а) пришли: из бота ТГ, из бота ВК, из бота Whatsapp; \
б) купили: товар1, товар2, товар3 и т.п.&#x20;

Является обязательным полем.&#x20;

* значение события - число или переменная клиента/сделки, указанная в формате #{cost}:

<div><figure><img src="/files/rfdcdEV9k5TCgtgzyl3x" alt=""><figcaption><p>Указание числового значения</p></figcaption></figure> <figure><img src="/files/ttiJjAS5lFImAHmDcasP" alt=""><figcaption><p>Указание значения через переменную</p></figcaption></figure></div>

{% hint style="info" %}
Данные группируются (суммируются) по названию и категории события.
{% endhint %}

{% hint style="warning" %} <mark style="color:red;">**Внимание:**</mark>**&#x20;в разделе Конверсии -&#x20;**<mark style="color:red;">**"Текущий момент"**</mark>**&#x20; события&#x20;**<mark style="color:red;">**НЕ считаются**</mark>**&#x20;в блоках&#x20;**<mark style="color:red;">**не состояний:**</mark>

* Не состояние передача данных
* Не состояние конец сбора данных
* Не состояние с условием
* Не состояние
  {% endhint %}

Далее при прохождении клиента через блок, в котором настроены события, просмотреть данные можно в разделе "Аналитика":

<figure><img src="/files/ue3WUanqFXPcwAT5HwzQ" alt="" width="563"><figcaption></figcaption></figure>

Необходимо создать виджет в разделе "Клиенты":

<figure><img src="/files/AReztKGHYjwSDlgk5t9v" alt="" width="563"><figcaption></figcaption></figure>

Далее выбрать необходимые настройки:

<figure><img src="/files/TV1InFqAAgcrXe7aP4XF" alt="" width="375"><figcaption></figcaption></figure>

1\) указать период аналитики

2\) прописать название виджета;

3\) выбрать вид отображения данных для аналитики (круговая диаграмма, столбчатая и тп)

4\) выбрать данные, которые будут отображены в виджете:

Шаг 1. Выберите вкладку конверсии:

<figure><img src="/files/3G9NtqGTeUVlbezCsdfq" alt="" width="563"><figcaption></figcaption></figure>

Шаг 2. Укажите способы подсчета данных Аналитики:

<figure><img src="/files/EirLXldgmeV58PzwS7aY" alt="" width="563"><figcaption></figcaption></figure>

**Что считать** - параметры подсчета каждого шага:

<figure><img src="/files/XuE1ZKTA8wE6DI7uuvhs" alt="" width="563"><figcaption></figcaption></figure>

* **Количество** - сколько клиентов прошло через выбранное событие
* **Сумму значений** - сумма значений события для всех клиентов, прошедших через него. Может показать количество проданного товара или заработанную сумму от продажи.
* **Среднее значение** - среднее значение события для всех клиентов, прошедших через него. Может показать сколько единиц товара в среднем продается одному клиенту.
* **Медианное значение** - медианное значение события для всех клиентов, прошедших через него. Может показать честное среднее значение, поскольку исключает пиковые значения.

**Как считать** - параметры для подсчета количества прохождения клиента

<figure><img src="/files/TbZ9IFjgzDHnayn54GD8" alt="" width="563"><figcaption></figcaption></figure>

* Уникальное прохождение - подсчет уникальных пользователей, которые впервые прошли через воронку (данный блок, в котором настроена Аналитики);&#x20;
* Все прохождения - подсчет всех прохождений (как первых, так и повторных) через данный блок воронки.

**Как считать %**

<figure><img src="/files/sv1aU9ChCt8Vae880zLj" alt="" width="563"><figcaption></figcaption></figure>

* подсчет с первого шага.
* подсчет с последнего шага.

Шаг 3. Добавьте шаг для подсчета:

<figure><img src="/files/aBFd48br6MrUETIRPRIN" alt="" width="563"><figcaption></figcaption></figure>

Шаг 4. Выберите категорию (если есть) и событие, которое ранее указали в блоке бота и сохранили его:

<figure><img src="/files/RYsEZ7KHcOxRv4UL0xqS" alt="" width="563"><figcaption></figcaption></figure>

Если необходимо отображать только определенное значение событий, то пропишите необходимое значение в строке "Значение событий":

<figure><img src="/files/3n7iUHotTFb2amd0Qk7K" alt="" width="563"><figcaption></figcaption></figure>

Если нужно отображать все значения, то оставьте поле пустым.&#x20;

{% hint style="info" %}
О других возможностях аналитики в Сейлбот рассказали в статье "[Аналитика Salebot](/analitika-dlya-biznesa/analitika-salebot.md)".
{% endhint %}

{% hint style="success" %}
Готово! Вы ознакомились с редактором схемы чат-бота в Сейлбот!&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/analytics.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
