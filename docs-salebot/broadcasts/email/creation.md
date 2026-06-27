> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/broadcasts/email/creation.md).

# Создание email-рассылки

## Как создать email-рассылку

Для создания email-рассылки необходимо перейти в соответствующий раздел и нажать “Создать рассылку”.

![](/files/OcnbXXRUmCvvkbqDWdn6)

Email-рассылка, как и рассылка в мессенджерах, проходит в 3 этапа: \
\&#xNAN;***выбор получателей,*** \
***формирование сообщения,*** \
***настройки отправки.***

Указать получателей рассылки можно с помощью фильтра по действующим подпискам email-бота или загрузить пользователей файлом.

Свою базу пользователей можно загружать файлом. Скачать шаблон файла можно нажав на знак вопроса как на скриншоте нише:

<figure><img src="/files/BlazrBxslIhNSBVWtcv3" alt=""><figcaption><p>Скриншот из раздела Рассылки - Email-рассылки - подсказка к "Тип фильтра"</p></figcaption></figure>

{% hint style="warning" %}
В файле можно указывать ТОЛЬКО email получателей. Другие параметры (имя, телефон и прочие переменные) НЕ запишутся в диалоги клиентов.

При загрузке файла в рассылке укажите кодировку UTF-8 и разделитель - точка с запятой.
{% endhint %}

Клиентов также можно загрузить с помощью файла формата .CVS в разделе "Каналы":

<figure><img src="/files/qQduWC7owT4H1fDGTSYt" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/W5uHn8m9jTwzsNrugopJ" alt="" width="563"><figcaption></figcaption></figure>

С помощью настройки "Фильтр по подписчикам" можно отфильтровать **существующих пользователей email-бота** :&#x20;

* по спискам (можно как добавить, так и исключить список)&#x20;
* по состоянию в Salebot CRM,&#x20;
* по состоянию клиентов (блок, в котором находится клиент),&#x20;
* по подключенным мессенджерам (из раздела Каналы),&#x20;
* по переменным,&#x20;
* по дате регистрации

При формировании email-сообщений можно создать любой дизайн и увидеть, в каком виде письмо дойдет до пользователя в поле “Предпросмотр рассылки”.

{% hint style="warning" %} <mark style="color:red;">**Важно!**</mark> Обязательным является поле "Текст письма".&#x20;
{% endhint %}

![](/files/WxII9m5VhavQXg50pbPo)

{% hint style="danger" %} <mark style="color:red;">**Обращаем внимание на особенность рассылки в Gmail**</mark>

Внимательно проверяйте название темы письма в соответствующем поле! \
В случае, если в теме письма присутствует какая-либо опечатка, то при дальнейшем осуществлении данной рассылки тема письма закэшируется и **НЕ ИЗМЕНИТСЯ**, даже если вы смените проект.&#x20;

Единственным выходом из данной ситуации является добавление дополнительного символа.

Пример:

<img src="/files/aMDpgrfWs9U0twcnAWb6" alt="" data-size="original">

В таком случае, тема письма останется такой же, даже если вы поставите пробел между словами следующим образом:

<img src="/files/vnWxbXD8RTrVmou56q52" alt="" data-size="original">

Письмо придет с темой, как в первом варианте, хотя вы и добавили пробел.

Чтобы выйти из ситуации, исправьте опечатку и добавьте дополнительный символ:

<img src="/files/QM3g1IZ5dAJCe03vV3AL" alt="" data-size="original">

В остальных сервисах email подобного не наблюдается. Только в Gmail.
{% endhint %}

Также в разделе “Сообщения” можно добавить кнопки с ссылками на нужные вам каналы (подключенные к проекту), либо создать свою кнопку с вшитой ссылкой.

![](/files/TKBTQbp7rYmxBfwepxi1)

{% hint style="warning" %}
**Важно!** Если при email-рассылке не включить ползунок "Сохранить рассылку в историю переписки", то статистика открытия **считаться не будет.**
{% endhint %}

В третьей вкладке “Отправка” предлагается заполнить: \
\- имя отправителя (если оно пустое - будет отображено имя, заданное в Email-боте) \
\- время отправки \
\- интервал между сообщениями рассылки \
\- настройки разделения рассылки на части

<figure><img src="/files/We9vLTYrsEY668w1H1KB" alt="" width="563"><figcaption></figcaption></figure>

В этой же вкладке можно заметить чекбокс "Сохранять рассылку в истории переписки с клиентом":

<figure><img src="/files/Kx53NUWLH5l7vILFAGjO" alt="" width="422"><figcaption></figcaption></figure>

Если есть сообщество вконтакте с включенным чекбоксом "Прочитанность сообщений", то необходимо убрать галочку и сохранить по умолчанию:

<figure><img src="/files/BMRfabxKQ7iIAFVrxSj1" alt=""><figcaption></figcaption></figure>

Пример письма, полученного из рассылки

![](/files/UrkbbJr1xGYg7w4enHYR)

## Кнопка "Отписаться от рассылки"

Кнопка "Отписаться от рассылки" в email появляется автоматически внизу текста письма при создании рассылки в разделе Рассылки.&#x20;

