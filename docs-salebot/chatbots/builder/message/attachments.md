> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/attachments.md).

# Вкладка: Вложения

В блок можно добавить один из типов вложений: ссылка, видео, картинка, файл, аудио. &#x20;

<figure><img src="/files/1oJZbWYJpINZvCJONdSq" alt="" width="563"><figcaption></figcaption></figure>

Существует несколько типов вложений, которые можно отправлять в боте:

1. Ссылка;
2. Видео;
3. Изображение;
4. Файл;
5. Аудио.&#x20;

{% hint style="warning" %}
В одном блоке НЕЛЬЗЯ соединять разные типы вложений!\
\
Загруженное в конструктор вложение должно быть не больше 20 MB

Допустима отправка до 10 вложений <mark style="color:red;">**одного типа**</mark> в одном блоке
{% endhint %}

## Как отправить вложения

Чтобы отправить вложение, создаем пустой блок и открываем редактор блоков (правое меню).

{% hint style="danger" %}
Обращаем внимание!&#x20;

1. Загруженное вложение должно быть не больше 20 Mb. Допустима отправка до 10 вложений <mark style="color:red;">**одного типа**</mark> в одном блоке;
2. <mark style="color:red;">**Не рекомендуется отправлять блок с несколькими вложениями в рассылке**</mark>, чтобы не упереться в лимит API  разных мессенджеров;
3. <mark style="color:red;">**НЕЛЬЗЯ**</mark> присваивать <mark style="color:red;">**одно и то же имя**</mark> разным вложениям **в рамках одного проекта**! Если вы загрузите другое вложение с тем же именем, которое присвоено уже существующему вложению в проекте, отправится то, которое вы загрузили в систему раньше. Для правильной работы блоков присваивайте вложениям различные названия во избежание ошибок!&#x20;
   {% endhint %}

{% hint style="warning" %}
**Обращаем внимание!**

**Особенности в  Telegram:**&#x20;

* <mark style="color:red;">**кнопки НЕ придут**</mark> при отправке более одного вложения в блоке.

*<mark style="color:blue;">Исключение:</mark>* Если в блоке текст > 1024 символов, то такая отправка будет разделена на 2 сообщения, и кнопки придут вместе с текстом, а вложения отдельным сообщением.

* Разметка текста <mark style="color:red;">**markdown и html не работает**</mark> при отправке более одного вложения в блоке.
  {% endhint %}

Все настройки вложений находятся в настройках блока, которые открываются при клике на кнопку  "Вложения":

<figure><img src="/files/1Ih4VBNlBbVBnbXW5oVB" alt=""><figcaption></figcaption></figure>

&#x20;Давайте подробнее рассмотрим появившиеся **кнопки с типами вложений:**

<figure><img src="/files/uFIFxUEzRdgpd70CvGNL" alt="" width="563"><figcaption></figcaption></figure>

### Ссылка

Первый кнопка - **ссылка:**&#x20;

<figure><img src="/files/D1cr2V4UtRhVNf3uaNE8" alt="" width="563"><figcaption></figcaption></figure>

При клике на кнопку появляются поля для указания URL вложения либо загрузки вложения, где вы можете добавить ссылку (URL вложения) для перехода клиентом или соответственно загрузить тот файл, который хотите передать (он будет показан в отдельной ссылке).

{% hint style="info" %}
Прикрепленный файл будет отправлен ссылкой с сервера salebot.pro.
{% endhint %}

{% hint style="info" %}
Загруженный файл имеет приоритет перед ссылкой на файл. Если вы укажите ссылку и одновременно прикрепите файл, то будет отправлен файл.
{% endhint %}

Под полем для URL есть три чекбокса:

<figure><img src="/files/PcTBea3gRyG2Fddmo5N7" alt="" width="375"><figcaption></figcaption></figure>

1. **С уведомлением о клике** - значит, что когда пользователь перейдет по ссылке, бот вернет ответ в виде: link\_was\_pressed и ссылки через пробел.&#x20;

<figure><img src="/files/R0ypVKuXZwhM3ciTvYkd" alt="" width="563"><figcaption></figcaption></figure>

Для чего это нужно?&#x20;

