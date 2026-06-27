> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/crm-sistema/klienty-v-odnom-okne/dialog-s-klientom.md).

# Диалог с клиентом

В разделе "Клиенты" (при клике в левом списке на пользователя) можно открыть диалоговое окно, чтобы просмотреть необходимую информацию и историю переписки с клиентом:

<div data-with-frame="true"><figure><img src="/files/8kYcvWeuCfxeKaAYUvO2" alt=""><figcaption></figcaption></figure></div>

При этом можно вести общение с пользователями из разных мессенджеров в едином разделе "Клиенты" — не нужно переключаться каждый раз к разным мессенджерам, социальным сетям или чату с объявлением (например, для Юлы, Циана или Авито).

## Данные и информация о клиенте

Правый бар - это карточка клиента, в которой указана вся информация о нем. В карточку записаны, как стандартные переменные, так и те которые вы записываете в боте, лендинге или получаете из сторонних сервисов (например телефонии):

<div data-with-frame="true"><figure><img src="/files/aRp6m4j9T8b4uQlOby9q" alt=""><figcaption></figcaption></figure></div>

<p align="center"><em>p.s. все данные вымышлены, совпадения случайны</em></p>

Карточка имеет несколько подразделов:

1. О клиенте;
2. Комментарии;
3. Сделки;
4. Задачи;
5. Курсы (на тарифе "Инфобизнес").

### О клиенте

В каждой карточке есть стандартные поля и кнопки взаимодействия.

<div data-with-frame="true"><figure><img src="/files/2G2GQMkuBRdI1PRG3V9e" alt="" width="375"><figcaption></figcaption></figure></div>

<p align="center"><em>p.s. все данные вымышлены, совпадения случайны</em></p>

Если клиент обращается из мессенджера и у него установлен аватар, то он отобразится в карточке клиента. Также будет указано имя клиента (автоматически прописывается из мессенджера: номер телефона для whatsapp, имя пользователя — для Telegram, имя и фамилия — для Вконтакте и т.д.)  :

<div data-with-frame="true"><figure><img src="/files/a8OkP3kt7d5lKUCqLkmA" alt=""><figcaption></figcaption></figure></div>

Чтобы изменить имя клиента, нажмите на кнопку карандаша и пропишите необходимое:

<div data-with-frame="true"><figure><img src="/files/igGa9bIZqDTWmHPnnFi0" alt="" width="563"><figcaption></figcaption></figure></div>

ID клиента - это идентификатор клиента в salebot, *<mark style="color:orange;">уникальный номер</mark>* клиента. Этот идентификатор (client\_id) используется при работе с функциями в salebot, а так же может понадобится при работе с клиентами (поиск, связывание клиентов и прочее).&#x20;

<div data-with-frame="true"><figure><img src="/files/521LmuMBhN3jvfc1K6rO" alt="" width="563"><figcaption></figcaption></figure></div>

Кнопка "Передать клиента" - кнопка позволят назначить ответственного для данного клиента.

Также ответственного можно назначить в плашке "Ответственный":

<div data-with-frame="true"><figure><img src="/files/TF7kbZQMOeMuqjnnGINz" alt="" width="375"><figcaption></figcaption></figure></div>

Во вкладке "О клиенте" можно увидеть карточку "Контакты":

<div data-with-frame="true"><figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252FY8W0lqOPwBgtzYXgJqga%252FScreenshot%25202025-12-30%2520at%252012.10.51.png%3Falt%3Dmedia%26token%3D0bcadaa3-5a8a-46f2-8a91-a62ce9b78ad4&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=352ffbb6&#x26;sv=2" alt="" width="563"><figcaption></figcaption></figure></div>

В данной карточке отображается номер телефона и / или электронная почта, полученные:

1. Если клиент написал в бот, а бот собирал данные клиента с помощью переменных phone / email:

Пример схемы со сбором данных номера телефона (email) в переменные phone (email):

