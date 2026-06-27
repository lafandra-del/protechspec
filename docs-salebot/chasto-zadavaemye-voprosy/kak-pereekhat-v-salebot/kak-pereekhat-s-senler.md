> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chasto-zadavaemye-voprosy/kak-pereekhat-v-salebot/kak-pereekhat-s-senler.md).

# Как переехать с Senler

Основные понятия, используемые в Senler и Salebot:&#x20;

1. группы подписчиков = списки;
2. триггер = блок с первостепенной проверкой условия;
3. метки = метки, переменные, теги;
4. подписная страница = сайт/минилендинг
5. блок = шаг

## Раздел рассылки

![](https://lh4.googleusercontent.com/1leCZC0vdpCOSBdxTVCMpkq2o3kmKDep4sJPCpnCNxs-V3C476Ulh9HguEwTOtZCUQl3f0IKbUPwiQYw5uEnW6Ql2ToLMnyQ71iS6-qs1V0SlPsS57PAOlT0CfE03AzkVrC_PkOi)

### Автосообщение

(автоматическое сообщение после оформления подписки)\
настраивается в разделе “Воронки”:

1\. создаёте блок с сообщением (вписываете текст приветственной рассылки в поле “ответ”

2\. Выбираете тип блока “первостепенная проверка условия”:

<figure><img src="/files/qDoCeinvUKttluW0HNmZ" alt=""><figcaption></figcaption></figure>

3\. в появившихся полях "Условие" впишите название тега в поле “условие” (на примере выше указан Teg);

4\. Если вам нужно, чтобы пользователь получил это сообщение только один раз, и не получал его снова при повторном переходе с этой же подписной страницы (минилендинга), то включите флажок “отвечать один раз за диалог” в расширенных настройках блока:

<figure><img src="/files/CS7cG8YXxwAhtuAhcBxa" alt="" width="563"><figcaption></figcaption></figure>

5\. нажмите готово.\
\
Если вы сделали всё верно, на белом поле экрана появится ярко-зеленый блок.

<figure><img src="/files/PHgzzwFIu4X3gw1UyQ20" alt="" width="563"><figcaption></figcaption></figure>

6\. Создаём минилендинг с тегом, который указали в условии этого блока.

{% hint style="info" %}
&#x20;Помните, что теги пишутся только на латинице
{% endhint %}

Тег прописывается в настройках сайта:

<figure><img src="/files/ca3SSPTfxWDqDqhdT5nY" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/TB9vhguSOYBcbld1QNSk" alt=""><figcaption></figcaption></figure>

### Целевая и Разовая рассылки

Рассылка по загруженному списку получателей, а также по выбранным с помощью фильтров получателям настраиваются из раздела “Рассылки”

<figure><img src="/files/qOu8jMS4Fez8a9LGkGIk" alt=""><figcaption></figcaption></figure>

Выбрать получателей можно с помощью списков, которые прогружаются в систему Salebot, а также с помощью уже находящихся клиентов в боте (в состоянии воронки).&#x20;

Найдите поле "Рассылка по клиентам из блоков":

<figure><img src="/files/6d2TPnIIMnzVs86i2ubK" alt="" width="563"><figcaption><p>Рис. 7</p></figcaption></figure>

Введите название блока - он подсветится в списке всех созданных блоков; либо его номер, который отображается в схеме блоков:

<figure><img src="/files/1kXZmKctYnO7bH4q413x" alt="" width="335"><figcaption><p>Номер блока для рассылки</p></figcaption></figure>

Вы можете выбрать любое необходимое количество блоков, чтобы осуществить рассылку для клиентов, поставив рядом с нужным чекбокс (галочку):

<figure><img src="/files/TNvBRZ92Sno5UI5apQDg" alt="" width="313"><figcaption></figcaption></figure>

Еще один вариант работы с рассылками - **создание рассылки “из блока”**\
(в Senler этот функционал реализуется через фильтры в разделе подписчики и действие - добавить на нужный шаг в боте)\
\
У нас наоборот, в разделе “воронки” вы находите нужный блок, нажимаете на него, справа вверху возле типа блока находите иконку дополнительных настроек и нажимаете “создать рассылку”. Далее вам открывается привычное окно создания рассылки (фильтруете получателей и ставите нужные данные для отправки пользователей в выбранный блок).

<figure><img src="/files/hJoakpX9EOAKkUjKXm6U" alt="" width="563"><figcaption><p>Рис. 4</p></figcaption></figure>

## Раздел группы подписчиков

Функционал этого раздела на Salebot реализуется с помощью “минилендингов” и “списков”.\
Полная инструкция по работе со списками

{% embed url="<https://www.youtube.com/watch?v=KdcdYffzgs0&feature=emb_imp_woyt&ab_channel=%D0%9A%D0%BE%D0%BD%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%82%D0%BE%D1%80Salebot>" %}

## Раздел подписчики

В Salebot вы видите список всех пользователей (подписчиков) в разделе “клиенты”.\
Кроме того, там же находится диалоговое окно с ними. В сенлере этого функционала нет - переписку вы видите только в самой группе вконтакте.\
В сейлботе вы можете общаться с пользователями прямо не выходя за пределы платформы.\
\
Это также удобно, когда вы работаете не только со Вконтакте, но и подключаете остальные мессенджеры. Все ваши пользователи находятся в одном месте и вам удобно администрировать весь проект.

<figure><img src="/files/3IWjnCjZbObbBPr0oA9g" alt=""><figcaption></figcaption></figure>

Справа находятся фильтры, сверху кнопка “выгрузить” = “экспорт”.

## Как выгрузить базу из Senler

В разделе подписчики поставьте нужный вам фильтр (на скрине пример фильтра по группе подписчиков) или оставьте без фильтра, затем нажмите на кнопку ЭКСПОРТ.

![](/files/-MSTAx2zYzsTX52ZTxFI)

В открывшемся окне выберите CSV и нажмите начать.

![](/files/-MSTB6gdmxzaW-KLv7QG)

## Как загрузить подписную базу в Salebot

В разделе “Каналы” нажимаете кнопку подключить “Вконтакте”, подключаете нужную группу.

Внизу видите флажок “синхронизировать переписку из ВК” - если его включить, то сообщения, которые вы будете отправлять из интерфейса вконтакте, будут отображаться и у нас. Если вы параллельно используете и другие рассыльщики то включать его не рекомендуется.

{% hint style="success" %}
Все, с кем когда либо был диалог в сообщениых группы, загрузятся автоматически.
{% endhint %}

Если же вы хотите загружать контакты сегментировано, то нажмите “загрузить список клиентов”. Добавьте подготовленный файл с id пользователей, выберите в какой список их поместить (создайте его заранее в разделе “списки”).

<figure><img src="/files/KJdEN25Pz5N2UtI8lN9a" alt=""><figcaption></figcaption></figure>

Если всё сделано верно, то после кнопки “готово” у вас откроется раздел “клиенты” и вы увидите диалоги с загруженными пользователями.\
Также можно проверить какое количество пользователей находится в указанном при загрузке контактов списке.

## Раздел чат-боты

### Блок - сообщение

![Senler](https://lh3.googleusercontent.com/qgOKZZQL0zqLgV1mRa7_ZfhfGfw2NW5SX7T_Aaxvbg5jYdy_torEyYK7NRTYd-_SDxm3dpD1jpWmkE8IGl_AM1eImAyYfmeTkF7LRuTAfo_tiLYjh6uqpB-Dn8KHBx0xdf9Nolue)

Справа у вас по умолчанию находится открытое поле для создания/редактирования блоков. Чтобы создать первый блок схемы, можно кликнуть по белому полю два раза левой кнопкой мыши.

<figure><img src="/files/uFeKTm7dryJkIDcWKBWJ" alt="" width="563"><figcaption><p>Как создать блок кликом мыши</p></figcaption></figure>

Также блок можно создать просто нажав на кнопку сохранить внизу правого поля:

<figure><img src="/files/J3vWcYdHZmrhlG4opXHL" alt="" width="339"><figcaption></figcaption></figure>

Блок с написанным сообщением появится на белом поле.&#x20;

Чтобы создать новый блок с текстом - впишите нужное сообщение в поле c #{none} и нажмите кнопку “сохранить”.

### Настройки вложений в сообщении

Чтобы отправлять сообщения с вложениями, в блок схемы нажмите на "Вложение" и выберите его тип:

<figure><img src="/files/EkukObJoAk7Lp65YtB62" alt="" width="563"><figcaption></figcaption></figure>

Вставить любой тип вложения можно с помощью загрузки файла в блок, а также ссылки в поле URL вложения.&#x20;

<figure><img src="/files/479MljYxDI8CpAAXqblw" alt="" width="296"><figcaption><p>Настройки вложения</p></figcaption></figure>

Аналогично вставке изображения, можно отправить в блоке ссылку, видеозапись, файл, а также аудиозапись.&#x20;

### Таймер

![](https://lh3.googleusercontent.com/h6RF5NalD6h3eap5oYmuGWWYgm9jZMWhL6JZqwuJZrJ_cYTeHCBBt2KaTmCvnH1wjvu9q8Tzj_0AXBUJdenstVRZTwX-qD5vJEOjUu57BrgEMG9jOpz6SbZll5oKGrtkmILQps5E)

Настройка таймеров в Salebot происходит в стрелках.\
Для настройки таймера нужно нажать на шестеренку или правой кнопкой мыши по самой стрелке :

<figure><img src="/files/KbhjBMtg2G6jYzz5yoiN" alt=""><figcaption></figcaption></figure>

Вам откроются поля:

В поле “задержка перед ответом” выставляем таймер-паузу, сколько сек/мин/час/дней бот будет ждать до отправки следующего блока.\
В поле “время отправки” ставим конкретное время в формате ЧЧ:ММ (10:00 например).\
В поле “дата отправки” пишем конкретную дату.\
Также в эти поля можем вставлять переменные, например #{next\_day} - что означает отправка на следующий день.

<figure><img src="/files/14f4z4oxHzecpxW9BMiY" alt="" width="437"><figcaption></figcaption></figure>

{% hint style="success" %}
Подробная инструкция по работе с датами и временем [здесь](https://docs.salebot.pro/peremennye-1/rabota-s-datami-i-vremenem).  [<br>](https://docs.salebot.pro/peremennye-1/rabota-s-datami-i-vremenem)Там же ест[ь пример](https://docs.salebot.pro/peremennye-1/rabota-s-datami-i-vremenem#proverka-popadaniya-v-rabochee-vremya-ili-v-nerabochee) настройки для попадания в рабочее время.&#x20;
{% endhint %}

### Действия

"Ответ на сообщение" настраивается в стрелках, когда нужно запомнить, что ответил пользователь. Для этого в настройках стрелки нужно включить флажок “пользователь вводит данные” и в поле ниже указать, в какую переменную запишется его ответ.

<figure><img src="/files/G1akMCoOf3Go91CSAYFz" alt=""><figcaption></figcaption></figure>

Стоит отметить: настройку отправки данных администратору можно осуществить для любого мессенджера.&#x20;

{% hint style="success" %}
Подробнее об этом читайте в [этой статье.](https://docs.salebot.pro/api-v-konstruktore-salebot.pro/otpravka-zayavok-v-messendzhery)
{% endhint %}

Действие с группой подписчиков = со списком - доступно при функционале добавить действие в блоке схемы:

<figure><img src="/files/tzMXybqBGGEhR2ZtSWPi" alt=""><figcaption></figcaption></figure>

Очистить данные (обнулить переменные пользователя) можно с помощью красного блока: необходимо поменять тип блока с “состояние диалога” на “конец сбора данных”.

<figure><img src="/files/3gvzKgnd63CFgdyL4jt5" alt="" width="563"><figcaption></figcaption></figure>

## Как работать с кнопками

### Сообщение с кнопками инлайн

Инлайн-кнопки вставляются в настройках блока:\
нажмите на блок с сообщением, в которое нужно добавить кнопки, затем в окне справа нажмите “настройки кнопок” и в поле “расширенные настройки кнопок” вставьте \[{"type": "inline", "text": "название вашей кнопки", "line": 0, "index\_in\_line": 0}]

<figure><img src="/files/Kqo6rMa4UxHGlaPF0BNz" alt="" width="375"><figcaption></figcaption></figure>

На примере выше показано, как добавлять инлайн-кнопки в блоки.

### Сообщение с кнопками в тексте и клавиатурные кнопки

Основное различные кнопок в тексте и клавиатурных кнопок в том, что клавиатурные исчезают после нажатия или ввода текста с клавиатуры, а кнопки в тексте - не пропадают после нажатия.\
В Salebot добавить кнопку с любой необходимой функцией можно в блоке, а также обозначить любое необходимое название. Для этого в блоке схемы выберите "Кнопки" и нажмите "Добавить кнопку":

<div><figure><img src="/files/G4Nlu9Cf1pKQCfZQLe8N" alt="" width="419"><figcaption><p>1) Добавляем функцию кнопки в блоке</p></figcaption></figure> <figure><img src="/files/Mh82nubzKCGGL0uGdFBF" alt="" width="406"><figcaption><p>2) Добавляем саму кнопку</p></figcaption></figure></div>

Далее откроется окно с настройками кнопки, где можно выбрать ее функцию, а также прописать название и выбрать любой понравившийся цвет:

<figure><img src="/files/JY3IpyysbHE5YKfQGKOY" alt="" width="563"><figcaption></figcaption></figure>

Далее при необходимости перехода клиента после нажатия кнопки в следующий блок, можно прописать условие с названием кнопки в стрелке:

<figure><img src="/files/En35wtiCUXVmEetg9mLf" alt="" width="563"><figcaption></figcaption></figure>

## Как настроить напоминания в воронке

\
Для напоминаний мы воспользуемся серыми блоками “не состояние”

<figure><img src="/files/Xv9VViJj2BU5YDJKiFZT" alt="" width="563"><figcaption></figcaption></figure>

Этот блок отправит пользователю сообщение, но при этом не передвинет его никуда из основной воронки.&#x20;

Также в стрелках используем таймер + ВКЛЮЧАЕМ флажок “отменить, если покинул блок”.&#x20;

<figure><img src="/files/2E5bDsfckRQD7nxlK4fL" alt="" width="563"><figcaption></figcaption></figure>

Это означает, что эта стрелка сработает только для тех пользователей, которые через указанное время всё еще стоят в блоке и не продвинулись дальше по основной воронке.

Сам блок выглядит следующим образом:

<figure><img src="/files/LKT22JIakwmIP2ViWdvt" alt="" width="563"><figcaption></figcaption></figure>

Таким образом, через пять часов мы направили клиенту сообщение-напоминание и продвинули его дальше по воронке.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chasto-zadavaemye-voprosy/kak-pereekhat-v-salebot/kak-pereekhat-s-senler.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
