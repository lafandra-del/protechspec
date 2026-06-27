> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/crm-sistema/zadachi.md).

# Задачи

Раздел "Задачи" определенно заслуживает статус полезного раздела "Сейлбот" - это важная функция, которая помогает пользователям организовывать и управлять своими задачами и списками дел. Она предоставляет систему для создания, редактирования, приоритизации и отслеживания задач, помогая тем самым сохранять порядок и повышать продуктивность.

К основным функциям раздела “Задачи” можно отнести:

1. Создание и редактирование задач: пользователь может создавать новые задачи, вводить их описание, устанавливать сроки выполнения.
2. Приоритизация задач: возможность установить приоритет для каждой задачи, чтобы в первую очередь выполнять наиболее важные задачи.
3. Привязка к определенному сотруднику: в системе можно привязать выполнение определенной задачи к нужному сотруднику, который в свою очередь может просмотреть список именно своих насущных дел, что помогает избежать забывчивости и повысить продуктивность.
4. Распределение задач по календарю: пользователь может отображать понедельный календарь и просматривать список всех уже существующих задач и отслеживать сроки, не пропуская их.
5. Группировка задач - позволяет распределить задачи по категориям, что упрощает их поиск и выполнение.
6. Отслеживание прогресса выполнения задач: пользователь может видеть статус выполнения каждой задачи, отмечать их как выполненные или откладывать на потом.

## Как пользоваться разделом задачи?

Использовать раздел "Задачи" достаточно просто - раздел полностью понятен на интуитивном уровне: как создать задачу, удалить или изменить ее.&#x20;

Все задачи отображаются по умолчанию в виде календаря:

<div data-with-frame="true"><figure><img src="/files/3VPCGjclaDpnaVT5rQ0V" alt="" width="563"><figcaption></figcaption></figure></div>

Однако при необходимости можно отобразить задачи в виде списка:

<div data-with-frame="true"><figure><img src="/files/UF9kVcM1rAs4QEiSo160" alt="" width="563"><figcaption></figcaption></figure></div>

В списках задачи группируются по колонкам канбана, также в строке отображаются:

1. дедлайн;
2. участники задачи;
3. состояние задачи (иначе статус выполнения);
4. а также приоритет.

{% hint style="success" %}
Выбор отображения задач в виде списка или календаря сохранится автоматически: вам не нужно каждый раз переключаться на удобный формат, также в последующем вы сможете выбрать удобный формат в любое время.
{% endhint %}

{% hint style="info" %}
Редактировать просроченные задачи может сотрудник с ролью "Администратор" или сотрудник, у которого есть права на редактирование таких задач в кастомной роли.
{% endhint %}

Чтобы настроить редактирование задачи для других сотрудников, вам необходимо перейти в настройки сотрудника:

<div data-with-frame="true"><figure><img src="/files/gVjz7kEcQqQtP7GqI3Os" alt="" width="563"><figcaption></figcaption></figure></div>

Далее активируйте необходимые чекбоксы для определенной роли или сотрудника.

### Создание и редактирование задач

Создать задачу можно как с привязкой к сделке, так и отдельно.

Привязанные к сделке задачи создаются в разделе SalebotCRM.

Чтобы создать задачу, нажмите на одноименную кнопку справка на экране, после чего откроется окно создания задачи:

<div data-with-frame="true"><figure><img src="/files/OhqW7uSWB2DnkQCuTFbY" alt="" width="563"><figcaption></figcaption></figure></div>

Также существует форма быстрого добавления задачи: для этого кликните на + напротив необходимой даты, где снизу откроется форма:

<div><figure><img src="/files/EHRbjuVXqtyQC6yF6bZ8" alt=""><figcaption></figcaption></figure> <figure><img src="/files/gQmdMpHbyCfr9arkUdL9" alt=""><figcaption></figcaption></figure></div>

Где при нажатии на кнопку "+" откроется компактная форма добавления задачи со следующими полями:

1. Выбор клиента (для привязки задачи к определенному клиенту);
2. Дата и время истечения срока выполнения задачи;
3. Приоритет выполнения: низкий, средний, высокий.
4. Назначение ответственного сотрудника на выполнение задачи.&#x20;

В карточке клиента SalebotCRM можно увидеть сколько задач по клиенту было создано

<div data-with-frame="true"><figure><img src="/files/tDooofkkFWvlqSX9BpPE" alt=""><figcaption><p>Какрточка клиента SalebotCRM. Красный значок - задачи</p></figcaption></figure></div>

В клиентах можно создать/удалить задачу и посмотреть перечень задач этого клиента.

<div data-with-frame="true"><figure><img src="/files/PvsG9xWwexpK1kAPL721" alt="" width="563"><figcaption><p>Карточка Клиента - вкладка Задачи. Создание новой задачи</p></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/scwmSOHMe1xNEr5pHkeW" alt="" width="426"><figcaption><p>Карточка Клиента - вкладка Задачи</p></figcaption></figure></div>

