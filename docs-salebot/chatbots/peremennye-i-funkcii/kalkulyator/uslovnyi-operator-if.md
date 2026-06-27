> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/uslovnyi-operator-if.md).

# Условный оператор if

## **Для проверки условия "if":**&#x20;

{% hint style="info" %}
Чтобы проверить не пустое ли значение переменной (не равно ли оно None или "") используйте следующую формулу:\
\&#xNAN;**"#{value}" == ""** где value название переменной\
Например, это может понадобиться при получении данных со стороннего ресурса через запросы.
{% endhint %}

{% tabs %}
{% tab title="Описание" %}
**if(condition, value\_if\_true, value\_if\_false)**

**condition** - условие&#x20;

**value\_if\_true** - значение, если истина

**value\_if\_false** - значение, если ложь

{% hint style="warning" %}
Максимальная длина выражения: 2000 символов
{% endhint %}
{% endtab %}

{% tab title="Примеры" %}
Давайте разберем несколько примеров:

ДНИМОЛЧАНИЯ\_2 = if(ДНИМОЛЧАНИЯ\_2 == 1, 1, 0). \
В данном случае, если существует переменная ДНИМОЛЧАНИЯ\_2 со значением 1, то ее значение так и останется 1, а если она не существует, то будет 0. Удобно использовать перед математическими операциями, чтобы подстраховаться от пустых значений переменных.&#x20;

ИмяКлиента = if(ИмяКлиента == 1, Р1, if(ИмяКлиента == 2, Р2, if(ИмяКлиента == 3, Р3, 7))), где Р1, Р2, Р3 - переменные. \
Тогда если ИмяКлиента равно 1, то будет присвоено значение P1,\
если ИмяКлиента равно 2, то будет присвоено значение P2,\
если ИмяКлиента равно 3, то будет присвоено значение P3,\
иначе будет присвоено значение 7.

Как видите, можно использовать вложенные if  конструкции. Это пригодится, если хотите научить бота подсчитывать сумму заказа, когда стоимость единицы товара зависит от его количества:\
Сумма\_Заказа = round(if(Количество >=100, if(Количество >=200, if(Количество >=300, if(Количество >=400, if(Количество >=500, if(Количество >=1000, if(Количество >=2000, if(Количество >=3000, if(Количество >=5000, 25\**Количество, 30\**&#x41A;оличество), 35\**Количество), 40\**&#x41A;оличество), 45\**Количество), 50\**&#x41A;оличество), 55\**Количество), 60\**&#x41A;оличество), 65\**Количество), "Не могу посчитать... Вы ошиблись где-то при оформлении заказа. Попробуйте еще раз с самого начала.")* \* 100) / 100

{% hint style="warning" %}
Максимальная длина выражения: 2000 символов
{% endhint %}

<figure><img src="/files/y8bxLErl8X3ey97ZORcO" alt=""><figcaption></figcaption></figure>

Тестируем:

<figure><img src="/files/Q1Sj9k2GfUBRkMCoeGVQ" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}
`ДНИМОЛЧАНИЯ_2 = if(ДНИМОЛЧАНИЯ_2 == 1, 1, 0) ИмяКлиента = if(ИмяКлиента == 1, Р1, if(ИмяКлиента == 2, Р2, if(ИмяКлиента == 3, Р3, 7))) Сумма_Заказа = round(if(Количество >=100, if(Количество >=200, if(Количество >=300, if(Количество >=400, if(Количество >=500, if(Количество >=1000, if(Количество >=2000, if(Количество >=3000, if(Количество >=5000, 25`*`Количество, 30`*`Количество), 35`*`Количество), 40`*`Количество), 45`*`Количество), 50`*`Количество), 55`*`Количество), 60`*`Количество), 65*Количество), "Не могу посчитать... Вы ошиблись где-то при оформлении заказа. Попробуйте еще раз с самого начала.") * 100) / 100`
{% endtab %}
{% endtabs %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/uslovnyi-operator-if.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
