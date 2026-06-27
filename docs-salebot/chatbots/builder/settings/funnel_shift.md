> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/funnel_shift.md).

# Как перенести воронку

{% hint style="warning" %}
Важно!&#x20;

Разные листы воронки ≠ разные схемы чат-бота.&#x20;

Бот отрабатывает все блоки, которые созданы в одном проекте, на разных листах как одну схему.

Деление на листы в рабочей области нужно для вашего удобства: для лучшей навигации по схеме, для условного разделения по циклам отработки бота, для добавления временной схемы (например, для праздничных акций и т.п.). &#x20;
{% endhint %}

Для начала создайте новый лист схемы чат-бота:

Шаг 1. Нажмите на "+" снизу, чтобы добавить новый лист.&#x20;

Шаг 2. Пропишите название листа

<div><figure><img src="/files/oW8AIekAwljiPIGXC9Np" alt=""><figcaption><p>Добавляем новый лист</p></figcaption></figure> <figure><img src="/files/uct0wtqR50BEElQKGxs4" alt=""><figcaption><p>Задаем название листу</p></figcaption></figure></div>

После создания нового листа, вы автоматически перейдете на вновь созданный лист схемы, где не будет блоков. Вам необходимо перейти к основной схеме бота:&#x20;

<figure><img src="/files/29gfY7PJSKquCjv54aou" alt=""><figcaption></figcaption></figure>

Далее создайте новый блок в необходимом месте воронки:

<figure><img src="/files/JF41fUKkiTg9iEy3Wucx" alt=""><figcaption><p>Создание нового блока</p></figcaption></figure>

Соедините стрелкой блоки:

<figure><img src="/files/WXizvxbe7QZud3M5EzZb" alt=""><figcaption><p>Соединение нового блока со схемой чат-бота</p></figcaption></figure>

Теперь необходимо перенести блок на другой лист. Для этого наведите на созданный блок и кликните на панели кнопок быстрых действий на фигурную стрелку:

<figure><img src="/files/tL2S7MnUiND44JaPbasy" alt=""><figcaption></figcaption></figure>

После клика вы увидите системное уведомление в правом углу с инструкцией, как действовать дальше:

<figure><img src="/files/kgAhdh1TLZQR9ODM3oaE" alt=""><figcaption></figcaption></figure>

Вам необходимо выбрать лист, на который вы переносите связанный блок схемы:

<figure><img src="/files/mZzsJ5YCkMV73Lo17j2j" alt=""><figcaption></figcaption></figure>

Перейдите в необходимый лист схемы и кликните на пустое пространство, чтобы блок был перенесен в связке со схемой с предыдущего листа:

<figure><img src="/files/ZrKytVnLWbXh6c0d47Y1" alt=""><figcaption></figcaption></figure>

Если связка схемы с листов была проделана верно, то вы увидите, что над перенесенным блоком существует плашка с информацией о блоке, с котором соединен перенесенный в связке блок, и название листа:

<figure><img src="/files/nic0GRHp1oN6yqjETr0l" alt=""><figcaption></figcaption></figure>

Дальше вы можете строить схему на новом листе, при этом блоки чат-бота будут действовать последовательно по стрелкам, согласно вашей схеме.

На основном листе вы также увидите, какие блоки остаются в связке с перенесенными блоками:

<figure><img src="/files/n68D8qfRktkZw54f8hKI" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!&#x20;

Теперь вы знаете, как переносить блоки без отрыва от основной схемы на другие листы.&#x20;

Это поможет вам строить логически структурированные, не перегруженные и понятные схемы чат-ботов.&#x20;
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/funnel_shift.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
