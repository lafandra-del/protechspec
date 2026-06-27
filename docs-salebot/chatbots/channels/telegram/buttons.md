> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/buttons.md).

# Кнопки в Telegram

{% hint style="warning" %}
Рекомендуем ознакомиться со статьей "[Кнопки](/websites/builder/sekcii-bloki/sekciya-knopki.md)" в разделе "[Как создать чат-бот](/chatbots/builder.md)".
{% endhint %}

В Telegram можно использовать как Reply-кнопки (обычные или клавиатурные), так и Inline-кнопки (кнопки в тексте).

{% hint style="danger" %}
**Важно!**&#x20;

**Информация об ограничениях:**\
\- Reply-кнопки (обычные или клавиатурные) до 12 штук в строке;\
\- Inline-кнопки до 8 штук в строке;\
\- ТЕКСТ в кнопке **ограничен 32 символами;**\
**-** кнопке **НЕЛЬЗЯ задать цвет**.
{% endhint %}

## Как создать кнопку в блоке

Чтобы создать кнопку любого вида в блоке чат-бота, перейдите в настройки блока и кликните на вкладку "Кнопки":

<div data-with-frame="true"><figure><img src="/files/DPurk6NLLgBZ5i2urSTd" alt=""><figcaption></figcaption></figure></div>

Тогда раскроются настройки для добавления и редактирования кнопки. Далее кликните добавить:

<figure><img src="/files/4Wq1i9XznFxYyhaAzlDB" alt=""><figcaption></figcaption></figure>

Откроется модальное окно с настройками кнопки, где указывается текст кнопки, ее функция и иные настройки:

<div data-with-frame="true"><figure><img src="/files/mY0efmZoJ98sDpcH13tC" alt=""><figcaption></figcaption></figure></div>

В Сейлботе существует ряд кнопок, которые работают только для бота в Telegram:

1. Поделиться;
2. Callback-кнопка;
3. Telegram WebApp (чтобы открыть мини-приложение в ТГ, например, с виджетом или сайтом);
4. Авторизация через Telegram;

<div data-with-frame="true"><figure><img src="/files/lHfmY0Fa9kir1VLl8dtn" alt="" width="563"><figcaption></figcaption></figure></div>

Также в Telegram доступны и другие кнопки, например, оплаты, запросить номер телефона или геолокацию, отправить ссылку.&#x20;

## К**нопка "Поделиться"**

При создании кнопки выбираете "Поделиться (только Telegram)" и заполняете поля (поле дополнительный текст необязательно):

<div data-with-frame="true"><figure><img src="/files/LumlCh4UPrtGUvFRfgrF" alt="" width="563"><figcaption></figcaption></figure></div>

При нажатии на получившуюся кнопку будет предложено выбрать кому из списка контактов переслать информацию:

<div data-with-frame="true"><figure><img src="/files/g7UFppgBhl6oWL3HdJoR" alt="" width="375"><figcaption></figcaption></figure></div>

В зависимости от того, какую ссылку вы поместили в строке "Поделиться ссылкой" в настройках кнопки, та ссылка будет отправлена по кнопке поделиться:

<div><figure><img src="/files/sWjocJ6TxbeRisJtFgwL" alt=""><figcaption></figcaption></figure> <figure><img src="/files/qTS2fBaRA3ieOvpeUrqy" alt=""><figcaption></figcaption></figure></div>

После выбора получателя будет вставлена ссылка из строки “Поделиться ссылкой”, а также текст из строки “Дополнительный текст”.

Таким образом, можно передавать ссылки, в том числе на сообщения из каналов в телеграмм.&#x20;

{% hint style="warning" %}
Внимание! На некоторых устройствах под управлением iOs может работать некорректно.
{% endhint %}

{% embed url="<https://www.youtube.com/watch?v=niJwFAHc05M>" %}
Telegram: кнопка Поделиться
{% endembed %}

## **Кнопка для авторизации на сайте**

Для работы этой кнопки требуется привязка бота к домену. Делается это через @BotFather.&#x20;

Выберите бота в диалоге с @BotFather, далее Bot Settings

<div data-with-frame="true"><figure><img src="/files/Wg5VQFOWUquMBJO6qJLQ" alt="" width="489"><figcaption></figcaption></figure></div>

Далее переходим в пункт Domain:

<div data-with-frame="true"><figure><img src="/files/1c6Sn55jpnPxIvNpqztz" alt="" width="336"><figcaption></figcaption></figure></div>

