> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/inye-servisy/vakas-tools.md).

# Vakas-Tools

{% hint style="warning" %}
**ВАЖНО!** Функционал интеграции Vakas-Tools с Salebot доступен только при подключении тарифа «Базы» в VakasTools
{% endhint %}

Доступный функционал в Vakas-tools совместно с Salebot:

\- Передача регистраций;\
\- Передача событий из отчётов с вебинара;\
\- Передача данных о заказах и оплатах клиента в воронку Salebot.

## Как подключить Salebot к аккаунту Vakas-tools

К Вашему аккаунту Vakas-tools требуется подключение по API сервиса Salebot

Чтобы его подключить, необходимо в своем личном кабинете в меню слева нажать пункт меню «чат - боты»

![](/files/zZFsCxKmX113bxhh5glo)

Выбрав пункт Salebot, Вам необходимо вписать API-ключ:

![Поле ввода API-ключа в VakasTools](/files/dZ7OVwVzKEPSJSiqzNjG)

В Salebot ключ можно взять в настройках Вашего проекта (пункт Настройки -> в самом низу страницы  Ключ доступа к API -> Сгенерировать):

<figure><img src="/files/llCWhVWj0q7Cw9QCXbn8" alt=""><figcaption><p>Настройки Salebot</p></figcaption></figure>

<figure><img src="/files/1fRZINCbivvPbX3TKUZT" alt="" width="563"><figcaption><p>Генерируем API-ключ</p></figcaption></figure>

После добавления ключа в VakasTools в разделе "Базы" станет доступна кнопка Salebot:

![](/files/frrpyRPoyIeUGENSckgY)

После подключения станет доступна возможность установить настройки:

![](/files/1GsG2xMJw1HH4tC6gtOw)

## Как передать данные регистрации

Чтобы передавать регистрации в вашу базу в Vakas-tools, перейдите в «Регистрации», в меню сверху.

Копируете код из поля Для передачи данных с регистрации на страницу Спасибо.

![](/files/1lsB953f0EtL0ymxU8r6)

![](/files/fXludsOZS8ZmXaTJyg3u)

Скопированный код нужно поставить на вашу страницу Tilda. Для этого переходим на свою страницу втTilda и добавляем блок Т123 - HTML - код. В разделе контент данного блока вставляем скопированный код, в котором уже прописана ссылка на вашу страницу «Спасибо».

![](/files/PH4G9tRXkcn8FEJT5EsT)

После вставки кода нажимаем «Сохранить и закрыть», опубликовываем страницу, чтобы протестировать передачу регистраций.

![](/files/Jxw4H9cIPVKwv7mxsWkq)

Отправляем тестовую регистрацию. Вводим свои тестовые данные в регистрационной форме и нажимаем кнопку отправки данных (в нашем случае - Записаться на вебинар).

![](/files/L3EjPMd8uvE4hyXvTmQM)

После отправки данных Вас перенаправит на страницу "Спасибо". При верной настройке в строке браузера после ссылки на страницу спасибо должны передаться все данные, которые Вы заполнили в форме, ниже на изображении данные из нашей тестовой формы: **Имя, Почта, Телефон**

![](/files/E2dfmg5F9jeq0mVTIluc)

На странице "спасибо" размещены кнопки перехода в мессенджер. Для того чтобы реализовать передачу данных с регистрационной формы на страницу "спасибо", потребуются дополнительные настройки со стороны Salebot.

Во-первых, для работы будем использовать прокси-ссылки на наши мессенджеры. А для этого создадим минилендинг в Salebot и с него скопируем ссылки на необходимые мессенджеры:

![](/files/isWDMrGBTbVH817LeNX4)

Полученные ссылки переносим в окно настройки кнопок на нашем сайте Tilda:

![](/files/gYAOReUGX4gcm3VdcS3S)

Во-вторых, разместим на странице Tilda дополнительный script (код). Для этого вернемся в личный кабинет Vakas-Tools -> раздел «Базы», где выбираем интересующую нас базу, и под кнопкой Salebot пункт меню «Регистрации» копируем второй код Для передачи данных в кнопки мессенджеров:

![](/files/lihVIcAY7hHFtDd9qbuH)

![](/files/fGXDARcUzjs9x9s5UK1O)

Вставляем данный код в разделе контент блока Т123:

![](/files/7QEPwD9J0FAKj0Lgny8m)

Теперь нажимаем кнопку «Опубликовать».

Идем в воронку Salebot и добавляем новый блок. Этот блок будет передавать данные о клиенте в Salebot:

**Тип блока - передача данных**

**Тип запроса - POST- json**

<figure><img src="/files/N5z1TZvQBui6jggJKQO6" alt=""><figcaption></figcaption></figure>

Текст сообщения можно оставить пустым. Обязательно к заполнению данные поля **URL - запроса** - сюда мы пишем вебхук из раздела Ссылки Вашей Базы.

