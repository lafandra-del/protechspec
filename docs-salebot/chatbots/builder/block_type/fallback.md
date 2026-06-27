> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/block_type/fallback.md).

# Блоки не состояние

{% hint style="warning" %}
Ограничения по блокам:

1. Суммарный лимит в схеме не более 500 шт. для блоков с условием: Блок "Стартовое условие" + Блок "Не состояние" не должны в совокупности превышать 500 шт. в одном проекте.
   {% endhint %}

Есть два типа блоков, в которые нельзя перейти:&#x20;

1. "Не состояние";
2. "Не состояние с условием".

Кстати, быстрый ответ - это "Не состояние с условием".&#x20;

"**Нельзя перейти**" - т.е. пользователь получит сообщение из этого блока, но при этом не выбьется из основной цепочки воронки.&#x20;

<figure><img src="/files/L5Om0zFOVntCnD4Da5go" alt="" width="563"><figcaption></figcaption></figure>

С помощью блоков "Не состояние" можно делать различного рода воронки с интересными предложениями, например, направлять эксклюзивные акции; при проверке валидности номера телефона или email клиента, выводить сообщение об ошибке и много чего другого.&#x20;

{% hint style="info" %}
Подробнее об отправке эксклюзивных предложений с помощью рассылок или проверке валидности номера телефона [рассказали ниже. ](#primer-proverki-dannykh)
{% endhint %}

## **Блок:** Не состояние с условием

Не состояние с условием - это темно-серый блок.

По своим функциям данный вид блока аналогичен блоку [Стартовое условие](/chatbots/builder/block_type/trigger.md) с той лишь разницей, что клиент в этот блок не попадает.

<figure><img src="/files/JiyQ0UKwg9HByuqHArPQ" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Приоритет этого блока, по сравнению с иными блоками с условием, минимальный - это значит он сработает в самую последнюю очередь.&#x20;
{% endhint %}

## **Блок:** Не состояние

Не состояние — это серый блок. У него нет условия как в блоке [Состояние диалога](/chatbots/builder/block_type/without_trigger.md#blok-sostoyanie-dialoga), но в него нельзя перейти.&#x20;

<figure><img src="/files/4VZ3zGl4Ig7uvDXyPv40" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Из блоков без состояния можно делать стрелки с таймером или, например, для проверки валидности вводимых клиентов данных! Так как в блок нельзя перейти, а следовательно нельзя выйти.

С помощью блоков "Не состояние" можно запускать цепочки рассылок.
{% endhint %}

При запуске сообщения по таймеру отменяются другие сообщения с таймером. Для того чтобы они не отменялись, перейдите в настройки стрелки и снимите на стрелке переключатель  "Отменить сообщения с таймером"&#x20;

<figure><img src="/files/3uKWAF0Q0MryTKl89a4y" alt=""><figcaption><p>Переставить чекбокс "Отменить сообщения с таймером" в неактивное положение</p></figcaption></figure>

<figure><img src="/files/pBi038PHAR0qWg4kzWfh" alt="" width="563"><figcaption></figcaption></figure>

### Пример работы с таймером

Схема чат-бота, которая наглядно продемонстрирует работу блока "Не состояние" в воронке:

<figure><img src="/files/vhG2Fe0ob0HBqUEy82kX" alt="" width="563"><figcaption></figcaption></figure>

Человек пишет "привет" и навсегда помещается в блок "Состояние", так как петля не дает ему выйти. Параллельно идет рассылка, которая не выбивает его из этого блока. И даже если клиент пишет какое-либо сообщение, всегда отправляется сообщение с зацикленной стрелкой, при этом клиент не переходит в блок "Не состояние":

<figure><img src="/files/5KqwlGwVpwTLSEZ6yX1s" alt="" width="375"><figcaption></figcaption></figure>

### Пример проверки данных

С помощью блока "Не состояние" можно создавать валидацию (проверку) данных, которые отправляет клиент боту в сообщениях.

Сделать такую проверку можно с помощью регулярных выражений, а чтобы не делать зацикленные петли и не выбивать клиента при вводе невалидных данных, можно воспользоваться блоком "Не состояние".&#x20;

{% hint style="info" %}
С помощью регулярных выражений можно проверить номера телефонов, электронную почту, дату и многое другое.&#x20;

Полный список регулярных выражений можно найти в статье "[Список полезных регулярных выражений](/chatbots/peremennye-i-funkcii/spisok-poleznykh-regulyarnykh-vyrazhenii.md)".
{% endhint %}

В блоке, из которого ведут две стрелки, запрашивается номер телефона клиента (это может быть как номер телефона, так ФИО, email и пр.):

<figure><img src="/files/xgshda7S9lZE8MJpGHxo" alt=""><figcaption></figcaption></figure>

Из блока протянуты две стрелки: к блоку "Не состояние" и к блоку "Состояние":

<figure><img src="/files/5dNCCXlsGUBr7624dW78" alt="" width="563"><figcaption></figcaption></figure>

Чтобы клиент дальше двигался по воронке при вводе валидного номера телефона, в стрелке, ведущей к блоку "Состояние", прописываем в условии регулярное выражение вида <mark style="color:yellow;">**^(+)?((\d{2,3}) ?\d|\d)((\[ -]?\d)|( ?(\d{2,3}) ?)){5,12}\d$**</mark>, а в выборе соответствия указывается "Регулярное выражение":&#x20;

<figure><img src="/files/Kan8kwtGhrfMR2H3rxAw" alt=""><figcaption></figcaption></figure>

Готово! Схема будет отрабатывать следующим образом: при переходе в блок с сообщением "Введите номер телефона", если клиент напишет что-то иное, он не сможет двигаться по воронке дальше из-за проверки на соответствие регулярному выражению, при этом каждый раз при вводе не номера телефона, будет приходить сообщение "Это не номер телефона":

<figure><img src="/files/HaIWryMQ1uQERDarlSqE" alt="" width="375"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/block_type/fallback.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