Далее в зависимости от того, был ли ранее установлен домен, будет кнопка Set Domain или Edit domain:&#x20;

<div><figure><img src="/files/mssgRMJyEw8gdzZVj6Be" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/INE37xkJLgIuBxbAGayp" alt="" width="563"><figcaption></figcaption></figure></div>

Вам будет предложено установить домен для бота:

<div data-with-frame="true"><figure><img src="/files/SdA3NzPCMdac9bIyRw5r" alt="" width="563"><figcaption></figcaption></figure></div>

Как это сделать правильно? Укажите домен [salebot.pro](http://salebot.pro) или Свой домен, если он подключен к сайту на Сейлбот.

После того, как все приготовления готовы, можно создать кнопку:

<div data-with-frame="true"><figure><img src="/files/vAuxEV8qsqyIhWp6OfWu" alt="" width="563"><figcaption></figcaption></figure></div>

В поле Текст впишите текст для надписи на кнопке.\
В поле Ссылка - url-адрес страницы, на которой будет реализована авторизация.

<div data-with-frame="true"><figure><img src="/files/037yfJlYkFz9VktvleTv" alt=""><figcaption></figcaption></figure></div>

Остальные поля будут нужны, если для авторизации будет использоваться отдельный бот (требуется получить разрешение на отправку сообщений для этого бота):  в частности, потребуется указание имени бота.&#x20;

Если нужна возможность отправлять сообщения от указанного бота, то обязательно поставьте галочку для “Запросить разрешение у пользователя на отправку сообщений от бота”:

<div data-with-frame="true"><figure><img src="/files/620qK5AR4bxwoARvfWWW" alt="" width="563"><figcaption></figcaption></figure></div>

{% embed url="<https://www.youtube.com/watch?v=BGglUWuaq0Y>" %}
Telegram: кнопка Авторизация через Telegram
{% endembed %}

## Callback-кнопка

Callback-кнопка - это кнопки с обратной связью, когда клиент видит одно, а в бот мы получаем нужный нам callback для запуска какого-либо блока воронки.

<div data-with-frame="true"><figure><img src="/files/MPWv7904hdtmz7x00P1i" alt="" width="563"><figcaption></figcaption></figure></div>

Создать ее довольно просто: в поле Кнопки нажмите на кнопку Добавить кнопку. В открывшейся форме введите текст, укажите тип - Callback-кнопка (Вконтакте, Telegram) и введите текст Callback, который должен вернуться при клике на кнопку:

<div data-with-frame="true"><figure><img src="/files/nwHxEw8xUFObeMoQvxcC" alt="" width="563"><figcaption></figcaption></figure></div>

Визуально кнопка выглядит как обычная inline-кнопка:

<div data-with-frame="true"><figure><img src="/files/Hh7rXEm6XLlvdNsuwGIP" alt="" width="563"><figcaption></figcaption></figure></div>

В карточке клиента после клика по кнопке  Вы увидите настроенный Callback:

<div data-with-frame="true"><figure><img src="/files/41ABY87b3ydtVLnUccbU" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="warning" %}
Важно!&#x20;

В Telegram <mark style="color:red;">**не поддерживается**</mark> Callback-клавиатурные кнопки.
{% endhint %}

{% hint style="danger" %}
Обращаем внимание!&#x20;

Если выбран тип кнопки "Колбек", то кнопка отобразится колбеком только в том случае, если текст кнопки будет отличаться от текста колбека.&#x20;
{% endhint %}

## **Кнопка Telegram Web Application**

Такая кнопка позволяет открыть сайт в виде веб-приложения в Telegram.

<div data-with-frame="true"><figure><img src="/files/4dgencN9uLHaLFpEKx4T" alt="" width="563"><figcaption></figcaption></figure></div>

При добавлении кнопки укажите текст, тип кнопки Telegram Web Application. Далее если у вас создан сайт на платформе Сейлбот, то достаточно будет выбрать сайт из списка:

<div data-with-frame="true"><figure><img src="/files/cyvQsNGHVwb6mzGRUbOu" alt="" width="563"><figcaption></figcaption></figure></div>

Если вам нужно указать сайт, созданный не в Сейлбот, то нажмите на кнопку "Указать внешнюю ссылку" и в поле URL вставьте нужную вам ссылку:

1. Можно указать ссылку через переменную:

<div data-with-frame="true"><figure><img src="/files/t3W9OshUC39ORX4QGD9h" alt=""><figcaption></figcaption></figure></div>

{% hint style="success" %}
Указать ссылку через переменную удобно, если вам часто необходимо менять адрес страницы или сайта, например, записав переменную в настройках проекта.