В меню проекта можно увидеть общее число незакрытых задач:

<div data-with-frame="true"><figure><img src="/files/9jFrWSZ2UAmWZCj4ziBQ" alt=""><figcaption><p>Меню проекта</p></figcaption></figure></div>

Также создать задачу можно, не входя в диалог прямо в CRM-системе в воронке в списке имеющихся сделок с клиентами:

<div data-with-frame="true"><figure><img src="/files/XxeWQ0JA9dcbuOZ6i30b" alt=""><figcaption></figcaption></figure></div>

После нажатия на иконку задач откроется окно создания задач, аналогичное окну создания задачи в диалоге с клиентом:

В окне существуют поля для наименования задачи, постановки приоритета выполнения и даты; описания задачи, а также назначения ответственного сотрудника.

После создания задачи, просмотреть ее можно, нажав на иконку задачи:

<div data-with-frame="true"><figure><img src="/files/G6aKvwh2M0frcgNEImJm" alt=""><figcaption></figcaption></figure></div>

При нажатии на иконку, откроется диалоговое окно с клиентом с разделом задач:

<div data-with-frame="true"><figure><img src="/files/JJ0XHrQTo93lBhaKxOqY" alt="" width="425"><figcaption></figcaption></figure></div>

Здесь вы можете отредактировать задачу, завершить ее или вовсе удалить.&#x20;

<div data-with-frame="true"><figure><img src="/files/WY7qNOgZXHKXleDSsKIb" alt="" width="407"><figcaption></figcaption></figure></div>

Для завершения задачи откройте окно редактирования, нажав на "Редактирование задачи".

В открывшемся окне редактирования можно перенастроить приоритет, изменить название, а также выбрать другого ответственного сотрудника.&#x20;

### Завершить задачу

Для завершения задачи необходимо кликнуть на галочку на плашке задачи:

<div data-with-frame="true"><figure><img src="/files/2floKMuf11sbTdcA3Kpd" alt="" width="375"><figcaption></figcaption></figure></div>

После этого задача приобретет следующий вид:

<div data-with-frame="true"><figure><img src="/files/Sn4t1tUUKUxnXeBcPcg4" alt="" width="375"><figcaption></figcaption></figure></div>

## Канбан

Канбан - это одна из функций управления текущими делами, которая фокусируется на потоке работы и минимизации задержек. С помощью такой функции задачи можно распределить по определенным группам и отслеживать прогресс выполнения.

Канбан использует доски с карточками, на которых написаны задачи или этапы работы. Карточки перемещаются по доске в зависимости от стадии выполнения задачи. Например, карточка может начать на “Планировании”, перейти на “Выполнении” и затем на “Завершении”.

<div data-with-frame="true"><figure><img src="/files/43vjiCkAWPSFUIiyRMfR" alt=""><figcaption></figcaption></figure></div>

### Создание колонки и задач

Чтобы использовать функционал канбана, кликните и перейдите в соответствующий раздел:

<div data-with-frame="true"><figure><img src="/files/k99v6ahfPNJUnhei84iG" alt="" width="497"><figcaption></figcaption></figure></div>

После чего откроется пустая вкладка с предложением создать первую колонку в разделе:

<div data-with-frame="true"><figure><img src="/files/Bwg6qZc9IrZm66xY76fO" alt="" width="448"><figcaption></figcaption></figure></div>

Кликнув на кнопку, откроется форма с полем для наименования колонки и выбором цвета колонки

<div data-with-frame="true"><figure><img src="/files/WNSxwjE3D3qew0MHH4jr" alt="" width="563"><figcaption></figcaption></figure></div>

После того как вы прописали название колонки и, при необходимости выбрали цвет, колонка появится во вкладке канбан:

<div data-with-frame="true"><figure><img src="/files/3wRJPgfGve14ZhY1Un8K" alt="" width="563"><figcaption></figcaption></figure></div>

Можно добавлять любое необходимое количество колонок с помощью кнопки "Добавить новую колонку" (см. пример выше).&#x20;

Чтобы добавить в определенную колонку задачу, кликните по кнопке "+ Добавить задачу". Тогда откроется окошко быстрого добавления задачи:

<div data-with-frame="true"><figure><img src="/files/aQQBBBoERd5zgNQyiQl8" alt="" width="273"><figcaption></figcaption></figure></div>

Также можно воспользоваться кнопкой на верхней панели для добавления задачи либо добавить  задачу в колонке уже под созданными задачами.

В открывшейся модальной форме существует:

1. Поле для названия задачи;
2. Привязка задачи к определенному клиенту;
3. Выбор колонки;
4. Приоритет выполнения;
5. Выбор срока выполнения;
6. Назначение ответственного сотрудника.&#x20;