С помощью этого события можно разделять пользователей на тех, кто перешел по ссылке и тех, кто не перешел. Если активировать чекбокс, то в диалоге с клиентом будет приходить колбек следующего вида: "<mark style="color:yellow;">**link\_was\_pressed**</mark> <mark style="color:purple;">**<https://salebot.pro>**</mark>", где <mark style="color:yellow;">**link\_was\_pressed - неизменяемая часть колбека,**</mark>**&#x20;**<mark style="color:purple;">**<https://salebot.pro> - URL, который был указан Вами в блоке.**</mark>&#x20;

<figure><img src="/files/zNdKmZNz7gQSGXAgEbwB" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/dr6sZ7PGy8XVEXJhSra6" alt="" width="563"><figcaption></figcaption></figure>

Например, можно "догревать", отправляя клиентам напоминания.

{% hint style="info" %}
Как настроить реакцию бота на колбек перехода по ссылке, читайте ниже в разделе "[Отслеживание клика по ссылке](#otslezhivanie-klika-po-ssylke)"
{% endhint %}

По умолчанию ссылка с уведомлением о клике имеет вид "<https://sblnk.ru/{proxy\\_id}".\\>
Вы можете задать свой домен для формирования ссылок с уведомлением.&#x20;

Для этого перейдите в настройки проекта:

<figure><img src="/files/Qb2Yyk9iy3N3oTBZL0TB" alt=""><figcaption></figcaption></figure>

Кликните по кнопке "Установить собственный домен..." и в модальном окне укажите домен:

<figure><img src="/files/AmsKycpqQSQeTpn1Q5yK" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Подробнее о создании и настройке собственного домена рассказали [здесь.](broken://pages/SVmo5FWy8HXy0n1EdOSO#domen)&#x20;
{% endhint %}

Тогда ссылка с уведомлением о клике примет вид: "https\://{ваш домен}/{proxy\_id}/s":

<figure><img src="/files/fo84wZEhD9HBOW5er4h8" alt="" width="563"><figcaption></figcaption></figure>

<img src="/files/VG1ozCScBIYAyAsapz6c" alt="Пример использования своего домена для формирования коротких ссылок" width="563">

2. Чекбокс "**Показывать превью ссылок"**

<figure><img src="/files/mjINVcW2anfD9PfOGr03" alt="" width="563"><figcaption></figcaption></figure>

Значит, что в месседжерах помимо самой ссылки будет видно, что за файл вы отправляете.&#x20;

3. Чекбокс "**Изображение ниже текста**"&#x20;

<figure><img src="/files/A920LwnHNOF6xedQHOXT" alt="" width="563"><figcaption></figcaption></figure>

### **Видео-вложение**

Кнопка **Видео-вложение:**

<figure><img src="/files/pkGLDMcD8iVRIAzxycdS" alt="" width="563"><figcaption></figcaption></figure>

Выбирайте при отправке видео. В Whatsapp видео отображается только ссылкой. Если вам нужно и в других мессенджерах, чтобы видео с Ютуба приходило просто ссылкой, то можно ссылку прогнать через любой сократитель ссылок или отправить как вложение с уведомлением о клике.&#x20;

{% hint style="info" %}
Во Вконтакте видео загружается только с Вконтакте или с Ютуба. Если Вам необходимо прикрепить ссылку на видео с других платформ, воспользуйтесь прикреплением через ссылку.&#x20;
{% endhint %}

{% hint style="info" %}
Важно! \
У Telegram есть особенность: если размер видео слишком маленький (примерно до 2 мб), то видео-вложение отправляется в формате .gif.
{% endhint %}

Прикреплять видео лучше ссылкой, если размер видео большой, из файлового хранилища. **Прямо в блок загружаются видеофайлы объемом не более 20 МБ.**

{% hint style="warning" %}
Обращаем внимание!&#x20;

Видео прикрепляется в формате MP4
{% endhint %}

<figure><img src="/files/DlfcbCtXF1moHM9liwcR" alt="" width="563"><figcaption></figcaption></figure>

### Картинка

Кнопка **"Изображение" -** выбирайте при отправке необходимых изображений в боте.&#x20;

<figure><img src="/files/fo8PvpZdxDyGFH6o9X2C" alt=""><figcaption></figcaption></figure>

Как и любое другое вложение, изображение можно загрузить прямо с компьютера или указать его URL.&#x20;

### Файл

Значок - **файл** - используйте при отправке документов и любых других файлов.

<figure><img src="/files/S3ky428mHPWLsqfVKzFq" alt="" width="563"><figcaption></figcaption></figure>

### **Аудио**

Значок - **Аудио -** используйте, если тип отправляемого файла имеет аудио формат.

<figure><img src="/files/mf3wMpoe4tNjoHXnPChA" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="warning" %}
Аудиофайл должен иметь формат .ogg и быть менее 1Мб