Затем чтобы спустя какое-то время не искать, в каком именно блоке у вас находится кнопка с Веб-апп, достаточно будет поменять значение переменной в настройках проекта.
{% endhint %}

<details>

<summary>Как указать ссылку в настройках проекта и передать ее в поле url</summary>

Например, укажите переменную в настройках проекта.&#x20;

1. Перейдите в настройки проекта:

<figure><img src="/files/SXc4RjzblqKpISEA8OBG" alt="" width="201"><figcaption></figcaption></figure>

2. Далее во вкладке "Переменные" укажите переменную, в которой лежит значение в виде ссылки:

<figure><img src="/files/sM5GAHuBJTAR3pWPg1gz" alt=""><figcaption></figcaption></figure>

Далее останется передать переменную с ссылкой #{url} в поле url:

<figure><img src="/files/t3W9OshUC39ORX4QGD9h" alt=""><figcaption></figcaption></figure>

</details>

2. Можно указать прямую ссылку в настройках кнопки:

<div data-with-frame="true"><figure><img src="/files/kf2qDdJRKHXGHax36J6y" alt="" width="563"><figcaption></figcaption></figure></div>

{% embed url="<https://www.youtube.com/watch?v=RFVZRBMTEN4>" %}
Telegram: кнопка WebApp
{% endembed %}

## Как создать кнопки для использования в функциях API Telegram <a href="#lifehak" id="lifehak"></a>

Для большинства довольно сложно освоить API ботов Telegram и потом использовать их при создании клавиатуры, но специально для новичков есть способ проще. Вы можете просто использовать в своих нуждах  генерируемый в расширенных настройках кнопок код.&#x20;

Для этого перейдите в настройки блока и выберите раздел Кнопки. Добавьте все необходимые кнопки:

<div data-with-frame="true"><figure><img src="/files/FBH1iWQEPD9AzPNbWMHJ" alt=""><figcaption></figcaption></figure></div>

Далее нажмите на "Расширенные настройки".

Код созданных кнопок Вы найдете при клике на Расширенные настройки в поле Расширенные настройки кнопки:

<div data-with-frame="true"><figure><img src="/files/qufyc8d2EU6r5L39S9SM" alt="" width="563"><figcaption></figcaption></figure></div>

После этого скопируйте все из расширенных настроек кнопок (предварительно можете проверить работу кнопок прямо из этого блока) в переменную, например, под названием buttons:

<div data-with-frame="true"><figure><img src="/files/Pi54m713yfTI8T5Q1NZo" alt="" width="563"><figcaption></figcaption></figure></div>

