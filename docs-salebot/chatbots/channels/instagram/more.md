> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/instagram/more.md).

# Другие возможности

{% hint style="danger" %}
\*Социальная сеть Instagram **принадлежат компании Meta Platforms Inc**., деятельность которой признана **на территории Российской Федерации&#x20;**<mark style="color:red;">**экстремистской и**</mark> <mark style="color:red;">**запрещена!**</mark>&#x20;
{% endhint %}

{% hint style="danger" %}
Мы не призываем Пользователей к использованию ресурса.

Помните!

1. Действия, связанные с приобретением товаров или услуг у запрещенной организации могут быть расценены как финансирование экстремистской деятельности, согласно ст. 282.3 УК РФ.
2. Также с 1 сентября 2025 запрещено распространять рекламу на информационных ресурсах тех организаций, деятельность которых запрещена в РФ (согласно ч. 3 ст. 12 ФЗ от 25 июля 2002 № 114-ФЗ).
   {% endhint %}

## Как поставить лайк на последнее сообщение от пользователя

Чтобы лайкнуть последнее сообщение пользователя, в поле "Калькулятор" впишите следующую функцию:

**like\_client\_message()**

Тогда при переходе в этот блок пользователь получит лайк на последнее отправленное им сообщение.&#x20;

<figure><img src="/files/YdSmAv10FVm9wmsEt8pt" alt=""><figcaption></figcaption></figure>

### **Какие есть ограничения**

{% hint style="info" %}
Если пользователь удалит сообщение, то оно пропадет и из интерфейса Salebot
{% endhint %}

{% hint style="info" %}
Групповая переписка (беседы с более чем двумя участниками) не поддерживается.
{% endhint %}

<figure><img src="/files/DDu9yRNwKdzD1T2t0oE7" alt="" width="494"><figcaption></figcaption></figure>

Если вы видите это сообщение, то клиент вам отправил чью-то запись из ленты или отправил чей-то сторис.

### Окно 24 часа

Когда человек отправляет на вашу страницу сообщение, у вашего приложения есть до 24 часов для ответа.&#x20;

Компаниям дается 24 часа, чтобы ответить на сообщение пользователя. Сообщения, отправленные в пределах 24-часового окна, могут содержать рекламу. Пользователи в любое время могут заблокировать чат или переключить его в немой режим.

Как узнать, прошло ли 24 часа с момента последнего сообщения?&#x20;

Воспользуйтесь функцией

"**days\_from\_last\_message**": функция возвращает количество дней с момента последней реплики клиента. Создана для проверки попадания в 24-часовое окно. `d = days_from_last_message()`

### Сообщения за пределами 24 окна

{% hint style="success" %}
Вы можете общаться с клиентом в **течение недели после его последнего сообщения**.
{% endhint %}

{% hint style="danger" %}
За пределами 24 сообщения отправляются без кнопок.&#x20;
{% endhint %}

Для этого мы помечаем все сообщения, отправленные после окна в 24 часа тегом HUMAN\_AGENT. Тег предоставляет операторам возможность отвечать на запросы пользователей. Сообщения можно отправить в течение семи дней после сообщения пользователя.

После 7 дней сообщения не будут доходить до адресата по причине следующей ошибки:

![](/files/-MgUFJrhzCbygs4hiMN6)

<figure><img src="/files/v4bpURGPZngPpUZRCFOM" alt=""><figcaption></figcaption></figure>

#### Разрешено

* Операторская поддержка по вопросам, которые невозможно решить в рамках стандартного окна переписки (например, если компания закрыта на выходные или для решения вопроса требуется более 24 часов)

#### Запрещено(не полный список)

* Автоматические сообщения.
* Контент, не связанный с запросом пользователя.

## Как узнать больше про своих клиентов: верификация и количество подписчиков

Когда пользователь пишет в бота, в карточке клиента отображаются переменные **follow**, **verified** и **followers.**

<figure><img src="/files/nYC7xG3hwUbG4mWLCPO0" alt="" width="563"><figcaption></figcaption></figure>

Переменная **follow** — это и есть проверка подписки. Она принимает значение True, если клиент подписан на аккаунт, False — если не подписан и None, если аккаунт клиента закрыт.

**verified** обозначает, есть ли у пользователя верификация (галочка у аккаунта). Принимает значение True, если верификация есть, и False, если ее нет

**followers** обозначает количество подписчиков у клиента


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/instagram/more.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
