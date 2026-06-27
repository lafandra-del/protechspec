> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/ai_assistant/online_booking.md).

# Чат-бот с ИИ для онлайн-записи

Услуги в Salebot - это один из разделов, относящийся к CRM-системе и позволяющий автоматизировать заполнение графика сотрудников онлайн-записями через бота.

<figure><img src="/files/KX4Nj6NrG1bX1hUIq5cq" alt="" width="375"><figcaption></figcaption></figure>

Для работы с онлайн-записью и чат-ботом с искусственным интеллектом нам понадобится:

1. Настроенный филиал с категориями и самими услугами, а также заполненный график сотрудников.&#x20;

{% hint style="info" %}
Как настроить раздел "Услуги", рассказали в статье "[Онлай-запись для услуг](/onlain-zapis/onlain-zapis-dlya-uslug.md)".
{% endhint %}

{% hint style="warning" %}
Обращаем внимание! \
Не забывайте назначать в настройках Услуг должность сотрудникам, иначе функция для чтения услуг не сработает!
{% endhint %}

2. Всего два блока в конструкторе воронок;
3. Аи-ассистент.&#x20;

## Конструкторе воронок

Шаг 1. Переходим в конструктор воронок и создаем блок с условием: стартовое условие или не состояние с условием:

<div><figure><img src="/files/wYKlcHQbPBVo90jMeY3M" alt=""><figcaption></figcaption></figure> <figure><img src="/files/JW0xDhEgxaKUm46iWGKQ" alt=""><figcaption></figcaption></figure></div>

Блок необходимо создать до настроек ассистента, поскольку с помощью него мы внесем переменную с информацией об услугах и времени сотрудников в настройки проекта.&#x20;

Также информация из переменной будет доступна для всех ваших клиентов.

Для этого перед объявленной переменной пропишите project, далее название переменной service\_info (наименование переменной может быть любым), затем присвойте ей значение функции для чтения имеющихся услуг в филиале get\_info\_for\_booking

<figure><img src="/files/gFOVBdAE3l0YzyqhuCr0" alt="" width="563"><figcaption></figcaption></figure>

Итого получаем: project.service\_info = get\_info\_for\_booking().

Далее в поле "Сообщение пропишите" переменную (в нашем случае service\_info) в конструкции#{} и при необходимости добавьте какой-либо текст:

<figure><img src="/files/leASQ3TA8qmEenszSXgu" alt="" width="563"><figcaption></figcaption></figure>

С помощью строк в сообщении "Переменная обновлена #{service\_info}" мы наглядно увидим, что будет записано в переменную service\_info в настройках проекта.

Далее перейдите в окно тестирования бота и запустите блок для кеширования переменной в настройки проекта:

<figure><img src="https://lh7-us.googleusercontent.com/docsz/AD_4nXdECac4-qiPhEbyyxp598iXcNsZNJ33uWtM7Pj7I9nkPJDeMbAiq-yBFuzs_oIieKwfeOx3LiBTzw-_nmwLR4-ZMkcCj5DwUIbTefNdSpPyShTo-ee5IQOEtnRePBdgt_sU2eBfqJm0DO2l7ThffaXEKGs?key=g9-j53ENQsA_W1hDFrramA" alt="" width="375"><figcaption></figcaption></figure>

Если вы сделали все верно, вам придет ответ от бота в виде сообщения, которое вы прописали в данном блоке (в нашем примере "Переменная обновлена") и значения, лежащее в переменной. Значения, лежащие в переменной, — это свободные лоты (дата и время) для записи и услуги, которые были настроены вами в разделе "Услуги".

{% hint style="success" %}
Обращаем внимание!

После настройки чат-бота с ИИ и онлайн-записи не удаляйте блок с условием "Стартовое условие" или "Не состояние с условием".

Он понадобится в том случае, если вы обновите ассортимент своих услуг или добавите новых сотрудников. &#x20;

Для обновления переменной service\_info в проекте, просто запустите данный блок в окне тестирования, тогда обновленные данные будут включены в значение переменной.
{% endhint %}

Шаг 2. Создайте второй блок - “Состояние”, где необходимо прописать:&#x20;

1. Функцию для создания записи

Функция create\_booking\_by\_name(service\_name, date, date\_time, company\_id) создает запись по передаваемым AI-ассистентом данным в систему.