Далее воспользуемся функцией <mark style="color:purple;">**tg\_send\_message**</mark>**(platform\_id, text,client\_message\_id,&#x20;**<mark style="color:red;">**reply\_markup**</mark>**, parse\_mode, disable\_web\_page\_preview, protect\_content, disable\_notification**, **message\_thread\_id, entities):**

Переменную buttons передайте переменную в функцию в параметре <mark style="color:red;">**reply\_markup:**</mark>

<div data-with-frame="true"><figure><img src="/files/rZxByHkrFzaT4SJD16Sw" alt="" width="563"><figcaption></figcaption></figure></div>

В результате получите кнопки в том виде, в каком задавали их в расширенных настройках кнопок:

<div data-with-frame="true"><figure><img src="/files/EfvOB41TXY5S1fGDTvkN" alt="" width="563"><figcaption></figcaption></figure></div>

### Видео-инструкция "Код кнопок"

{% embed url="<https://www.youtube.com/watch?v=S_MmHFXffBM>" %}
Код кнопок для функций API Telegram
{% endembed %}

## Как удалить Reply-кнопки

Обычно кнопки удаляются сами, но бывают исключения.

Для удаления зависших кнопок Reply (клавиатурные кнопки) воспользуйтесь следующим кодом: \[{"buttons":\[],"one\_time":true,"index\_in\_line":0,"line":0}]

Данный код следует разместить в расширенных настройках кнопок:

<div data-with-frame="true"><figure><img src="/files/dQMyYwwgmHSUCu2w6Gyk" alt="" width="563"><figcaption></figcaption></figure></div>

## Клавиатурные кнопки-меню в Telegram

{% hint style="warning" %} <mark style="color:red;">**ВНИМАНИЕ!**</mark> Данную возможность рекомендуем использовать только продвинутым пользователям
{% endhint %}

### Клавиатурные кнопки

Для получения возможности использовать клавиатурные кнопки (reply) как постоянное меню Телеграм достаточно присвоить любое значение переменной **tg\_permanent\_reply\_buttons** (переменная объявляется константой проекта).

<div><figure><img src="/files/BHGQIP2ZMJf9GAI4WmVU" alt="" width="483"><figcaption></figcaption></figure> <figure><img src="/files/iB9K0kLMPJpKM3Ekb0jY" alt=""><figcaption></figcaption></figure></div>

**Краткое описание действия включения** **tg\_permanent\_reply\_buttons:**

Задавая среди своих переменных **tg\_permanent\_reply\_buttons**, Вы говорите о своем желании получить полный контроль над кнопками типа reply. Автоматические действия отключаются и ответственность переходит в Ваши руки. Данное действие распространяется на все вновь созданные клавиатурные кнопки для телеграмм

{% hint style="info" %}
Для возвращения возможности скрывать reply-клавиатуру удалите переменную **tg\_permanent\_reply\_buttons** и reply-кнопки, созданные пока данная переменная была в настройках  проекта.
{% endhint %}

## Как сделать меню в Telegram

Как сделать такое меню в Telegram:

<div data-with-frame="true"><figure><img src="/files/Z8FyugqSrwhSNTQm8Hnb" alt="" width="563"><figcaption></figcaption></figure></div>

Сделать такое меню может тот, кто создавал Telegram-бота.

Для этого нужно написать в [Botfather ](https://t.me/BotFather)в Телеграм.

Вводите команду /mybots , открывается список ваших ботов. Выбираете нужный. У вас открывается меню. Здесь нужно выбрать Edit Bot, а затем Edit Commands

<div data-with-frame="true"><figure><img src="/files/lQDaEqtvO5M5K5Vbdg5G" alt="" width="563"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/rqPKCACl3xmXpm9x8KOz" alt="" width="563"><figcaption></figcaption></figure></div>

Далее одним сообщением вводите команды и описание к ним. Название команд прописывается строчными буквами. Вам придет сообщение, что список команд обновлен.

<div data-with-frame="true"><figure><img src="/files/54AnOdMjBWf4JsVwphdv" alt="" width="563"><figcaption></figcaption></figure></div>

Теперь в диалоге с ботом в Telegram можно увидеть меню:

<div data-with-frame="true"><figure><img src="/files/7HNla4NO7AY4qUnvfWsW" alt="" width="563"><figcaption></figcaption></figure></div>

При клике на кнопку меню, откроется список команд, которые ранее прописали в BotFather:

<div data-with-frame="true"><figure><img src="/files/iVSAXGyM4sAJu8GMNJbP" alt="" width="563"><figcaption></figcaption></figure></div>

Далее переходите в Salebot, открываете проект, к которому подключен этот телеграм-бот.

Создаете блоки "Первостепенная проверка условия" или "Не состояние с условием", в условиях прописываете команды, а в поле "Текст сообщения" — тексты, которые будут приходить в ответ.

Пример:

<div data-with-frame="true"><figure><img src="/files/JhZ8HcERFsrdXNwgqiLZ" alt=""><figcaption></figcaption></figure></div>

## Как совместить два вида кнопок

Создаете блок с reply-кнопкой (клавиатурная), которые вам необходимо визуализировать. Например: \[{"type": "reply", "text": "НАЗВАНИЕ КНОПКИ", "line": 0, "index\_in\_line": 0}]

<div data-with-frame="true"><figure><img src="/files/xjMpCC1pcxEbmrQAFAGO" alt=""><figcaption></figcaption></figure></div>

Далее создаете следующий блок (таймер в 0 секунд) с inline-кнопками (кнопки в тексте), которые необходимо разместить, не убирая reply-кнопки. Например: \[{"type": "inline", "text": "НАЗВАНИЕ КНОПКИ", "line": 0, "index\_in\_line": 0}]

<div data-with-frame="true"><figure><img src="/files/x6Incck3wWZkQ60WmfRE" alt=""><figcaption></figcaption></figure></div>

Результат:

<div data-with-frame="true"><figure><img src="/files/Fs0RChN28FUuCeouqZhI" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="success" %}
Полезно знать

Обязательно соблюдайте последовательность: сначала reply кнопки, а потом inline. Иначе reply-кнопки пропадут со следующим блоком.
{% endhint %}

{% embed url="<https://www.youtube.com/watch?v=fE3o36P9PLY>" %}
Telegram: как соединить два вида кнопок
{% endembed %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/buttons.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
