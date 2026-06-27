> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/rabota-s-promokodami.md).

# Работа с промокодами

Выдать клиенту промокод на покупку можно двумя способами:

1. Подготовить список промокодов в Google-таблице, научить Salebot находить свободный промокод, выдавать его клиенту и отмечать его как выданный в гугл-таблице;
2. Научить Salebot генерировать его по некоему правилу с выдачей клиенту и внесением в Google-таблицу.

Проверить валидность промокодов можно при использовании Google-таблицы и API-запросы к ней.

Обо всем этом читайте ниже.

## Как проверить промокод из Google-таблицы

Если у вас стоит задача ограничить доступ к боту или специальным предложениям, вы можете воспользоваться функцией проверки промокодов.&#x20;

Подготовьте Google-таблицу, где в одном столбце будет список ваших промокодов. Настройки доступа в этой таблице выставьте «Редактировать могут все, у кого есть ссылка».&#x20;

<figure><img src="/files/MbtwtdomHe3i9xIdPCZt" alt="" width="265"><figcaption></figcaption></figure>

<div><figure><img src="/files/zj5mRPeVQo7kgQISQvOm" alt="" width="419"><figcaption></figcaption></figure> <figure><img src="/files/TotWAlNuFUMUYP5X9pRy" alt=""><figcaption></figcaption></figure></div>

