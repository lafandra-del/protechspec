> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/quick_action.md).

# Быстрые действия

При наведении на блок сверху появляется 5 значков: копировать, удалить, создать стрелку, удалить все стрелки этого блока, связать с другим листом.&#x20;

<figure><img src="/files/fL6yo0YidA6d8NQ5zVqc" alt="" width="563"><figcaption></figcaption></figure>

## Как создать стрелку

Для соединения блоков нам понадобится значок - стрелка.

<figure><img src="/files/hScPQxum8kUAa2WUtGKZ" alt="" width="375"><figcaption></figcaption></figure>

С помощью этой функции вы сможете создать новый блок (копию исходного), соединенный с предыдущим стрелкой.

<figure><img src="/files/yIrrvzBLNtQ1sUL6bssl" alt="" width="563"><figcaption></figcaption></figure>

Чтобы соединить два существующих блока, нужно кликнуть по блоку, далее зажать небольшую круглую кнопку и повести стрелку к следующему блоку:

<figure><img src="/files/Ev4WW8eoRrDdhOQgO3H8" alt="" width="563"><figcaption><p>Стрелку от блока можно вести в любую сторону</p></figcaption></figure>

{% hint style="info" %}
Если вы протянете стрелку из блока в пустоту, то будет создан новый блок, соединенный с предыдущим, поскольку стрелка не может существовать отдельно от блоков и не может соединять какой-либо блок с пустотой.
{% endhint %}

## Как удалить блок

Для удаления блоков нам понадобится значок - корзина. Удалить блок можно также клавишей Delete на клавиатуре.

<figure><img src="/files/hztRTo2HmnJuEOpFmKTe" alt="" width="563"><figcaption></figcaption></figure>

## Как создать пустой блок&#x20;

Для создания пустого блока необходимо нажать дважды левой кнопкой мыши на пустом поле.

<figure><img src="/files/nkd184bZXZ3PNQovqAHD" alt=""><figcaption></figcaption></figure>

## Как удалить стрелку

Для удаления стрелок нам понадобится значок - ножницы.

<figure><img src="/files/igeauguBef8fHwg9CMLY" alt=""><figcaption></figcaption></figure>

Нажав на эту кнопку, вы удалите все стрелки присоединены к данному блоку.

<figure><img src="/files/9WRXQ4Pg4x9ukjmQyqCN" alt=""><figcaption></figcaption></figure>

## Работа с блоками на разных листах схемы

В конструкторе воронок можно создавать разные листы воронки, например, для логического разделения схемы по секторам для удобства:

<figure><img src="/files/PwT56OC1O07rVJRt3IFa" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Важно знать!&#x20;

Создание схемы на разных листах в конструкторе не равно созданию разных чат-ботов!&#x20;

Схема на всех листах воронки будет работать как один чат-бот.&#x20;
{% endhint %}

При построении схемы чат-бота можно перенести не только всю воронку на последующий лист, а также начать строить схему бота на новом листе, перенеся последний блок схемы бота без отрыва от основной цепочки.&#x20;

Сделать это можно с помощью кнопки быстрого действия:

<figure><img src="/files/Yts7TJZ6WTYjrYgblgDm" alt="" width="563"><figcaption></figcaption></figure>

Например, ваша основная схема построена на записи ваших клиентов на услуги, а вам понадобилось ввести предпраздничные бонусы с помощью блоков, которые впоследствии все равно вам нужно будет удалить.&#x20;

<figure><img src="/files/ZXWG7FwrU51kOruRJJnn" alt=""><figcaption><p>Главная схема чат-бота на основном листе</p></figcaption></figure>

Чтобы не перегружать основную схему и знать, какие блоки бота относятся к предпраздничным бонусам, можно создать второй лист с доп. блоками, соединив основную схему с дополнительной.&#x20;

{% hint style="warning" %}
Помните! Все блоки отрабатываются как одна схема. Функция для создания листов необходимо для вашего удобства.&#x20;

Подробнее о листах воронки рассказали в статье "[Как добавить листы воронки](/chatbots/builder/settings/sheets.md)"
{% endhint %}

### Видео-обзор для быстрых действий в блоке

{% embed url="<https://www.youtube.com/watch?v=ztAtHNXSt1k>" %}

## Как копировать нужный блок

Для копирования блока нам понадобится значок - копирование:

<figure><img src="/files/0cAnEyZuxQuO3SEh9xj2" alt=""><figcaption></figcaption></figure>

## Как отменять действия

Кнопка отмены последнего действия:

<figure><img src="/files/G1sxhMzNZtTB16fyusZH" alt=""><figcaption></figcaption></figure>

Нажав на эту кнопку, можно отменить последние действия. Отменить действие также можно нажав Ctrl+Z

С помощью этой кнопки вы можете вернуть отмененное действие. Вернуть действие также можно нажав Ctrl+Y

<figure><img src="/files/spLSKy6TJt5urx3Mqrgb" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/quick_action.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
