> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/connections/date_time.md).

# Настройки времени и даты в стрелке

## **Задержка перед ответом**

<figure><img src="/files/TYBa9ZPhWjgHUFk3UOqf" alt="" width="563"><figcaption></figcaption></figure>

Переход в следующий блок произойдет через промежуток времени, указанный в поле "Задержка перед ответом".  Время может измеряться в секундах, минутах, часах, днях и месяцах. Данный функционал применяется для отправки автоматических сообщений, которые не требуют ответа пользователя. \
Оставьте поле "Задержка перед ответом" пустым, если переход должен быть в ответ на действие или сообщение от пользователя.

Проверить, что сообщение запланировано можно в разделе Клиенты. Для этого откройте диалог с клиентом, вкладка О клиенте - Запланированные сообщения.

Запланированное сообщение можно найти в переменных клиента:

<figure><img src="/files/gZwtoPy1XThfisJLcLaW" alt=""><figcaption></figcaption></figure>

При клике на "Сообщение запланировано", откроется окошко с информацией о сообщении:

<figure><img src="/files/NcE2ehb9pUWTD8dElaYi" alt=""><figcaption><p>Диалог с клиентом: проверяем запланированные сообщения</p></figcaption></figure>

## **Отменить, если покинул блок (переключатель)**

Включите данный ползунок, если вам необходимо прервать цепочку автоматических сообщений, если пользователь выполнил какое-либо действие и перешел в другой блок.

<figure><img src="/files/4KZ2SzH2gSIuAcCvjgiK" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Обратите внимание, чтобы сработала данная настройка Позиция в воронке у клиента должна измениться. Он должен перейти в другой блок состояния
{% endhint %}

**Пример:**\
\
Клиент получает Сообщение 1 с кнопкой. Если он нажал кнопку, то получит Сообщение 2. Его позиция в воронке изменится, и сообщение, запланированное с таймером 10 минут, отменится. \
Если за 10 минут клиент не нажал кнопку, ему придет новое сообщение  с кнопкой "Ты еще не нажал кнопку".&#x20;

<figure><img src="/files/v0x7hdL34YfSSjeU3W2O" alt=""><figcaption><p>Вариант 1</p></figcaption></figure>

<figure><img src="/files/41n9uaEg0gvbH1CcBqzf" alt=""><figcaption><p>Вариант 2</p></figcaption></figure>

*<mark style="color:red;">**Рассмотрим вариант с ошибкой**</mark>*\
\
При переходе в блок Сообщение 1 у пользователя планируется стрелка с таймером 10 мин и включенной настройкой "Отменить если покинул блок". А также есть стрелка с условием  "Нажал кнопку"  с таймером 5 минут.\
\
В этой ситуации при клике по кнопке Сообщение 2 будет запланировано и отправится через 5 минут после клика по кнопке. Клиент НЕ меняет свою позицию в воронке пока не получит Сообщение 2 (не перейдет в блок Сообщение 2). \
\
Если позиция в воронке не сменилась, значит через 10 секунд ему придет сообщение "Ты еще не нажал кнопку". И следом по таймеру придет текст из блока "Сообщение 2"

<figure><img src="/files/CsRF8i6vwYGZ2YBQtvdU" alt=""><figcaption><p>Ошибка: при текущих настройках клиент через 3 минуты получит сообщение - напоминание даже если нажал кнопку</p></figcaption></figure>

*<mark style="color:red;">**Второй вариант с ошибкой**</mark>*\
\
Клиент также получит сообщение из блока "Ты еще не нажал кнопку", даже если клиент успеет нажать кнопку. Причина: блоки "Не состояния" НЕ МЕНЯЮТ позицию в воронке у клиента.

<figure><img src="/files/E1lXHhz1N8xQgu9hl5cC" alt=""><figcaption><p>Ошибка: блок Не состояние НЕ МЕНЯЕТ Позицию в воронке у клиента</p></figcaption></figure>

## Отменить сообщения с таймером **(переключатель)**

Если ползунок включен, то при переходе по стрелке отменятся все запланированные сообщения с таймерами, кроме тех, где включено "Не отменять":

<figure><img src="/files/Hi3rlOUuXcycyyaXxft2" alt=""><figcaption></figcaption></figure>

## Не отменять **(переключатель)**

Сообщения, запланированные с помощью стрелки, в которой включен ползунок "Не отменять", останутся запланированными, даже если клиент перейдет по стрелкам \
с включенным ползунком "Отменить сообщения с таймером".

<figure><img src="/files/0MM9OCl0P8Z6ti7UAGBa" alt=""><figcaption></figcaption></figure>

## **Поле: Дата и время отправки**

Для планирования сообщения на конкретное время укажите время отправки в формате чч:мм или выберите, используя ползунки.&#x20;