{% hint style="info" %}
Как работать с Google-таблицами в платформе Salebot читайте в разделе[ Google](broken://pages/AJyv5ldV9fJS174YJDVA) в статье [Google-таблицы](broken://pages/-M0rcpU5V2iF_guWKYJs).&#x20;
{% endhint %}

Функция работает следующим образом. Клиент вводит в бота свой промокод, функция проверяет есть ли этот промокод в таблице в колонке, которую вы указали. Если промокод найден, то в соседнюю ячейку добавляется надпись "Промокод использован" при этом функция возвращает следующий ответ:

`{“status”: ‘’0’’}`

Адрес функции: <https://store.salebot.pro/function/check-promocode>

Для проверки промокода вам необходимо отправить из блока следующие параметры

`{"id":"1aUbbUaw2SRnJFAavv06Noa1EzumhyShKDm7ie6lYKc4", "promocode": "#{question}", "col_number": "1"}`

Где id - это id вашей Google-таблицы, где хранятся промокоды. Вы можете получить его из ссылки на вашу Google-таблицу.&#x20;

{% hint style="warning" %}
Напоминаем, что сама таблица должна быть доступна **на редактирование** для всех, у кого есть ссылка.&#x20;
{% endhint %}

Если промокоды находятся **на отдельном листе**, то вы можете использовать параметр list\_name, в который необходимо передать название листа, например: `{"id":"1aUbbUaw2SRnJFAavv06Noa1EzumhyShKDm7ie6lYKc4", "promocode": "#{question}", "col_number": "1", "list_name": "Название листа"}`

<https://docs.google.com/spreadsheets/d/1aUbbUaw2SRnJFAavv06Noa1EzumhyShKDm7ie6lYKc4/edit#gid=0>&#x20;

Следующий параметр - это промокод, который вводит посетитель.

col\_number - это номер колонки в таблице в которой хранятся промокоды.

`{“status”: ‘’1’’}`, после этого повторно ввести промокод нельзя.

Если функция не находит промокод в таблице или он уже использован, то она возвращает ответ

`{“status”: ‘’0’’}`

Как это использовать и куда вводить, показано на рисунке ниже:

<figure><img src="/files/CF6cIjBLYtttZ2lRXxl0" alt="" width="337"><figcaption></figcaption></figure>

\#{custom\_answer} - ответ с сервера, указанного в поле 'URL запроса"

Используйте эту переменную в поле ответ, чтобы посмотреть, что в нем содержится. Если вы все сделали правильно, то можете сохранить status->status, и в стрелках, в поле "Переменная для сравнения" выставить значения "status == 0" (и дать ответ пользователю, что код уже использован) или "status" == 1 (пользователь проходит дальше). Пример показан на рисунке ниже:

![](/files/X8iy2mIcLC6kqKuj1X8r)

### Как выдать промокод из Google-таблицы

Подготовьте таблицу как на рисунке ниже. В первом столбце - промокоды, а во втором - пометка «Свободен». Настройки доступа в этой таблице также выставьте «Редактировать могут все, у кого есть ссылка».&#x20;

![](/files/-M3irK7bx1OZ6bpdFLil)

Вы получите ссылку вида: \
<https://docs.google.com/spreadsheets/d/**1-dAJz4m0qHqJ29-Qb6DCLmvOdtAOJ5m7-5pcbjGHeYg**/edit?usp=sharing>

Выделенный жирным фрагмент – это id вашей таблицы. Он нам понадобиться дальше.

В Salebot создайте блок в настройках которого укажите следующие параметры:

Тип запроса. **POST-json**\
URL запроса. [**https://store.salebot.pro/function/findcell**](https://store.salebot.pro/function/findcell)\
Сохраняемые данные из JSON-ответа:\
**data->Промокод;**\
**cell\_number|row ->Строка;**\
JSON POST-параметров:\
\&#xNAN;**{"id": "1-dAJz4m0qHqJ29-Qb6DCLmvOdtAOJ5m7-5pcbjGHeYg", "find": "Свободен", "col": 2, "return": 1}**

Где вместо **1-dAJz4m0qHqJ29-Qb6DCLmvOdtAOJ5m7-5pcbjGHeYg** вставите id, полученный выше из адреса вашей таблицы.

<figure><img src="/files/ryLqPPJpoUNm07WYJDfX" alt="" width="473"><figcaption></figcaption></figure>

Из этого блока создайте переход в следующий блок. В настройках Соединения (стрелки) установите -1 в поле "Задержка перед ответом", чтобы переход осуществлялся как можно быстрее.

В новом блоке выставьте настройки, описанные ниже.

Чтобы показать пользователю его промокод вставьте **#{Промокод}**.\
Тип запроса. **POST-json**\
URL запроса. <https://store.salebot.pro/function/gsheets>\
JSON POST-параметров. **{"id": "1-dAJz4m0qHqJ29-Qb6DCLmvOdtAOJ5m7-5pcbjGHeYg", "write":{"b#{Строка}":"Использован"}}**

Где вместо **1-dAJz4m0qHqJ29-Qb6DCLmvOdtAOJ5m7-5pcbjGHeYg** вставите id, полученный выше из адреса вашей таблицы.

<figure><img src="/files/9V3b6IZfc8BaABmfBy7Y" alt="" width="563"><figcaption></figcaption></figure>

## Как сгенерировать промокод средствами Salebot

Если промокод может создаваться по определенному правилу, то можно генерировать его прямо в Salebot и записывать в Google-таблицу для дальнейшей проверки использования.

Для этого нам понадобятся переменные.\
Например, чтобы сгенерировать уникальный промокод, мы можем использовать переменную **#{client\_id}**. Это уникальная в Salebot переменная, обозначающая номер вашего клиента в системе.

В поле блока Расширенные настройки – Калькулятор при переходе запишите:\
**Промокод = промо#{client\_id}**\
В поле Ответ в этом блоке запишите **#{Промокод}**.\
В моем случае вы получите промокод вида промо**1330882**.

Если вы хотите добавить промокоду больше случайности, то можете добавить вызов функции random()\
**Промокод = 'promo' + '#{client\_id}' + random(0,10)**\
В данном примере в конец добавляется одна случайная цифра

Теперь запишем его в Гугл таблицу промокодов:

Для начала создадим пустую таблицу. Настройки доступа в этой таблице выставьте «Редактировать могут все, у кого есть ссылка». В ячейку A1 напишем слово Промокод&#x20;

{% hint style="info" %}
*Если первая ячейка будет пустой, то функция не сработает, поэтому заполняем обязательно*
{% endhint %}

Вы получите ссылку вида: <https://docs.google.com/spreadsheets/d/**1sl15vKFjo5TFD98GnVjF3AlLtdhr85-AkEjoeJkgDxE**/edit?usp=sharing>

Выделенный фрагмент – это id вашей таблицы. Он нам понадобится дальше.

Теперь вернемся в Salebot. Продолжим редактировать наш блок с промокодом.\
Тип запроса. **POST-json**\
URL запроса. <https://store.salebot.pro/function/gsheets>\
JSON POST-параметров. **{"id": "1sl15vKFjo5TFD98GnVjF3AlLtdhr85-AkEjoeJkgDxE", "mapping":{"a":"#{Промокод}"}}**\
Где вместо **1sl15vKFjo5TFD98GnVjF3AlLtdhr85-AkEjoeJkgDxE** вставите id, полученный выше из адреса вашей таблицы.

&#x20;У вас должно получиться так же, как на рисунке ниже:

<figure><img src="/files/dCYG5myOKgUujBuQzL12" alt="" width="321"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/rabota-s-promokodami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
