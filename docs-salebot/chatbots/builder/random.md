> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/random.md).

# Случайные ответы в боте

Если у вас стоит задача отправлять клиентам различные случайные ответы, то воспользуйтесь представленным ниже описанием. Есть возможность отправлять как фразы целиком, так и отдельные слова, цифры и вложения.

В случае, когда необходимо отправить фразу, варианты ответа необходимо записать в формате <mark style="color:red;">**{**</mark>**текст1**<mark style="color:red;">**|**</mark>**текст2**<mark style="color:red;">**|**</mark>**текст3**<mark style="color:red;">**}**</mark>, например:&#x20;

<figure><img src="/files/qkDg52d8NWaBjolDYP08" alt=""><figcaption></figcaption></figure>

Как работает бот:

<figure><img src="/files/fUHA8dNrbAHqc1Zlohww" alt="" width="563"><figcaption></figcaption></figure>

### **Отправка случайного вложения:**

Для случайного вывода ссылки список URL необходимо записать в формате \
**<ссылка1>**<mark style="color:red;">**<$>**</mark>**<ссылка2>**<mark style="color:red;">**<$>**</mark>**<ссылка3>**, например:&#x20;

<figure><img src="/files/jcK9882CPQhPYuZwTozN" alt=""><figcaption><p>Между ссылками установлены символы <mark style="color:red;"><strong>&#x3C;$></strong></mark></p></figcaption></figure>

Отработка бота:

<figure><img src="/files/GgzIKYV8FAt5Jej0q3DX" alt="" width="563"><figcaption></figcaption></figure>

### **Отправка случайного числа:**

1. Необходимо вызвать функцию random, указать нижнюю и верхнюю границы для создания случайного числа. Функцию присвоить переменной.
2. Вывести значение в сообщение бота, поместив имя переменной в #{}, например:&#x20;

<figure><img src="/files/h7vRxnQpVVY6HPHN9a6R" alt=""><figcaption></figcaption></figure>

Отработка бота:

<figure><img src="/files/qheXKNHMNYVeeGxeNTwI" alt="" width="563"><figcaption></figcaption></figure>

### **Отправка случайного словосочетания:**

Есть гипотеза, что при рассылках в Whatsapp вероятность блокировки ниже, если не рассылать одинаковое сообщение, а немного его модифицировать.&#x20;

Случайная часть предложения выделяется фигурными скобками, а варианты вертикальной чертой, например:&#x20;

<mark style="color:red;">**{**</mark>**Привет**<mark style="color:red;">**|**</mark>**Здравствуйте**<mark style="color:red;">**|**</mark>**Добрый день**<mark style="color:red;">**}**</mark>. Я хочу {пригласить на|предложить|продать} свой мега тренинг.

<figure><img src="/files/sFF04TfagtA2osjJkhZL" alt=""><figcaption></figcaption></figure>

Ответы бота:

<figure><img src="/files/jUM65WeuHpM2O5ysDNAy" alt=""><figcaption></figcaption></figure>

### Отправка случайного ответа:

Рассмотрим на примере как отправить **в Instagram\*** комментарий клиенту, выбранный случайным образом.

За выбор случайной строки отвечает метод **select\_random('str1|str2')**

где  **str1 и str2** - переменные, в значении которых записаны варианты ответа.

За отправку ответа на комментарий под постом, который прокомментировал клиент - **insta\_create*****\_*****comment("str")**

где  **str** - переменная, в значении которой записан результат полученный методом **select\_random.**

{% hint style="info" %}
Вместо **insta\_create*****\_*****comment()** можно использовать любой другой метод отправки сообщений.
{% endhint %}

<figure><img src="/files/kTFRUOKhoRvnDjbPP8Og" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
\*Принадлежит Meta, деятельность которой признана экстремистской и запрещена на территории РФ.&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/random.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
