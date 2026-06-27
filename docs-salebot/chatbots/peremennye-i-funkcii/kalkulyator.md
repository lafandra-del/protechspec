> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator.md).

# Калькулятор

Калькулятор - это поле в Редакторе блока, которое открывается при клике по одноименной вкладке.  В этом поле можно совершать логические или арифметические действия, выполнять функции API- запросов конструктора и доступных интеграций.

В нем можно присвоить(объявить) переменную клиента, перешедшего в данный блок, или назначить значение уже существующим переменным. Например, будет полезно при создании воронки или отслеживания источника трафика.&#x20;

{% hint style="success" %}
О работе с переменными рассказали[ в одноименной статье.](/chatbots/peremennye-i-funkcii/peremennye.md)
{% endhint %}

<figure><img src="/files/KL7akMPSZFkGhuraHlfF" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="danger" %}
Коротко о главном:

При работе с калькулятором название переменной не может начинаться с цифры. \ <mark style="color:red;">**Неверно:**</mark> <1\_имя>\ <mark style="color:green;">**Верно:**</mark> <имя\_1>.

Название переменной не может состоять из двух слов, используйте для разделения символ нижнего подчеркивания "\_".\ <mark style="color:red;">**Неверно:**</mark> <Имя клиента>\ <mark style="color:green;">**Верно:**</mark> <Имя\_клиента>

Подробнее читайте в статье "[Переменные](/chatbots/peremennye-i-funkcii/peremennye.md)".
{% endhint %}

{% hint style="success" %}
Быстрый доступ к описаниям функций:

* [математические ](/chatbots/peremennye-i-funkcii/kalkulyator/matematicheskie-funkcii.md)
* [Для работы с ссылками](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-ssylkami.md)
* [для работы с таблицами Salebot ](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-salebot-tablicami.md)
* [работы с регулярными выражениями ](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-regulyarnymi-vyrazheniyami.md)
* [работы со строками ](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-strokami.md)
* [для работы с датами и временем](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-datami-i-vremenem.md)
* [для работы с AI-ассистентом](/chatbots/ai_assistant/function.md)
* [работы с клиентами и CRM](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-klientami-i-crm.md)
* [для работы с онлайн-записью](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-onlain-zapisyu.md)
* [работы с метками Salebot](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-metkami-salebot.md)
* [работы со списками ](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-spiskami.md)
* [для работы в мессенджерах](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-v-messendzherakh.md)
* [для работы с сотрудниками](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-sotrudnikami.md)
* [отправки e-mail ](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-email.md)
* [проверки условия "if": Если](/chatbots/peremennye-i-funkcii/kalkulyator/uslovnyi-operator-if.md)
* [работы со сторонними API](/chatbots/peremennye-i-funkcii/kalkulyator/funkcii-api-v-kalkulyatore.md)
* [работы с датой и временем](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-datami-i-vremenem.md)
* [работы с маркетплейсами](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-marketpleisami.md)
  {% endhint %}

## **Как использовать калькулятор в конструкторе**

{% hint style="danger" %}
При обращении к переменной не нужно использовать конструкцию #{}
{% endhint %}

Пример подсчета значения переменной в поле Калькулятор:

<figure><img src="/files/5ijkhAltKMmkLlA5EI7R" alt=""><figcaption></figcaption></figure>

Переменные можно записывать просто названием или через #{}.  Все переменные автоматически будут приводиться к числам с плавающей запятой.

Калькулятор поддерживает все необходимые логические и арифметические операции.

### Комментарии в калькуляторе

Для комментирования текста используйте **/\* текст комментария \*/**.  Данное сочетание /\* \*/  (теги) позволяют делать в калькуляторе как однострочные, так и многострочные комментарии:

<figure><img src="/files/T4WcmgXMdnVrHcGaAsxG" alt=""><figcaption></figcaption></figure>

Не забывайте, что комментарий нужно обязательно закрыть тегом <mark style="color:red;">**\*/**</mark> на конце, <mark style="color:red;">**поскольку иначе комментарий продолжится с новой строки:**</mark>

<figure><img src="/files/nNySZIx7z3JSa77O9ipN" alt=""><figcaption></figcaption></figure>

Не забывайте ставить закрывающий тег для комментария, даже если комментарий является последней строкой поля Калькулятор:

<figure><img src="/files/2vW4ReMdq6GcetdYqeyU" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Не располагайте комментарии друг за другом, между ними должна быть обязательно хотя бы пустая строка
{% endhint %}

### **Константы**

"**E**": число Эйлера e&#x20;

### **Поддерживаемые операторы**

"**+**": сложение&#x20;

"**-**"': вычитание&#x20;

"**\***" *умножение*&#x20;

"**/**": *деление*

"**%**'"*: остаток от деления*&#x20;

"**^**" "**\*\***": возведение в степень&#x20;

"**==**" "**!=**" "**>**" "**<**" "**>=**" "**<=**": операторы сравнения&#x20;

"**and**" "**AND**" "**&&**": логическое И&#x20;

"**or**" "**OR**" "**||**": логическое ИЛИ

{% hint style="warning" %} <mark style="color:red;">**Важно!**</mark> Логические условия с переменными необходимо писать в поле <mark style="color:red;">**Переменная для сравнения**</mark>**,** а не в Условие!
{% endhint %}

Например, на рисунке ниже переход по стрелке осуществится, если переменная Номер\_телефона заполнена:

<figure><img src="/files/mgBCyg24418JoA12sTFh" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="warning" %}
Важно!&#x20;

Если вы сравниваете переменную со значением в кавычках, то проверьте, нет ли пробела между кавычкой и значением, иначе блок может не отработаться или отработаться некорректно!

<mark style="color:green;">**Верно**</mark> (без пробела <mark style="color:red;">**перед кавычкой**</mark> и <mark style="color:red;">**после значения my\_new\_bot**</mark>):

<img src="/files/L5zVBGnFLivuKCuLjBqh" alt="" data-size="original">

Неверно (с пробелом перед кавычкой):

<img src="/files/eceGI0JEyAzUSmWucRfF" alt="" data-size="original">

{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
