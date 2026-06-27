> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/vidzhet-onlain-zapisi-dlya-saita/kak-vstroit-vidzhet-na-sait.md).

# Как встроить виджет на сайт

Перейдите в режим редактирования сайта:

<figure><img src="/files/wWnmv2aZJYA7SwoJFIJw" alt=""><figcaption></figcaption></figure>

Далее найдите в списке секций онлайн-запись и добавьте ее:

<figure><img src="/files/FFeEpuhnoN3r3wz1W9Uk" alt="" width="351"><figcaption></figcaption></figure>

В контенте выберите, какой виджет отображать на сайте (если у вас несколько виджетов онлайн-записи):

<figure><img src="/files/L6IubzxoPwyBUwtLqMrP" alt=""><figcaption></figcaption></figure>

При необходимости можно отредактировать фон и настройки отображения в секции с виджетом. Для этого наведите на секцию и нажмите на кнопку "Настройки":

<figure><img src="/files/3dd0YYtH5Q9tQMUm6u8Q" alt="" width="563"><figcaption></figcaption></figure>

Далее установите необходимые настройки фона и отображения:

<figure><img src="/files/5hd1MHolYTAJAi96ijP8" alt=""><figcaption></figcaption></figure>

Сохраните настройки сайта.&#x20;

Теперь ваши клиенты смогут записываться на услуги круглосуточно, просто перейдя на ваш сайт:

<figure><img src="/files/0DA453g5m65VfFoAECl4" alt=""><figcaption></figcaption></figure>

#### Как встроить виджет на иной сайт

После сохранения виджета, обновите страницу, чтобы у вас появился следующий блок со скриптом виджета и полем для названия секции:

<figure><img src="/files/9rrcWFbrTKAn85n9wxsL" alt="" width="375"><figcaption></figcaption></figure>

Если вам необходимо встроить код на сайт, то скопируйте скрипт и вставьте его в свой лендинг.&#x20;

В случае, если вы будете использовать виджет на собственных сайтах, НЕ собранных на Salebot, тогда пропишите в поле класс элемента:

<figure><img src="/files/FiSOmzJDkcRF2Q0yteLF" alt=""><figcaption></figcaption></figure>

## Callback о записи

В диалог с клиентом после записи будет приходить колбек — уведомление о записи — следующего вида:

<figure><img src="/files/EfFIWPTptrKrVBha0hMM" alt="" width="464"><figcaption></figcaption></figure>

<mark style="color:orange;">**new\_order\_in\_calendar**</mark> - не изменяемая часть колбека&#x20;

&#x20;<mark style="color:yellow;">**\[489046159]**</mark> - order\_id  идентификатор заявки&#x20;

<mark style="color:red;">**Добавлена запись даты\_и\_время\_записи**</mark>

<mark style="color:purple;">**на 30 минут**</mark> - длительность услуги&#x20;

<mark style="color:red;">**Объекту: Тест 30**</mark> - какому именно объекту добавлена запись

Вид самого колбека:

***`new_order_in_calendar: [489046159] Добавлена запись с 2025-06-01 14:00 до 2025-06-01 14:30 на 30 минут. Объекту: Тест 30`***

Настроить реакцию на колбек можно прописав значение в условии блока:

<figure><img src="/files/nHFNa6gsIOqAbiDOV4E9" alt=""><figcaption></figcaption></figure>

В блоке можно прописать необходимое обратное сообщение клиенту.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/vidzhet-onlain-zapisi-dlya-saita/kak-vstroit-vidzhet-na-sait.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