<div><figure><img src="/files/yF1dpF8pakLjhxNKk5Pi" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/QpZJH4SSXZ2chhgN33I5" alt=""><figcaption></figcaption></figure></div>

### Редактирование колонки и задач

Чтобы отредактировать колонку, воспользуйтесь меню дополнительных настроек, которое открывается при клике на данную кнопку:

<div data-with-frame="true"><figure><img src="/files/tfl25pOnmoYoJZegffXX" alt="" width="312"><figcaption></figcaption></figure></div>

В выпадающем меню также можно создать задачу, отредактировать или удалить колонку.&#x20;

Стоит отметить, что при удалении колонки, задачи НЕ удаляются. Задачи переносятся из раздела "Канбан" на доску с календарем или списком с определенной датой:

<div data-with-frame="true"><figure><img src="/files/ib0DJBmHR3da0cGAZycN" alt="" width="563"><figcaption></figcaption></figure></div>

Любую задачу из доски календаря можно перенести в колонку канбана.&#x20;

Для этого достаточно перейти в настройки редактирования задачи и выбрать колонку, в которую хотите продублировать задачу:

<div data-with-frame="true"><figure><img src="/files/TA4QD7ePBvWLh5qg30hq" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы поменять местами колонки, достаточно кликнуть на шестеренку в верхнем меню, где откроется окно настроек:

<div data-with-frame="true"><figure><img src="/files/nPJTz2tqu5zVjtoCGGce" alt="" width="485"><figcaption></figcaption></figure></div>

Далее зажмите левой кнопкой мыши необходимую колонку и перетяните ее в необходимое место.

### Вложения в задачах

{% hint style="warning" %}
Обращаем внимание!

Ограничение по вложениям:

1. Только фото- или видео-файлы;
2. Не более 10 вложений в одной задаче;
3. Размер каждого вложения не должен превышать 10 мб.
   {% endhint %}

<div data-with-frame="true"><figure><img src="/files/ugNtGKKFt0ZKwQKlTfHk" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы добавить необходимое вложение внутри задачи, нажмите "Редактировать задачу":

<div data-with-frame="true"><figure><img src="/files/PBWDxaHJKFTLid1CYiSf" alt="" width="470"><figcaption></figcaption></figure></div>

Далее в открывшемся модальном окне найдите кнопку "Вложение":

<div data-with-frame="true"><figure><img src="/files/9uRaWbDEb8VbsdzeVYBf" alt="" width="563"><figcaption></figcaption></figure></div>

Кликните на вложение и прогрузите необходимый файл (изображение или видео):

<div data-with-frame="true"><figure><img src="/files/rxYrhB6QXlrim49J1jin" alt="" width="563"><figcaption></figcaption></figure></div>

Дополнительно любое вложение можно добавить в описание вложения с помощью горячих клавиш.

Для начала выберите необходимое вложение и скопируйте его:

<div data-with-frame="true"><figure><img src="/files/KlIpKnadqbgRcxMXaWGn" alt="" width="563"><figcaption></figcaption></figure></div>

После чего перейдите в редактирование задачи канбана, куда необходимо внедрить вложение. \
Затем кликните на "Изменить" напротив описания:

<div data-with-frame="true"><figure><img src="/files/73axvxiDrn4ZM5FzwyEL" alt="" width="563"><figcaption></figcaption></figure></div>

Затем сочетанием горячих клавиш вставьте изображение (ctrl + V):

<div data-with-frame="true"><figure><img src="/files/LqcTGsWreTmbOV0boYTu" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы удалить или загрузить изображение из задачи, воспользуйтесь одноименными кнопками внутри задачи:

<div data-with-frame="true"><figure><img src="/files/brUV4GCtZZNAO00pM0CV" alt="" width="563"><figcaption></figcaption></figure></div>

## Коллбэки

### Функция коллбэк add\_new\_task\_from\_clients\_callback

При создании задачи, привязанной к определенному клиенту, в разделе "Клиенты" с ним в диалоге будет появляться сообщение с текстом: new\_task\_added\_callback task\_id:#{task.id}, task\_name:#{task.name}, где&#x20;

task\_id - это идентификатор задачи;

task\_name - это название задачи.

<div data-with-frame="true"><figure><img src="/files/LsIim4MxAMn9H97J19GL" alt=""><figcaption></figcaption></figure></div>

### Функция коллбэк edit\_task\_callback

При редактировании задачи, привязанной к определенному клиенту, в диалоге с клиентом будет появляться комментарий с текстом: "Задача была отредактирована #{current\_user.display\_name}: edit\_task\_callback task\_id:#{task.id}, task\_name:#{task.name}", где

task\_id - ID задачи;

task\_name - это название задачи.&#x20;

<div data-with-frame="true"><figure><img src="/files/JtjEonmkvgoRjUml9kql" alt=""><figcaption></figcaption></figure></div>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/crm-sistema/zadachi.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