Функция принимает три обязательных параметра для формирования записи:

<table><thead><tr><th width="297">параметры</th><th>описание</th></tr></thead><tbody><tr><td>! service_name</td><td>обязательный параметр, название услуги</td></tr><tr><td>! date</td><td>дата в формате дд.мм.гггг</td></tr><tr><td>! date_time</td><td>время услуги в формате чч:мм</td></tr><tr><td>company_id </td><td>ID филиала, необязательный<br>Если указан, то запись будет создана на услугу с указанным названием, которая принадлежит именно этому филиалу<br>Параметр может понадобиться для случаев, если в нескольких филиалах есть услуги с одинаковым названием. </td></tr></tbody></table>

2. project.service\_info = get\_info\_for\_booking() - для того, чтобы после формирования и внесения записи в CRM-систему, уже НЕсвободные слоты были удалены из значения переменной service\_info.&#x20;

<figure><img src="https://lh7-us.googleusercontent.com/docsz/AD_4nXdG79FHAftyPBgsMqSROJXVm-yhnavQEQIYP19GvaCp7CALHwVa-KYn4LjkEtjryrSprn4DAvLtFzOasbShegmz1_ivq-sK97SdXIsU2qqyDxo-4q-HyB6hSHoMOGA4KrY12bWhRQBHfMGRdGecySbGs9Gy?key=g9-j53ENQsA_W1hDFrramA" alt=""><figcaption></figcaption></figure>

В поле сообщения блока пропишите необходимый ответ бота после того, как клиент подберет услугу и время. &#x20;

## Работа в AI-ассистенте

Далее переходим в AI-ассистента, в котором необходимо прописать настройки для онлайн-записи.

Выберем роль ассистента - это должна быть онлайн-запись:

<figure><img src="/files/0v6mQG0MQAtFkqtDxVkO" alt="" width="288"><figcaption></figcaption></figure>

Заготовленные настройки можно выбрать по своему усмотрению:

<figure><img src="/files/UMjAVNdKI9yVKIgQs79J" alt=""><figcaption></figcaption></figure>

Чем обусловлен выбор наших настроек:

1. Минимизация фантазий - опция необходима для того, чтобы бот меньше креативил, а консультировал клиента только по имеющимся данным.
2. Пошаговый ввод данных - понадобится для пошагового ввода данных для формирования заявки и переменных.&#x20;
3. Не обучаться на сообщениях - для ограничения влияния сторонних лиц на бота и исключения его порчи злоумышленниками.&#x20;
4. Кнопки - чтобы клиенту самостоятельно не вводить дату, время и услугу в процессе формирования заявки в боте.

Далее переходим к настройкам бота, где пропишем его основные задачи:

<figure><img src="/files/NygHghE7kaHrawxbzdKg" alt=""><figcaption></figcaption></figure>

### Важное в настройках:&#x20;

1. Поскольку роль уже была настроена разработчиками Сейлбот, то в настройках бота необходимо прописать только те ключевые команды, которые предположительно неизвестны боту.

а) Не нужно прописывать, что должен делать бот - он итак прекрасно знает, что должен консультировать ваших клиентов по имеющимся услугам.&#x20;

<figure><img src="/files/HdQZFarsWcKtzeEExo7c" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Благодаря заготовленным настройкам "Кнопки", ИИ формирует услуги в виде кнопок: теперь клиенту не придется самостоятельно прописывать название услуги, ему понадобится только нажать на соответствующую.&#x20;
{% endhint %}

После того, как клиент нажмет на кнопку, ИИ проконсультирует его по стоимости и самой услуге:

<figure><img src="/files/KH9ZgVlwNSp8H2xg1eni" alt="" width="563"><figcaption></figcaption></figure>

б) Далее бот самостоятельно будет показывать на выбранную клиентом услугу свободные дни и время, поскольку это также заложено в настройках бота.&#x20;

<figure><img src="/files/nxdODfzVvOKHyfBSxWx0" alt="" width="563"><figcaption></figcaption></figure>

2. Обращаем внимание на команду “Напиши без изменения “start\_block\_from\_ai N” в настройках бота:

<figure><img src="/files/Il6KTTa8FND6PXTYnaPp" alt=""><figcaption></figcaption></figure>

