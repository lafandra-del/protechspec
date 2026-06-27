> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/peremennye-dlya-saita.md).

# Переменные для сайта

## Как работать с переменными для сайта и лендинга

### Как работать с датой и временем

\#{**current\_time**} - текущее время в формате hh:mm\
\#{**current\_date**} - сегодняшняя дата в формате dd:mm:yyyy\
\#{**current\_date\_ru**} - сегодняшняя дата в формате dd *название месяца*

**#{current\_hour}** - текущий час +- указанное количество часов

**#{text}&#x20;**<mark style="color:orange;">**для конструкции с проверкой условия if**</mark> - выводит текст при соблюдении условия. Пример можно увидеть [👉здесь](#kak-ispolzovat-uslovnyi-operator-if)

Данный текст выведен с использованием переменных и математическими действиями: сложением и вычитанием времени и даты.&#x20;

Оригинал:

`Сегодня цифрами #{current_date}` \
`Вчера цифрами #{current_date-1}`\
`Завтра цифрами #{current_date+1}` \
`Сейчас время #{current_time}` \
`Сейчас время + 30 минут #{current_time+30}` \
`Сейчас время - 30 минут #{current_time-30}` \
`Сегодня буквами #{current_date_ru}` \
`Завтра буквами #{current_date_ru+1}` \
`2 дня назад буквами #{current_date_ru-2}`\
`Текущий час #{current_hour}`  *(если сейчас  14:53, выведет 14:00)*\
`Текущий час + 1 час #{current_hour+1}` *(если сейчас  14:53, выведет 15:00)*\
`Текущий час - 4 часа #{current_hour-4}` *(если сейчас  14:53, выведет 10:00)*

<figure><img src="/files/zLrlnGiMOMkzUzIqR4RV" alt="" width="375"><figcaption></figcaption></figure>

<figure><img src="/files/8fsaBFZQ8VUcyw57QnTy" alt="" width="375"><figcaption></figcaption></figure>

### Как использовать условный оператор if

**`#{if(<условие>, <значение при истине>, <значение при лжи (необязательно)>)}`** - выводит переменные при определенном условии

В качестве условия может быть **h - часы и d - дни,**  которые сравниваются операторами сравнения (<, >, ==, >=, <=, !=). \
\
Например, если сейчас 20 часов, то #{if(h>15, current\_date+1, current\_date)}

После сравнения можно вывести разный текст, для этого используйте переменную **text:**

`#{if(h > 21, text=Какой-нибудь текст)}`&#x20;

*На минилендинге будет показано значение переменной text, если текущее ВРЕМЯ больше 21:00 (учитывается время проекта)*

{% hint style="danger" %}
ВАЖНО! Чтобы переменная работала корректно пишем переменную БЕЗ пробела перед знаком равно:  text=&#x20;
{% endhint %}

{% hint style="info" %}
Можно вставить два text= через пробел или Enter . Первый это тот который сработает если условие верно, второй если неверно
{% endhint %}

`#{if(d < 21, text= До встречи 21 мая, text= Вы успеваете зарегистрироваться на 30 мая)}`&#x20;

*На минилендинге будет показано значение "До встречи 21 мая" , если текущая дата (d<21) меньше 21 числа текущего месяца.  Если дата уже больше 21, то будет показан второй вариант значения text = Вы успеваете зарегистрироваться на 30 мая*

### Как получить день недели

\#{weekday\_date(номер дня недели)} - дата ближайшего указанного дня недели в формате dd&#x20;

1 - понедельник, 7 - воскресенье

### Как использовать свои переменные в постах ВКонтакте

Вы можете использовать свои собственные переменные при публикации постов Вконтакте. Для этого необходимо использовать функцию **quizlink()** и выполнить настройку автоматического поста ВК

## Как использовать в Минилендинге Html - код

Если вам необходимо изменить минилендинг под свои нужды, Вы можете добавить скрипт в поле html-код body, который сделает нужные изменения.&#x20;

{% hint style="danger" %}
Из-за правил Вконтакте HTML - код не вставится в минилендинг ВКонтакте
{% endhint %}

Например, скрипт ниже удаляет кнопку ВК с минилендинга.

```javascript
<script>
document.getElementsByClassName('vk_link')[0].remove()
</script>
```

Данный скрипт убирает заголовок минилендинга

```javascript
<script>
document.getElementsByClassName('title_container')[0].remove()
</script>

```

Например, скрипт ниже меняет ссылку кнопки телеграмма.

```javascript
<script>
document.getElementsByClassName('salebot_button tg_link')[0].href = "новая ссылка";
</script>
```

для других мессенджеров insta\_link, vk\_link и т.д


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/peremennye-dlya-saita.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