![](/files/zvwG5wzR5jqWVsasmPRv)

![](/files/4GYH8ELgozt10m6Ddssn)

Копируем его и вставляем в поле URL-запроса блока воронки.

![](/files/VJ1iJNJGE0zJDWu2dHyQ)

В этом же блоке воронки есть возможность указать JSON-параметры, сюда мы вписываем те параметры, которые нужно передать в базу при регистрации.

![](/files/A11v7wgsUsOIQlTzsS1n)

Параметры из примера:

{

"ss\_id": "#{client\_id}",

"client\_id": "#{client\_id}",

"name": "#{name}",

"phone": "#{phone}",

"email": "#{email}",

"utm\_source": "#{utm\_source}",

"utm\_medium": "#{utm\_medium}",

"utm\_campaign": "#{utm\_campaign}" ,

&#x20;"import":"update"

}

И вновь проводим тестовую регистрацию. Для теста передачи всех данных можете заранее сгенерировать и разметить ссылку с UTM - метками. Теперь переходим в воронку Salebot, нажимаем в меню слева «Клиенты» и проверяем результат передачи данных: справа в карточке клиента Вы должны обнаружить все данные клиента с регистрации:

![](/files/t8FrUpNCtPKEDAmoudCp)

Чтобы передать дополнительные данные о клиенте, нажмите кнопку **«Добавить переменную»**

![](/files/MBtjd9wLnH7bJAq6iFNa)

**Например:** дополнительные переменные, которые будут передаватьс&#x44F;**:**

\- Дата вебинара, на которую зарегистрировался клиент.\
\- Сокращенная ссылка на вебинар.

![](/files/GyQy5KuQ5f8Nmgew0aqb)

Вот в примере нашего тестового клиента передались эти данные Дата вебинара и Сокращенная ссылка на вебинарную комнату:

![](/files/nudoru5lilTCEObMLH83)

## Как передавать отчеты

![](/files/JU7yRAG1M3RlSQNUOTAG)

Нажимаем кнопку «Добавить» и добавляем услови&#x44F;**,** при которых сработает выгрузка данных в SaleBot. **Например:**

![](/files/tiWQCeSEMvthwm60Cxm2)

**Порядок** - « 1 » - порядок важен, т.к. в таком порядке проверяются условия.

**Воронка - startit -** воронка, которая запустится в SaleBot

И выбираете при каких условиях срабатывает данное событие.

**Поле в базе** - был на вебинаре

**Условие** « = »

**Значение поля** - « 1 »

Таким образом, в воронку Вашего проекта будет передана информация о том, что клиент был на вебинаре.

![](/files/KesJWVZGu5AtJ2wPMpLp)

Какие данные о вебинаре будем передавать задаем по кнопке «Добавить переменную» для каждого события.

**Например:**

\- был на вебинаре\
\- сколько был минут на вебинаре

![](/files/ntqmcSoX4IS3cENmBfDe)

Эти данные также будут видны в карточке клиента.

![](/files/jpcKX6CZ8KKsmVOOFd3l)

## Как передавать заказы

![](/files/S0A0GqQmzJsLNIWOV8c9)

Нажимаем кнопку «Добавить» и добавляем условия, при котором сработает выгрузка данных в SaleBot.

Пример созданного заказа:

![](/files/Wg4FjpAhQtT8VByBsiJa)

**Порядок** - « 1 » - порядок важен, т.к. в таком порядке проверяются условия.

**Воронка - pay -** воронка, которая запустится в SaleBo&#x74;**.**

Далее указываете при каких условиях срабатывает данное событие.

**Поле в базе** - оплачено

**Условие** « > »

**Значение поля** - « 0 »

Таким образом, в воронку Вашего проекта уйдет информация о том, что клиент создал и оплатил какую то часть заказа.

Какие данные о заказе следует передавать задаем по кнопке «Добавить переменную» для каждого события.

![](/files/m8PNU0FMvlowFC4w9aaC)

Например:

sum - стоимость тарифа\
tarif - Название тарифа\
payed - оплачено

Все указанные данные заказа будут переданы в Вашу воронку в Salebot.

![](/files/aHe8NYVD4iDSnkFZu58T)

При таких настройках информация в карточке клиента будет отображена следующим образом:

![](/files/008dAtl2jE9bDENylktt)

## Как использовать шорткод link в воронке чат-бота на Salebot

Для того чтобы использовать **шорткод link,** который будет **передавать ссылку** на вебинарную комнату из Вашей Базы, Вам нужно создать в воронке блок с кнопкой:

<br>

![](/files/lJVdn1bE30mQTuwsPzF4)

Нажимаем на кнопку «Вебинар начинается»

Пишем название, которое вам необходимо, задаете настройки кнопки и **пишите вместо ссылки шорткод - #{link}:**

![](/files/rwx4qZMqOBZ0CwwlEeNy)


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/inye-servisy/vakas-tools.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