Для Instagram формат файла .m4a
{% endhint %}

### Отправка множественных файлов

Для отправки нескольких видеовложений/файлов/картинок/аудио в разделе "Вложения" редактора блока укажите нужный тип вложений и выполните загрузку необходимых файлом по одному:

<figure><img src="/files/fXBBusUVsPHBveyuYD3n" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="info" %} <mark style="color:red;">**Не забывайте про ограничения при отправке нескольких файлов!**</mark>

* Добавить можно одновременно до 10 файлов одного типа
* Каждый файл не должен превышать размер 20Мб
* При отправке нескольких вложений в Телеграм важно учесть:\
  \- При отправке более одного файла не работает разметка текста markdown, html\
  \- При множественной отправке файлов нельзя отправить кнопки&#x20;
  {% endhint %}

**В Телеграм:**&#x20;

* <mark style="color:red;">**кнопки НЕ придут**</mark> при отправке более одного вложения в блоке.

*<mark style="color:blue;">Исключение:</mark>* Если в блоке текст > 1024 символов, такая отправка будет разделена на 2 сообщения и кнопки придут вместе с текстом, а вложения отдельным сообщением.

* Разметка текста <mark style="color:red;">**markdown и html не работает**</mark> при отправке более одного вложения в блоке

## **Пример отправки вложений**

Перейдем к примерам.&#x20;

Добавим в бота автоматическую отправку каждые 2 секунды. В  каждом блоке добавим разные типы вложений и посмотрим, как это выглядит в мессенджере Телеграм.

<figure><img src="/files/rwaub6sXIdRRZjuErNfO" alt=""><figcaption></figcaption></figure>

В каждом из блоков в схеме, представленной на примере выше, загружены разные типы вложений: файл, ссылка, видео, изображение и аудио. Интервал отправки - 2 секунды.&#x20;

<figure><img src="/files/gj9jtGkTJ3678nKmDM4v" alt="" width="375"><figcaption></figcaption></figure>

### Отслеживание клика по ссылке

Создадим блок, в который вложим ссылку:

<figure><img src="/files/x5tz9O1D6Mvq8IbQ8MDP" alt="" width="563"><figcaption></figcaption></figure>

Далее создадим из блока первостепенной проверки условия создадим еще два блока: в одном напишем "Перешел по ссылке" во втором "НЕ перешел по ссылке":

<figure><img src="/files/LJBkPZGdQZM12IwHNcX7" alt="" width="563"><figcaption></figcaption></figure>

Переходим в настройки стрелки, ведущей от блока первостепенной проверки к блоку "Перешел по ссылке":

<figure><img src="/files/nXD69JO2hBbpa9pkHNuZ" alt=""><figcaption></figcaption></figure>

В поле Условие в настройках стрелки нужно указать коллбек "link\_was\_pressed #{ВАША ССЫЛКА}":

<figure><img src="/files/xLMAp6VbchIAHvtosfl2" alt=""><figcaption></figcaption></figure>

Чтобы скопировать колбек, отправьте блок с ссылкой и перейдите по ссылке в чате с ботом. Тогда колбек придет в диалоге с клиентом:

<figure><img src="/files/maRD1HsuOurJrEgW0LTh" alt=""><figcaption></figcaption></figure>

Либо пропишите вручную в формате "<mark style="color:orange;">**link\_was\_pressed**</mark>**&#x20;**<mark style="color:purple;">**пробел**</mark> <mark style="color:red;">**ссылка"**</mark>.

В настройках второй стрелки:

1. Ставим задержку отправки блока: это даст время клиенту перейти по ссылке;
2. Активируем чекбокс "Не отправлять, если покинул блок": это нужно для того, если клиент нажмет на ссылку и перейдет в блок "Перешел по ссылке", второй блок "Не перешел по ссылке" спустя установленное в стрелке время НЕ отработал.&#x20;

<figure><img src="/files/ZeTsAn0LUl407Ia1c7bh" alt="" width="563"><figcaption></figcaption></figure>

