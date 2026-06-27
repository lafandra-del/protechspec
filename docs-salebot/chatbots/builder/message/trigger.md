> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/trigger.md).

# Вкладка: Условие

Данная вкладка открывается автоматически,  если выбрать тип блока с условием: Стартовое условие или Не состояние с условием:

<figure><img src="/files/dZf4TOaQZzYFhW7WMrLm" alt=""><figcaption></figcaption></figure>

### Поле: Условие и поле Выбор соответствия

{% hint style="warning" %}
Рекомендуем всегда указывать конкретное условие в блоках либо продумывать логику с использованием поля Переменная для сравнения.\
&#x20;\
Блоки с пустым условием срабатывают на любое сообщение от пользователя (клиента):

<img src="/files/9s7paQ8SBSIQdVUfSzTd" alt="" data-size="original">
{% endhint %}

{% hint style="info" %}
Подробно изучить тему [Условия и выбор соответствия](broken://pages/-M5QU0ZLA1A6QhyOaMzP) можно в одноименной статье.

В статье расскажем, как правильно писать условия, разберем типы соответствия.&#x20;
{% endhint %}

### Поле: Переменная для сравнения

В данном поле выполняем сравнение значения переменной с проверяемым значением.&#x20;

{% hint style="success" %}
Переменная для сравнения работает совместно с условием. То есть должно выполниться как условие, так и условие в переменной для сравнения.
{% endhint %}

{% hint style="info" %}
Подробно тему Сравнения переменных  можно изучить в  [этой статье](broken://pages/-LxpXZscJeU6Wb2MlqSH#kak-sravnivat-peremennye).
{% endhint %}

### Расширенные настройки вкладки Условие

<figure><img src="/files/eh2G36W3ztRtOjaOLHvO" alt="" width="563"><figcaption></figcaption></figure>

В расширенных  настройках проверки условия находится поле Строки, на которые не отвечать, Приоритет и ползунок "Отвечать один раз"

<figure><img src="/files/nB2U6nD2anMQua52h28k" alt="" width="563"><figcaption></figcaption></figure>

### Поле: Строки, на которые не надо отвечать

В этом поле указываются слова или выражения, на которые блок не будет срабатывать, даже если совпадет значение Условия.

### **Поле: Приоритет**

Приоритет срабатывания (проверки условия) блока. У каждого элемента в конструкторе есть свои приоритеты срабатывания. По умолчанию наивысший приоритет у блока Первостепенной проверки условия.

### Переключатель: Отвечать один раз

Включите ползунок  Отвечать один раз, чтобы блок сработал для клиента всего один раз.&#x20;

<figure><img src="/files/uMqIJnv4YSqC6PJ73VYg" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Чтобы исключить повторный переход в блок с включенным ползунком "Отвечать один" раз обратите внимание на стрелки, которые могут вести в этот блок.
{% endhint %}

<figure><img src="/files/vJkxNYFll69Sx0JgeuIq" alt="" width="375"><figcaption><p>При данной настройке переход в блок будет по стрелке, <br>а не из-за срабатывания условия</p></figcaption></figure>

### Переключатель: Срабатывать только на Callback

&#x20;Данный переключатель есть только в блоках с условием в Расширенных настройках блока.

<figure><img src="/files/lYXX621RgQgGSGJNBNye" alt="" width="563"><figcaption></figcaption></figure>

Если переключатель ВКЛЮЧЕН, то блок с условием будет срабатывать только на полученный callback  в диалоге с клиентом.&#x20;

Если переключатель ОТКЛЮЧЕН, блоки с условием срабатывают по настройкам поля Условие


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/trigger.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
