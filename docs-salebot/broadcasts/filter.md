> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/broadcasts/filter.md).

# Как отфильтровать клиентов для рассылки

## Создание списка для рассылки

Чтобы отфильтровать клиентов и направить по таким клиентам рассылку, нам понадобится для начала создать список, в который мы включим наших клиентов. Для этого перейдите в раздел "Списки":

<figure><img src="/files/fSfxFFAG0nKAvpxZs0xd" alt=""><figcaption></figcaption></figure>

И нажмите "Создать список". Откроется модальное окно, в котором нужно прописать название списка и, при необходимости, добавить его в какую-либо папку:

<figure><img src="/files/PmNYMrjWAtkvrjd8JMdQ" alt=""><figcaption></figcaption></figure>

Далее кликните на "Создать список". Тогда новый список отобразится в разделе:

<figure><img src="/files/MIk4nhlxqGeSW21rM5TM" alt=""><figcaption></figcaption></figure>

## Фильтр в разделе "Клиенты"

Далее переходим в раздел "Клиенты":

<figure><img src="/files/0prR6RZTlm4sGd4Tz0nl" alt="" width="563"><figcaption></figcaption></figure>

После чего кликаем на кнопку "Фильтры":

<figure><img src="/files/QVXaopIrywdhrumcuO7v" alt=""><figcaption></figcaption></figure>

По клику на "Фильтры" откроется окно, в котором можно отфильтровать клиентов по различным критериям:

<figure><img src="/files/USpLV4i9LtNdDqLbgNdn" alt="" width="375"><figcaption></figcaption></figure>

Клиента можно отфильтровать в зависимости:

1. от блока воронки

<figure><img src="/files/XRA1sauSOe514ynPORup" alt="" width="375"><figcaption></figcaption></figure>

2. По каналам связи:

<figure><img src="/files/ts9amytc5MDYH1mM6vXC" alt="" width="375"><figcaption></figcaption></figure>

3. По спискам и меткам:

<figure><img src="/files/oz76mwNKrD2EpVGKY6mO" alt="" width="375"><figcaption></figcaption></figure>

4. По стадии воронки в CRM:

<figure><img src="/files/9mwB2VnoXi8jipeTUHhb" alt="" width="375"><figcaption></figcaption></figure>

4. А также по отписавшимся, непрочитанным и т.д.:

<figure><img src="/files/nZfEMHIhC0QBtKN458gR" alt="" width="375"><figcaption></figcaption></figure>

Затем кликните на "Фильтровать":

<figure><img src="/files/FcAm5i98e51QYKn6EMuc" alt="" width="375"><figcaption></figcaption></figure>

Вам отобразится список клиентов, подходящие под указанные вами критерии. Теперь необходимо найти меню дополнительных команд:

<figure><img src="/files/XJbcoUlMTGsZq4cGklat" alt=""><figcaption></figcaption></figure>

И кликните по кнопке "Массовые действия с диалогами":

<figure><img src="/files/odFxUuIVMOg08nQmXaHB" alt="" width="563"><figcaption></figcaption></figure>

Откроется выпадающий список массовых действий для клиентов:

<figure><img src="/files/sRutQC4QmAcZGIHKM0gi" alt="" width="563"><figcaption></figcaption></figure>

Вам необходимо нажать на галочку, чтобы выделить всех отфильтрованных клиентов:

<figure><img src="/files/wJxDp528HhhcD5R7j4JW" alt="" width="563"><figcaption></figcaption></figure>

Найдите кнопку в открывшемся меню "Действия со списками и метками" и нажмите на нее:

<figure><img src="/files/sjJI4XqhhtDP6ckKHUrz" alt="" width="563"><figcaption></figcaption></figure>

Откроется окно с выбором списка, в который можно добавить отфильтрованных клиентов:

<figure><img src="/files/cnN2seomX6zUtw178TgJ" alt="" width="375"><figcaption></figcaption></figure>

Затем нажмите "Добавить", после чего высветится уведомление, что клиент добавлен в список:

<figure><img src="/files/4vKaJGBfFxdjtd1IgA9f" alt="" width="375"><figcaption></figcaption></figure>

## Создание рассылки

Теперь переходим к самому главному — созданию рассылки. Здесь вам понадобится перейти в раздел "Рассылки":

<figure><img src="/files/jy2GSM3tYGL5sb7ULEju" alt=""><figcaption></figcaption></figure>

И нажмите "Создать рассылку":

<figure><img src="/files/EaZyDh7DSFPjs7YTLJit" alt=""><figcaption></figcaption></figure>

Откроется вкладка с настройками рассылки, где необходимо выбрать список, в который вы добавляли отфильтрованных клиентов:

<figure><img src="/files/SmbCqRBU10XlyYaOAif7" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Теперь вы знаете, как фильтровать клиентов для рассылки по самым разным критериям в Сейлботе!&#x20;
{% endhint %}

{% hint style="info" %}
Подробнее о других настройках рассылки, читайте в статье "[Рассылки в мессенджеры](https://docs.salebot.pro/rassylki-1/rassylki)"
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/broadcasts/filter.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