<figure><img src="/files/U7WwEf1UQd8R8KfUUyNN" alt="" width="563"><figcaption><p>Настройка времени отправки</p></figcaption></figure>

Для планирования сообщения в конкретную дату укажите её в формате дд.мм.гггг или выберите в календаре.

<figure><img src="/files/XsH4GtZjDPAynrEZ2KV3" alt=""><figcaption><p>Настройка даты отправки</p></figcaption></figure>

{% hint style="info" %}
Лучше всего одновременно с этим полем указывать и время отправки сообщения в поле "Время отправки"
{% endhint %}

\
**Если не указать время отправки,** сообщение будет отправлено за 1 минуту до начала указанной даты (в 23:59). Если указана задержку в поле "Задержка перед ответом", то она прибавится к назначенному времени.&#x20;

<figure><img src="/files/whG2A5eI87CEP2gfKIY5" alt=""><figcaption></figcaption></figure>

Сообщение будет отправлено в указанное время и дату, если в поле "Задержка перед ответом" будет указано числовое значение, то это прибавит задержку из поля:

<figure><img src="/files/mpaoX5vGLjXlODL59UhW" alt=""><figcaption><p>Настройки стрелки: время отправки + задержка перед ответом <br>сообщение будет отправлено через 30 минут после времени 08:28, в 08:58 17 июня</p></figcaption></figure>

<figure><img src="/files/UCI5c7YCJHD95kAo7bDO" alt=""><figcaption><p>В карточке клиента можно просмотреть дату и время отправки запланированного сообщения с учетом задержки</p></figcaption></figure>

Для указания времени можно использовать переменные. Переменная с временем может быть задана в константах проекта или объявлена в Калькуляторе блока.

<figure><img src="/files/eJdEbustM7NQkDN8kZLE" alt=""><figcaption><p>В Калькуляторе объявим переменную</p></figcaption></figure>

По аналогии можно использовать дату отправления, указав ее в формате дд.мм.гггг

<figure><img src="/files/H6oK85v1LKnyRRkuIAkx" alt=""><figcaption><p>В стрелке в поле "Время отправки" укажем переменную</p></figcaption></figure>

## Отсылать если дата прошла **(переключатель)**

Если в день отправки сообщения время прошло, и вы установили ползунок "Отсылать если дата прошла", оно будет запланировано на завтра.&#x20;

<figure><img src="/files/mEyxhDYlJK25HzbAPL7b" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="warning" %}
Ползунок "Отсылать если дата" прошла работает ТОЛЬКО вместе с датой отправки сообщения.
{% endhint %}

**Ситуация 1.** В стрелке указано время отправки 10:00  и ВЫКЛЮЧЕН ползунок "Отсылать, если дата прошла". Клиент попадает в воронку и получает блок "Сообщение 1" в 16:34, то следующее сообщение ЗАПЛАНИРУЕТСЯ на следующий день. \
\
В запланированных сообщениях у него будет отправка текста из блока "Сообщение 2"  на следующий день в 10:00.

<figure><img src="/files/nxlgkHSTpPOcMuDXJkKB" alt="" width="563"><figcaption><p>Сообщение 2 НЕ придет при таких настройках, <br>если клиент попал в блок Сообщение 1 позже 10:00</p></figcaption></figure>

**Ситуация 2**.  В стрелке указано время отправки 10:00  и Включен ползунок "Отсылать если дата прошла". Клиент попадает в воронку и получает блок "Сообщение 1" в 16:34 23 февраля.

Сообщение ЗАПЛАНИРУЕТСЯ на следующий день.\
В запланированных сообщениях у него будет отправка текста из блока "Сообщение 2"  на следующий день в 10:00.

<figure><img src="/files/0fpJOhyIdRtBgsNFyMRw" alt="" width="544"><figcaption><p>Настройки стрелки: время + Отсылать если дата прошла</p></figcaption></figure>

<div align="center"><figure><img src="/files/non6yhDSs8ud9ZXyRWUP" alt="" width="563"><figcaption><p>Ситуация 2: клиент попал в блок "Сообщение 1"<br> 23 февраля  позже 10:00, в стрелке ВКЛ Отсылать если дата прошла</p></figcaption></figure></div>

**Ситуация 3.** В стрелке указана ДАТА ОТПРАВКИ и время отправки 10:00.  Ползунок "Отсылать если дата прошла" ВЫКЛЮЧЕН. Клиент попадает в воронку и получает блок "Сообщение 1" в 16:34, то **следующее сообщение НЕ запланируется** на следующий день.

Клиент останется в блоке "Сообщение 1", в диалоге запланированных сообщений не будет.

<figure><img src="/files/kyvPJgbA1cmNgRF091tE" alt=""><figcaption><p>В поле Дата отправки указана встроенная переменная current_date  =  текущий день. </p></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/connections/date_time.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