"Напиши без изменения “start\_block\_from\_ai <mark style="color:green;">**31972400**</mark>" - вместо цифр, отмеченных зеленым цветом, пропишите ID блока "Состояние", который создавали ранее в конструкторе воронок, - именно в нем содержится необходимая функция формирования записи в CRM-системе:

<figure><img src="/files/78hE9R9P0UV3sEKNohIb" alt=""><figcaption></figcaption></figure>

Скопируйте ID блока и установите его в команду 'Напиши без изменения "start\_block\_from\_ai N"', где вместо N подставьте ID.

### Остальные настройки ассистента

В знания бота мы вкладываем закешированную переменную, которую использовали в блоке “Первостепенная проверка условия”:

<figure><img src="/files/8ifmb1XIwcm0RwNZ0TPk" alt="" width="295"><figcaption></figcaption></figure>

В знаниях бота переменную необходимо прописать переменную через конструкцию #{}.

То есть, вы копируете переменную #{service\_info} из блока с условием в разделе "Конструктор" и вставляете #{service\_info} в поле "Знания бота" в разделе "AI-ассистент".

<figure><img src="https://lh7-us.googleusercontent.com/docsz/AD_4nXdykE7gQ2XM2c6-yz2-LUlqca0SRJmhzbZv3pBA_yTwfIcyvUf5lHs9hu6uHJtGEJrdEm5dhtwQgcXG4pANv7T__jMzGj_LW-q5YH94YVwctIzzXJGuahm8TdrdMJw_BA-26N2IE8dHpCRxpqfIOaREUm57?key=g9-j53ENQsA_W1hDFrramA" alt=""><figcaption></figcaption></figure>

В поле “Формат передаваемых данных” - значение и ключ:

<figure><img src="https://lh7-us.googleusercontent.com/docsz/AD_4nXfYM-FL2lzvHZTTG2au8HXjKhu-DKiE-ob_BVK0HL72y4tEzLZopOQWfULQO9q13vg2X41A1oE2knu5edGqmyDZ2GxNIu8bkZXc0BxNkGbQBonM1rDJT1Jtn-Wy4wKlUcnTrReNQw2cXQuS_PSyV08FvWoJ?key=g9-j53ENQsA_W1hDFrramA" alt=""><figcaption></figcaption></figure>

Данные переменные после вызова блока передадутся в систему, а с помощью функции create\_booking\_by\_name(service\_name, date, date\_time) сформируется услуга в одноименном разделе "Услуги".

<figure><img src="https://lh7-us.googleusercontent.com/docsz/AD_4nXc7b9RH0xt2UbspfVFLr1jJYUlpQ_x9GG8piSFCZO-BG-MgFU52GsnjP8AgO3uWIP4B8fzV6egpuhEdNeStQ_Lmj5Ge9FwD94QPZXMbQkqz4AXXlZqE_Hdsog2mFKzAaaU-5edObqMNO0H5fKt0EBBtg85Z?key=g9-j53ENQsA_W1hDFrramA" alt=""><figcaption></figcaption></figure>

В этом же блоке Состояние диалога мы снова прописываем переменную serivce\_info, чтобы после записи клиента переменная со значением функции обновила данные о свободных окошках.&#x20;

Теперь тестируем ассистента:

<div><figure><img src="/files/t2VlljPuWdAyG8QSw2q0" alt=""><figcaption></figcaption></figure> <figure><img src="/files/B5zdoZCLYlSLlURM0TQT" alt=""><figcaption></figcaption></figure></div>

Ассистент отработал верно.&#x20;

Теперь посмотрим в календаре в разделе “CRM”:

<figure><img src="/files/RQCsk1gb0Vq4sppQhpsv" alt="" width="563"><figcaption></figcaption></figure>

Запись также сформирована в календаре с учетом времени на услугу.

{% hint style="success" %}
Таким образом, вы можете создавать различные филиалы ваших услуг и автоматизировать запись клиентов в боте с ИИ.&#x20;
{% endhint %}

## Уведомление о записи

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

<figure><img src="/files/X99RX09Ny3FH3HWDFGUY" alt=""><figcaption></figcaption></figure>

В блоке можно прописать необходимое обратное сообщение клиенту.

## Видеогид

{% embed url="<https://youtu.be/8LhrvVEusmY>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/ai_assistant/online_booking.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