<div data-with-frame="true"><figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252FW3MLCnansq53rSvz7Wu7%252FScreenshot%25202025-12-30%2520at%252012.17.44.png%3Falt%3Dmedia%26token%3D93338913-1b44-4193-91a4-18c6915f5540&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=d7c191ba&#x26;sv=2" alt="" width="563"><figcaption></figcaption></figure></div>

[Подробнее, как работать со стрелкой со сбором данных, рассказали здесь.](/chatbots/builder/connections/type.md#strelka-so-sborom-dannykh)

1. Можно заполнить данные вручную в разделе "О клиенте":

<div data-with-frame="true"><figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252FHxt18G13RdXLzo1v9y4E%252FScreenshot%25202025-12-30%2520at%252012.19.56.png%3Falt%3Dmedia%26token%3D2d57ea0e-770f-4c76-beb4-80e06de8ac3a&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=416c0dc3&#x26;sv=2" alt="" width="563"><figcaption></figcaption></figure></div>

2. При создании сделки в боте со сбором данных клиента или при ручном создании сделки (нужно заполнить поля телефон и почта):

<div data-with-frame="true"><figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252FpdgO0QBVOIiktwvuIVLE%252FScreenshot%25202025-12-30%2520at%252012.24.32.png%3Falt%3Dmedia%26token%3D172d0b25-5491-498d-9a76-880cdb5f97e5&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=b31e167d&#x26;sv=2" alt="" width="375"><figcaption></figcaption></figure></div>

3. При заполнении клиентом формы сбора данных ([при включении переключателя в настройках "Создать сделку в CRM](https://docs.salebot.pro/~/changes/5570/saity-dlya-biznesa/konstruktor-saitov/minilendingi-v-socialnykh-setyakh/sekcii-bloki/sekciya-forma#kak-dobavit-sdelku-v-salebotcrm-s-saita)")

<div data-with-frame="true"><figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252FE0z8i8UXU9c1yDa3udPy%252F%25D0%25A1%25D0%25BD%25D0%25B8%25D0%25BC%25D0%25BE%25D0%25BA%2520%25D1%258D%25D0%25BA%25D1%2580%25D0%25B0%25D0%25BD%25D0%25B0%25202024-04-25%2520%25D0%25B2%252012.59.55.png%3Falt%3Dmedia%26token%3D1f99ea2d-df02-4036-865e-3e36bc724df9&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=59788087&#x26;sv=2" alt="" width="563"><figcaption></figcaption></figure></div>

В карточке клиента отображаются данные по этапу воронки, в которой находится клиент на текущий момент и реализована возможность перемещения клиента:

<div data-with-frame="true"><figure><img src="/files/eu7kpifxTK4DQoj9vO4A" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="info" %}
Если клиент не привязан к сделке или воронке, состояние сделки отображаться не будет.
{% endhint %}

Если у вас создано несколько воронок, то их состояния будут скрыты, до того момента пока вы не захотите изменить этап воронки для текущего клиента и не кликните на нужную воронку.&#x20;

Также в данном блоке вы можете добавить клиенту метку или переместить его в список. Метки и списки можно создать из карточки клиента:

<div data-with-frame="true"><figure><img src="/files/5ybnKSKcHCnnvWqhxNH3" alt="" width="563"><figcaption></figcaption></figure></div>

<details>

<summary>Как добавить клиента в список или присвоить метку</summary>

Во вкладке "О клиенте" можно присвоить клиенту метку и добавить его в различный созданный список.&#x20;

<figure><img src="/files/FFbugchBc1HJV5nftXF7" alt="" width="563"><figcaption></figcaption></figure>

Чтобы добавить метку, нажмите на кнопку "+ метки". В открывшемся окне в пустом поле пропишите название метки и при необходимости выберите ее цвет:

<figure><img src="/files/vnIrOHqP1w5dHxGJ6r8n" alt="" width="563"><figcaption></figcaption></figure>

Добавьте необходимое количество меток и отметьте в галочку возле метки для добавления ее клиенту.

Чтобы удалить или изменить метку, нажмите на иконку карандаша, после чего в открывшемся окне произведите необходимые изменения или удалите метку.

<figure><img src="/files/kxuLREfZgf1ktrI1oQUx" alt="" width="563"><figcaption></figcaption></figure>

В дальнейшей вы сможете осуществлять поиск по меткам в фильтрах.&#x20;

Аналогично функционалу создания метки, можно создавать списки клиентов:

<figure><img src="/files/z8ji20h4yeOtoPmgo4k2" alt="" width="563"><figcaption></figcaption></figure>

В обязательном поле пропишите название списка и при необходимости выберите цветовую гамму списка. После чего отметьте галочкой необходимый список.&#x20;

</details>

Ниже в карточке клиента расположен блок с переменными и редактором переменных. \
Вы можете добавить переменную из данного блока указав тип переменной (переменная клиента или переменная сделки) задав ее имя и значение.&#x20;

<div data-with-frame="true"><figure><img src="/files/fp9JNxBZ5b7dq6oBnOct" alt=""><figcaption></figcaption></figure></div>

Также в карточке указаны системные переменные: в документации будем рассматривать только их, так как набор переменных, которые вы можете задать в своем проекте, будет уникальным.

{% hint style="info" %}
Подробнее о переменных рассказали [в одноименной статье. ](/chatbots/peremennye-i-funkcii/peremennye.md)
{% endhint %}

<figure><img src="/files/EdMx1uxsDY5F4bXhq08o" alt="" width="563"><figcaption></figcaption></figure>

1. ***Тег*** - Переменная-идентификатор которая позволяет отследить откуда пришел клиент. [Подробно о теге рассказали тут](/websites/builder/nastroiki-stranicy-saita.md#teg)
2. ***Дата создания*** - это дата и время в которые был создан текущий клиент. Часовой пояс указан тот, который задан в проекте.&#x20;
3. ***Последнее действие*** - время последнего действия с клиентом
4. ***Источник*** - мессенджер из которого пришел клиент.
5. ***ID в мессенджере*** - уникальный идентификатор клиента в мессенджере (переменная platform\_id). Используется для загрузки клиентов, работы с функциями api, поиска клиента и прочих действий.&#x20;
6. ***Привязан к боту*** - в этом параметре указано имя бота или его идентификатор&#x20;
7. ***Позиция в воронке*** - номер блока в схеме раздела "Конструктор воронок". Если у вас создана схема и клиент проходит по ней, то в данном параметре будет указан номер блока в котором клиент находится на данный момент.&#x20;
8. ***Ответственный*** -  email сотрудника, к которому привязан клиент. Если клиент ваш, так и будет написано “Ваш клиент”.
9. Если клиент остановился в воронке, где следующий блок отправляет сообщение с задержкой, то будет отображаться переменная "***Сообщений запланировано":***

<figure><img src="/files/g1ycygpzlfCBpzLj04pM" alt=""><figcaption></figcaption></figure>

<details>

<summary>Подробнее о запланированных сообщениях</summary>

Если кликнуть на параметр, то откроется окно со списком сообщений:

<figure><img src="/files/JkP02LpgxyZqR5SvcQah" alt=""><figcaption></figcaption></figure>

В модальном окне указан номер блока, из которого сообщение запланировано, текст сообщения или наименование блока, если оно задано, а также дата и время отправки.&#x20;

Дату и время вы можете изменить, для внесения изменений необходимо выполнить следующие действия:

* Указать дату, выбрав ее в календаре
* Ввести время отправки&#x20;
* Нажать кнопку <mark style="color:orange;">"Подтвердить"</mark>

<figure><img src="/files/oCZV1qA8kkahYY6VDzJA" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Если изменение даты и времени не **подтвердить** нажатием кнопки, то сообщение будет отправлено по ранее созданным настройкам. \
Сохраняйте все изменения, которые вносите для корректной отправки сообщений.&#x20;
{% endhint %}

Можно отправить блок сразу (кнопка с иконкой письма), отменить отправку (кнопка с перечеркнутым кругом) или оставить без изменений (на крестик в правом верхнем углу).

<figure><img src="/files/LDeDdfuHpmjs9Lhy1TiW" alt=""><figcaption></figcaption></figure>

</details>

10. **Прокси ссылки** — отображает количество прокси ссылок клиента. При нажатии открывается таблица этих прокси ссылок.

<div data-with-frame="true"><figure><img src="/files/pik3w03klFF6oFuxGDhT" alt="" width="563"><figcaption><p>Таблица прокси-ссылок в карточке клиента</p></figcaption></figure></div>

### Комментарии

Подраздел "Комментарий" дает возможность оставлять комментарии в диалоге клиента, причем сами сообщения из данного раздела клиент не увидит.&#x20;

<div><figure><img src="/files/p0Y18cFFH11KG9rNW9dj" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/sbo2g35HNOkLT0ZijMzz" alt="" width="563"><figcaption></figcaption></figure></div>

Это удобно когда вопрос клиента находится на уточнении или с клиентами работает несколько операторов или сотрудников из разных отделов.&#x20;

<div data-with-frame="true"><figure><img src="/files/dKxa733QAT292AdRkdAt" alt="" width="563"><figcaption></figcaption></figure></div>

Комментарий можно оставить также, если нажать на "Преобразовать в комментарий", когда пишите сообщение:

<div data-with-frame="true"><figure><img src="/files/LZgmyeclDXbzL6xj6jyx" alt="" width="563"><figcaption></figcaption></figure></div>

В комментарии будет указан его создатель и дата/время. Также оставленный в диалоге комментарий можно удалить, редактировать или закрепить в диалоге клиента. Выбрать действие можно в боковом меню:

<div data-with-frame="true"><figure><img src="/files/0WSJQLZOGboaDVVRVerw" alt="" width="563"><figcaption></figcaption></figure></div>

### Сделки

Во вкладке "Сделки" отображаются все сделки клиента и активные, и уже завершенные.&#x20;

<div data-with-frame="true"><figure><img src="/files/nC7TARAZJwHRxDenhNeF" alt="" width="375"><figcaption></figcaption></figure></div>

Пример успешной закрытой сделки:

<div data-with-frame="true"><figure><img src="/files/fyKantczvWN5bRu6taRE" alt="" width="375"><figcaption></figcaption></figure></div>

Если сделка закрыта, но вам необходимо добавить в нее переменную, то вы можете это сделать нажав на активную строку ***"+ Новая переменная".***&#x20;

В этой вкладке вы можете создать новую сделку для данного клиента. \
Нажмите кнопку ***"+ Создать сделку"*** и введите данные в форму создания. Укажите бюджет, задайте все необходимые данные и выберите состояние воронки для созданной сделки:

<div data-with-frame="true"><figure><img src="/files/98arOBqo8nA9IJvhkPfj" alt=""><figcaption></figcaption></figure></div>

### Задачи

Раздел "Задачи" поможет поставить задачу на ответственного сотрудника и не забыть о её выполнении.

<div data-with-frame="true"><figure><img src="/files/s0H7mMx0YGKNfv1jFCXQ" alt="" width="563"><figcaption></figcaption></figure></div>

Создать задачу можно по клику на одноименную кнопку.&#x20;

Для создания укажите название задачи, внесите ее описание, приоритет и укажите дату выполнения:

<div data-with-frame="true"><figure><img src="/files/G82IDHERrpU82fbgHGhH" alt=""><figcaption></figcaption></figure></div>

Когда задача создана она отобразиться в разделе с описанием и датами выполнения.&#x20;

## **Диалоговое окно**

<div data-with-frame="true"><figure><img src="/files/tfj1BLVLxx4w0SiQ2CCB" alt=""><figcaption></figcaption></figure></div>

Верхняя часть содержит имя клиента, время последнего действия клиента, id в мессенджере.

<div data-with-frame="true"><figure><img src="/files/Z9thuFBPotRnV21DnPtv" alt=""><figcaption></figcaption></figure></div>

Кнопки и меню в блоке:&#x20;

1. ***Поставить бота на паузу:*** приостанавливает работу бота для этого клиента на 24 часа, либо запускает остановленного бота.
2. ***Поиск сообщений по словам*** - поиск в диалоге по заданным словам.
3. ***Отобразить/спрятать боковое меню*** - убирает либо отображает левую панель раздела "Клиенты".
4. ***Отметить диалог непрочитанным*** - отметить последнее сообщение клиента, как непрочитанное.
5. ***Открепить диалог/Закрепить диалог*** — закрепляет/открепляет диалог в списке клиентов. Закрепленные диалоги всегда располагаются в верхней части списка клиентов.
6. ***Заблокировать/разблокировать клиента*** - блокирует или разблокирует клиента.&#x20;
7. ***Удалить клиента*** - удалить клиента из Salebot.

В диалоговом окне отображаются сообщения от клиента, сообщения менеджеров и от бота, а также системные уведомления, которые отображаются желтым цветом (колбеки, комментария, которые клиент не видит):

<div data-with-frame="true"><figure><img src="/files/0Vaa233Tt7yE0cfLYfZD" alt="" width="563"><figcaption></figcaption></figure></div>

Все сообщения содержат контекстное меню. Обычные сообщения можно закрепить или удалить:

<div data-with-frame="true"><figure><img src="/files/LEKnwvt6PvTPMAJjDr0k" alt=""><figcaption></figcaption></figure></div>

Закрепленное сообщение будет отображаться в верхней части, с указанием времени отправки. Открепить сообщение можно с помощью крестика:

<div data-with-frame="true"><figure><img src="/files/O8lBUw8zwEqoyYNMu4BZ" alt="" width="563"><figcaption></figcaption></figure></div>

Можно переотправлять сообщение клиенту, при этом существует функционал изменения темы сообщения (для email-ботов), если перессылка осуществляется, например, из Telegram на электронную почту.&#x20;

Удалять сообщения могут все сотрудники, кроме операторов. Чтобы ограничить возможность удаления сообщений, вы можете настроить роли.&#x20;

{% hint style="info" %}
Как работать с ролями рассказали в статье "[Сотрудники](/main/admin/employees.md)"
{% endhint %}

## **Форма отправки сообщения**

<div data-with-frame="true"><figure><img src="/files/7CoR4P3NxVZ0YpavFBH9" alt="" width="563"><figcaption></figcaption></figure></div>

***Главное поле*** — поле ввода сообщения для отправки клиенту.\
Меню формы

1. ***Отправить emoji (смайлик)*** открывает меню с выбором emoji, чтобы добавить emoji в ваше сообщение, просто нажмите на нужную иконку.
2. ***Прикрепить файл*** - загрузить файл для отправки клиенту. Открывает меню с выбором типа файла. Также в этом окне вы можете просмотреть ранее загруженные файлы, их размер, дату загрузки и название. Ненужные файлы можно удалять.

<div data-with-frame="true"><figure><img src="/files/hHlY3WuO6slveKOZE3FW" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="success" %}
Вы можете загрузить изображения из буфера обмена, просто вставив его в главное поле ввода сообщения. Оно будет загружено к нам на сервис и будет занимать 1 из 40 мест
{% endhint %}

<mark style="color:orange;">**В проекте может быть**</mark><mark style="color:orange;">**&#x20;**</mark>*<mark style="color:orange;">**до 200 файлов.**</mark>*<mark style="color:orange;">**&#x20;**</mark><mark style="color:orange;">**После загрузки 200 файлов, чтобы загрузить новый, вам придется удалить один из старых файлов.**</mark>

3. ***Быстрые ответы*** - позволяет создавать шаблоны сообщений для отправки клиентам. Также можно формировать отдельные папки для удобства поиска и категорирования готовых сообщений.

<div data-with-frame="true"><figure><img src="/files/9QKF3Cix0cFgBoGOrdba" alt=""><figcaption></figcaption></figure></div>

После клика на кнопку (См. пример выше), откроется небольшая форма с заполнением поля названия раздела ответов:

<div data-with-frame="true"><figure><img src="/files/XF8yf9LP8B5Ab47DOjei" alt="" width="563"><figcaption></figcaption></figure></div>

После создания разделов, их можно перемещать в любом удобном порядке:

<div data-with-frame="true"><figure><img src="/files/zvGdeDikVhQYhoibbTqI" alt="" width="375"><figcaption></figcaption></figure></div>

Чтобы создать сообщение с быстрым ответом, кликните по необходимой папке (разделу):&#x20;

<div data-with-frame="true"><figure><img src="/files/dOTaJX9uJSaeYLiTi2PG" alt="" width="563"><figcaption></figcaption></figure></div>

после чего вы увидите форму добавления быстрого ответа:

<div data-with-frame="true"><figure><img src="/files/8bLqwWWL0IyTWbquYZ9W" alt="" width="563"><figcaption></figcaption></figure></div>

4. ***Отправить сообщение из воронки***  - позволяет отправить клиенту сообщение, из конкретного блока. После отправки сообщения, клиент будет перенаправлен в выбранный блок, а его дальнейшие действия будут зависеть от последующей цепочки в разделе воронки. \
   В открывшемся окне выбора блока из раздела воронки необходимо выбрать нужный блок. Блоки можно отфильтровать их по цвету (типу), найти через форму поиска по описанию, ID или ответу.

<div data-with-frame="true"><figure><img src="/files/3w6OeeX92kx2Kb8jvVPB" alt=""><figcaption><p>окно с выбором блока из схемы</p></figcaption></figure></div>

Сообщение из выбранного блока можно отредактировать из главного поля. Кнопка Удалить блок удалит выбранный блок:

<div data-with-frame="true"><figure><img src="/files/K8PwEW8MBhXdPMnxg0I5" alt="" width="563"><figcaption></figcaption></figure></div>

5. ***Преобразовать в комментарий*** - позволяет преобразовывать сообщение в комментарий для подготовки более полного ответа клиенту и комментирования действий сотрудника в диалоге.

{% hint style="info" %}
Подробнее о работе с комментариями рассказали выше в разделе "[Комментарии](#kommentarii)"
{% endhint %}

6. **Иконка таймера** -  при нажатии открывается меню, в котором можно выбрать точное время для отправки сообщения. Чтобы выбрать дату и время, нужно кликнуть на соответствующее поле.

<div data-with-frame="true"><figure><img src="/files/ftTbyxep94ZkX0VslyqC" alt=""><figcaption></figcaption></figure></div>

7. **Кнопка отправки сообщения** — отправляет введённое сообщение.&#x20;

Вы можете отправить переменную в виде #{имя\_переменной}, и она будет доставлена в виде значения этой переменной. Есть возможность изменять высоту поля ввода сообщения, для этого нужно просто потянуть за верхнюю часть блока, в котором находится поле.

8. Сгенерировать текст с помощью ИИ

<div data-with-frame="true"><figure><img src="/files/UjxyYs4qg066ZWihhCjx" alt="" width="498"><figcaption></figcaption></figure></div>

Кликните по кнопке, после чего откроется модальное окно с выбором АИ-ассистента:

<div data-with-frame="true"><figure><img src="/files/jyTFrIE55szvCkvR9X38" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы сгенерировать любой необходимый текст с помощью ИИ, выберите АИ-ассистента, который будет вами использован:

<div data-with-frame="true"><figure><img src="/files/kZv7yS2JQ4Vd3zMvaxDY" alt="" width="563"><figcaption></figcaption></figure></div>

Затем кликните на "Закрыть" и пропишите в поле для сообщения - необходимый текст.&#x20;

<div data-with-frame="true"><figure><img src="/files/2B1bPryDm15hH2m185aA" alt="" width="563"><figcaption></figcaption></figure></div>

После чего кликните по кнопке для генерации текста:

<div data-with-frame="true"><figure><img src="/files/KDnHMD6Wx3okd6Vvd6pg" alt="" width="563"><figcaption></figcaption></figure></div>

Вы увидите результат в поле "Сообщения", переработанное ИИ:

<div data-with-frame="true"><figure><img src="/files/SubFOqyV0wPRjtFJvfuJ" alt="" width="563"><figcaption></figcaption></figure></div>

## Отличие ответственного за сделку и ответственного за клиента

В контексте CRM-системы и диалогов с клиентами, ответственный за клиента и ответственный за сделку - это две разные роли, хотя и тесно взаимосвязанные.&#x20;

1. **Ответственный за клиента** обычно отвечает за установление и поддержание отношений с клиентом.&#x20;

В контексте диалогов с клиентом в Salebot - **ответственным за клиента** является тот менеджер (сотрудник) вашего проекта, который в данный момент ведет переписку с клиентом в разделе "Клиенты".&#x20;

<div data-with-frame="true"><figure><img src="/files/3IJsFHo1c5II4mVE5I0V" alt=""><figcaption><p>Три способа, как назначить ответственного за клиента:<br>1. Кликнуть "Взять клиента";<br>2. Кликнуть "Передать клиента";<br>3. В поле "Ответственный" выбрать сотрудника.</p></figcaption></figure></div>

Чтобы назначить ответственного, закрепленного за клиентом, можно перейти с ним в диалог и кликнуть на "Взять клиента":

<div data-with-frame="true"><figure><img src="/files/ug2ShlZANai88VJI0tWL" alt=""><figcaption></figcaption></figure></div>

Также ответственного, закрепленного за клиентом, можно изменить, кликнув на "Передать клиента" либо выбрав ответственного в выпадающем списке сотрудников в поле "Ответственный":

<div data-with-frame="true"><figure><img src="/files/Ct7Kque5f7tPrHyo8grj" alt="" width="375"><figcaption></figcaption></figure></div>

2. **Ответственный за сделку**, в свою очередь, фокусируется на конкретном этапе продаж, например, на заключении договора на этапе "Первичный контакт" или на выполнении заказа.

<div data-with-frame="true"><figure><img src="/files/pyq1oqK25hQWrIwffsXp" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы просмотреть ответственных по сделкам клиентов, перейдите во вкладку "Сделки" в карточке клиента.

Ответственными за клиента и ответственными за сделку могут быть назначены разные сотрудники вашего проекта:

<div><figure><img src="/files/dlvGpjrdlIeHMgzefbxc" alt="" width="563"><figcaption><p>Рис. 1. Ответственный за клиента</p></figcaption></figure> <figure><img src="/files/iCKVFPK4rtc6e91oMNo2" alt="" width="563"><figcaption><p>Рис. 2. Ответственные за сделки</p></figcaption></figure></div>

Например, на рис. 1 сотрудником, ответственным за клиента, является менеджер Катерина; в свою очередь, на рис. 2, ответственным за сделку "Заключить договор" является юрист - Софья, а за разработку сайта — разработчик Вадим.&#x20;

То есть, за одним клиентом могут быть закреплены разные менеджеры и сотрудники, а по каждой отдельной сделке — отдельный ответственный сотрудник. Также сотрудника по сделке можно переназначать при переходе сделки в разные состояния CRM.

## Видеообзор

{% embed url="<https://www.youtube.com/watch?v=wTLPB3Gfgd4>" %}
Видео с описанием диалога клиента.&#x20;
{% endembed %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/crm-sistema/klienty-v-odnom-okne/dialog-s-klientom.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