<figure><img src="/files/XEGfbPrGHqbmAGreL67t" alt=""><figcaption><p>Поле Предпросмотр рассылки - кнопка Отказаться от рассылки</p></figcaption></figure>

## Рейтинг клиента в рассылках

В Сейлбот у каждого email-клиента существует свой рейтинг. Его можно найти в карточке клиента:

<figure><img src="/files/E7EdCVtjzsCUaOLSoozu" alt=""><figcaption></figcaption></figure>

При автоматическом добавлении клиента рейтинг равен 7. В случае, если клиент добавлен в систему Вами вручную, то клиенту присваивается рейтинг 10.&#x20;

Если рейтинг падает до 1 - клиент блокируется.&#x20;

Если средний рейтинг клиентов в рассылке ниже 6, то рассылка не будет запущена.&#x20;

<figure><img src="/files/ANCesok4iGLtNaroO9vH" alt=""><figcaption></figcaption></figure>

Это сделано чтобы ваши письма не попадали в спам, а доставляемость была максимальной и репутация сервиса была высокой.

#### Как формируется рейтинг?

1. Если на email-сервер Salebot придет уведомление о том, что почтовый адрес по той или иной причине вызывает подозрения, то рейтинг клиента автоматически понижается до единицы и блокируется.&#x20;
2. Если на email-сервер Salebot пришло уведомление о том, что ящик клиента переполнен, то за каждое не доставленное письмо рейтинг клиента будет снижаться до 1.&#x20;
3. Если пришло письмо от адреса почты с низким рейтингом, то рейтинг клиента автоматически повышается до 10 (это значит, что почта "ожила");
4. Если рейтинг клиента выше единицы, то письмо все равно отправится.&#x20;

## Статусы email-рассылки

При отправке email-рассылок вы увидите следующие статусы:

1. **Проверка email-рассылки**&#x20;

<figure><img src="/files/0F2NGbdtwbgZvZofsRko" alt="" width="563"><figcaption></figcaption></figure>

Проверка списка клиентов рассылки (проверяется автоматически).

2. **Отправлено на модерацию**

<figure><img src="/files/gLNAVBfPNcfihPWE8DV4" alt="" width="375"><figcaption></figcaption></figure>

Отображается на первом этапе при отправке рассылки и обозначает, что контент письма проверяется сотрудниками Сейлбота на содержание запрещенного материала или вредоносного контента.

{% hint style="warning" %}
Обращаем внимание!

Срок проверки занимает до двух дней.
{% endhint %}

3. **В процессе**

<figure><img src="/files/qLgQPZiLRdKoudNkrOeH" alt="" width="375"><figcaption></figcaption></figure>

Отображается, когда письмо прошло проверку / модерацию и теперь отправляется клиентам на почту.

4. **Все сообщения отправлены**

<figure><img src="/files/vMsgzlkQtPpckj6giuvQ" alt="" width="375"><figcaption></figcaption></figure>

Отображается, когда письмо было отправлено всем клиентам (по спискам клиентов).

4. **Черновик**

<figure><img src="/files/KH7yVhmv7CB48cHeeiS2" alt="" width="363"><figcaption></figcaption></figure>

Письмо не было отправлено и сохранено в качестве черновика, который в последующем можно редактировать.

5. **Заблокирован модератором**

<figure><img src="/files/NX9wqkEolhdcHH22FYTK" alt="" width="563"><figcaption></figcaption></figure>

Если контент содержит запрещенные материалы, рекламу товаров, запрещенных в обороте, неприемлемый контент и т.д., <mark style="color:red;">**то модераторы вынуждены будут отклонить рассылку.**</mark> Тогда будет отображен статус "Заблокирован модератором".

## Уведомление о прочтении: message\_read

Для клиентов email-бота доступна функция о прочтении сообщений. На прочитанные сообщения можно установить уведомления.&#x20;

Для этого в блоке с сообщением необходимо включить значок с двумя галочками.

<figure><img src="/files/cNgGIjua8Sygg1LwqpVl" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Важно: **Callback о просмотре работает в ВК и email!**
{% endhint %}

{% hint style="danger" %}
Важно: **Callback придет**, <mark style="color:orange;">**только если клиент находится в данном блоке**</mark>, если он его покинул, то колбэка не будет.
{% endhint %}

<figure><img src="/files/I9IP2KYgVTp6t2E3QwPM" alt=""><figcaption><p>Пример Уведомления о прочтении для запуска блока  с условием</p></figcaption></figure>

{% hint style="info" %}
Рассылка должна быть создана в конструкторе воронок из блоков состояния диалога.

Из **раздела Рассылки и из блоков Не состояния** - статистика о прочтении <mark style="color:red;">**НЕ БУДЕТ СЧИТАТЬСЯ.**</mark>  Потому что клиент <mark style="color:red;">**не находится в данных блоках.**</mark>&#x20;
{% endhint %}

## Как работать с функциями для email-рассылок в калькуляторе

{% hint style="success" %}
Подробнее об отправке, пересылке подготовленного шаблона, черновика или ранее отправленного письма[ рассказали здесь](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-email.md)
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/broadcasts/email/creation.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
