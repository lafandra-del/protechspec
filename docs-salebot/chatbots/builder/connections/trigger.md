> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/connections/trigger.md).

# Условие в соединении (стрелке)

### **Поле: Условие**

В этом поле указывается условие перехода в другой блок.&#x20;

<figure><img src="/files/7tqeqfO3013HTMVdDfln" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Условие перехода может быть задано по ключевому слову (коллбэку). Подробнее про Условие и выбор соответствия можно прочитать[ тут](broken://pages/-M5QU0ZLA1A6QhyOaMzP)
{% endhint %}

{% hint style="info" %}
Если в стрелке оставить поле Условие пустым, то переход по стрелке будет по любому слову или фразе от пользователя.
{% endhint %}

### Поле: Выбор соответствия

По умолчанию установлено "Игнорируя ошибки и неточности". Всего есть 4 типа проверки условия перехода:

**Игнорируя ошибки и неточности:** это значит, что условие будет проверяться на частичное совпадение с введенным пользователем текстом. То есть, если пользователь ввел слово или фразу с ошибками или другим окончанием, то условие сработает.

**По наличию ключевых слов:** при выборе этого условия, если в ответе человека есть хотя бы одно ключевое слово из поля "Условие", то сработает переход.

**Полное совпадение:** данное условие проверяет слово или фразу на полное совпадение, без ошибок и видоизменений.

**Регулярное выражение:** условие проверяет ответ пользователя в указанном вами регулярном выражении.

{% hint style="info" %}
Например, правильность ввода формата телефона, email, ввод только цифр и т.д. Подробнее о регулярных выражениях можно [**прочитать здесь**](/chatbots/peremennye-i-funkcii/spisok-poleznykh-regulyarnykh-vyrazhenii.md)
{% endhint %}

### Расширенные настройки соединения(стрелки)

Чтобы открыть Расширенные настройки соединения, нажмите "Расширенные настройки под полем Выбор соответствия, как показано на рисунке ниже.

<figure><img src="/files/MmCYCMuDO3ZQgukBWcyD" alt=""><figcaption></figcaption></figure>

### **Поле: Строки, на которые не надо отвечать**

**Строки, на которые не надо отвечать:** сюда вносятся "минус-слова", слова или фразы, на которые бот не должен реагировать при проверке условия.

<figure><img src="/files/0VPscybHTSpeaR52aNXy" alt="" width="563"><figcaption></figcaption></figure>

### **Поле: Переменная для сравнения**

Переменная для сравнения работает совместно с условием. То есть должно выполниться как условие, так и условие в переменной для сравнения.

Если в поле переменная для сравнения указать просто имя переменной, без выражения, то условие будет сравниваться с ней, а не с тем, что ввел пользователь.&#x20;

{% hint style="info" %}
Указывать нужно без #{}, только имя переменной.
{% endhint %}

В примере на рисунке ниже переход будет осуществлен если значение переменной client\_type равно 1.&#x20;

<figure><img src="/files/hgFH37rcqzAO3KmvJjRQ" alt="" width="563"><figcaption><p>Сравнение значения переменной client_type</p></figcaption></figure>

<mark style="color:green;">**Пример ниже работает идентично.**</mark> \
Если в поле переменная для сравнения указать просто имя переменной, без выражения, то условие будет сравниваться с ней, а не с тем, что ввел пользователь. \
Чтобы пользователю не показывалась кнопка с условием True не забудьте отключить ползунок "Отображать как кнопку".

<figure><img src="/files/4m1Ll3Nae2jrQbXDEyiT" alt=""><figcaption><p>Способ 2: Сравнение значения переменной client_type</p></figcaption></figure>

### Поле: Приоритет

По умолчанию значение приоритета установлено 10. Чем выше приоритет у условия, тем раньше оно будет проверяться.

<figure><img src="/files/HWyo42IEWigiQm44zSzx" alt="" width="563"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/connections/trigger.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