<figure><img src="/files/oZI6X6gQb65yFG3Y95b8" alt="" width="563"><figcaption></figcaption></figure>

Тестируем бота:

<figure><img src="/files/dDBMV6r2OH2oGjDE8dvO" alt="" width="563"><figcaption></figcaption></figure>

Теперь вы умеете отправлять различные типы файлов/вложений, а также отслеживать переходы по ссылкам с помощью чат-бота. Использовать данный функционал можно как в повседневных целях (рассылки, отправка чек листов и т.д.), так и в более сложных воронках с дальнейшем "подогревом" клиентов в зависимости от их действий в боте.&#x20;

### Как разместить ссылку со слежением в кнопку

Ссылка с уведомлением о клике выглядит специфично, поэтому есть смысл размещать эти ссылки в кнопках. Для этого вам нужно создать переменную со ссылкой со слежением и разместить ее в кнопке.

Для создания ссылки со слежением необходимо вызвать функцию **proxy('ВАША ССЫЛКА')** в калькуляторе.

Для этого пропишите переменную, например, link, значение которой равно функции с вашей ссылкой:

<figure><img src="/files/ECA8Qno7SVAnSlh6E2j3" alt=""><figcaption></figcaption></figure>

Теперь переменную, в которой записана ссылка с уведомлением о клике, можно разместить в тексте или поставить в кнопку.

**ПРИМЕР:&#x20;*****ссылка с уведомление о клике в тексте сообщения:***

<figure><img src="/files/dRF1FgWJnBt30sdhsIze" alt=""><figcaption></figcaption></figure>

Обратите внимание, переменная передана через конструкцию #{ВАША ССЫЛКА} - это обязательно. &#x20;

**ПРИМЕР:&#x20;*****ссылка с уведомление о клике добавлена в настройки кнопки***:

1. Создайте кнопку&#x20;

<figure><img src="/files/o04qFxBNGaPYWZlylRgP" alt="" width="563"><figcaption></figcaption></figure>

2. В поле URL укажите вашу переменную через конструкцию #{ВАША ССЫЛКА}, функция кнопки "По умолчанию":

<figure><img src="/files/rrmmB4GSZljejQbUI0lo" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Полезные статьи:

1. Функции для создания ссылок с уведомлением о клике и сроком действия можно прочитать в статье "[Для работы с ссылками](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-ssylkami.md)"
2. Подобнее о том, как разместить ссылку в кнопке, вы можете прочитать в статье "[Кнопки](/chatbots/builder/message/buttons/type.md#knopki-so-ssylkoi)"
   {% endhint %}

### Видеоинструкция

{% embed url="<https://www.youtube.com/watch?v=2J25l8g8yYo>" %}

## Получение изображений и файлов от пользователя

В разделе расскажем, как определить, что пользователь отправил файл, получить на него ссылку и как правильно работать с ней.

Чтобы определить, что пользователь отправил какое-либо вложение (изображение, файл, видео и пр.), необходимо в условии указать **attachment\_message:**

<figure><img src="/files/MHuv6Izigm4L2I6ucV2J" alt=""><figcaption><p>Настройки стрелки для получения файлов от клиента</p></figcaption></figure>

После того, как отправлен файл, появляются две переменные:\
\#{**attachments**} - url вложений к сообщению пользователя в формате JSON массива\
\#{**attachment\_url**} - в этой переменной содержится обычная url ссылка на вложение, например, для последующего использования в боте.&#x20;

Чтобы понять, чем отличаются **attachments** и **attachment\_url** друг от друга, выведите их на экран:

<figure><img src="/files/PnYh6e1gdtKH2xuTj7oA" alt=""><figcaption></figcaption></figure>

Если в вашем проекте используется несколько вложений от пользователя, то удобно присваивать для url каждого из них собственную переменную. Для этого в редакторе блока в поле Калькулятор объявите переменную, в которую сохраните полученный url вложения.

`Ваша_переменная = #{attachment_url}`, как на Рисунке 3.

<figure><img src="/files/vMDAyozNUF8o3uQyQwHu" alt=""><figcaption><p>Присвоить переменной url_image1  значение <code>attachment_url</code></p></figcaption></figure>

{% embed url="<https://www.youtube.com/watch?v=pR-tWPwxtdI>" %}
Видео-урок "Получение файлов от пользователя"
{% endembed %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/attachments.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
