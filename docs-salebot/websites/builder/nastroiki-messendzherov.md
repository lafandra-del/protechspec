> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/nastroiki-messendzherov.md).

# Настройки мессенджеров

Вкладка для общих настроек работы мессенджеров на странице сайта

{% hint style="info" %}
Для добавления кнопок мессенджеров на сайт воспольуйтесь блоком "Форма".
{% endhint %}

<figure><img src="/files/PT7OfbFmUgHvAmTJvAX3" alt=""><figcaption></figcaption></figure>

## Боты

Выберите Telegram-бот, на который будет вести кнопка с сайта: для этого перейдите в редактирование страницы -> настройки -> мессенджеры:

<figure><img src="/files/xeCjxUhpeDldSS5P0hQY" alt=""><figcaption></figcaption></figure>

## Настройка WhatsApp

**Начальное сообщение в Whatsapp.**&#x20;

При переходе со страницы сайта по кнопке Whatsapp текст, указанный в этом поле, будет записан в поле ввода сообщения у пользователя в самом приложении Whatsapp.&#x20;

<figure><img src="/files/a7zc6P4RMbw8kbMbcJHV" alt=""><figcaption></figcaption></figure>

Ему будет достаточно нажать "Отправить":

<div><figure><img src="/files/tIGZbYRX3l0KotkfcFP5" alt="" width="242"><figcaption></figcaption></figure> <figure><img src="/files/Whf1cihb7XtDp8zSsTdF" alt="" width="240"><figcaption></figcaption></figure></div>

Создайте в конструкторе блок "Стартовое условие" и пропишите текст из начального сообщения:

<figure><img src="/files/jDKfMh4vhOh5qo8FhXBe" alt=""><figcaption></figcaption></figure>

Далее можно продолжите схему чат-бота с помощью блоков.&#x20;

## Настройка кнопок Вконтакте

<figure><img src="/files/fre9dwOgPafa5KAcinR6" alt="" width="563"><figcaption></figcaption></figure>

**Ссылка на установку приложения Salebot в сообщество ВКонтакте**

Установите в сообщество ВКонтакте приложение Salebot  для работы с подписной страницей ВК.

**Выбор бота, в которого ведет кнопка на странице сайта и/или Подписной ВК**

Выбор бота появляется, если в проекте подключено несколько мессенджеров одного типа.

**Текст кнопки на сайте ВК**&#x20;

В данном поле можно указать, какой текст будет отображаться на кнопке на сайте ВК

#### Чекбоксы, куда ведет кнопка ВКонтакте со страницы сайта

<mark style="color:green;">**Чекбокс Кнопка ВКонтакте ведет на ref ссылку группы.**</mark> Переход по ref -ссылке ведет в диалог с сообществом (группой) ВК. Тег из настроек страницы сайта передается только, если клиент что-либо напишет в бота. Также и карта клиента в Salebot создастся, когда пользователь (клиент) напишет что-либо или нажмет кнопку Начать.

Включить кнопку "Начать" можно в настройках сообщества:

<figure><img src="/files/XPJubf3p8norvXsLGx6V" alt=""><figcaption></figcaption></figure>

<mark style="color:green;">Пример диалога</mark> с сообществом при переходе со страницы сайта, в котором включен чекбокс "***Кнопка ВКонтакте ведет на ref ссылку группы"*** и в настройках сообщества включена **кнопка "Начать"**

<figure><img src="/files/BCmibTLQr2jEdJQuEC9R" alt="" width="527"><figcaption><p>Диалог в сообществе ВК</p></figcaption></figure>

При клике по кнопке Начать в сообщество приходит сообщение:

<figure><img src="/files/ZTZt5hiHfO8uklzlJ6Qy" alt="" width="533"><figcaption><p>Диалог в сообществе ВК</p></figcaption></figure>

В разделе Клиенты появился новый клиент и тег из настроек страницы сайта передан в бота

<figure><img src="/files/ZOdI4ljvQkeyQlHHKhQo" alt=""><figcaption><p>Диалог в разделе "Клиенты"</p></figcaption></figure>

<mark style="color:green;">**Чекбокс Кнопка ВКонтакте ведет на подписную с автоподпиской.**</mark>&#x20;

{% hint style="warning" %}
Автоподписка в данном случае идёт на СООБЩЕНИЯ ОТ СООБЩЕСТВА (БОТА).&#x20;

На само сообщество с помощью данной настройки пользователь не подписывается
{% endhint %}

При клике на странице сайта по кнопке перехода во ВКонтакте идет перенаправление на обычный сайт во ВКонтакте. Но при включенном данном чекбоксе нажимать на кнопки сайта ВК <mark style="color:green;">НЕ надо</mark>, идет автоматическая имитация клика по кнопке.&#x20;

Если пользователь переходит в бота впервые, появляется контекстное меню с запросом на разрешение отправки сообщений от имени сообщества.

<figure><img src="/files/HHF8dCWXQQlpKEbMQJiD" alt=""><figcaption></figcaption></figure>

После клика по кнопке "Разрешить" пользователь попадает в диалог с сообществом. От него автоматически приходит сообщение равное тегу страницы сайта. *Пользователь этого не видит, тег приходит только в диалоге Salebot.* Запускается цепочка сообщений, настроенная на получение тега.

<figure><img src="/files/dohpMVdLSlqdIbpOrF0D" alt=""><figcaption><p>приходит тег, указанный в настройках страницы сайта</p></figcaption></figure>

#### **6. Подписная, на которую ведет кнопка ВКонтакте.**&#x20;

В настройках страницы сайта можно указать подписную страницу во ВКонтакте, на которую будет переходить пользователь при клике по кнопке ВК со страницы сайта.

**7. В ВК отображать количество подписчиков (чекбокс)**.&#x20;

На Подписной странице во ВКонтакте будет указано количество подписчиков сообщества, вы можете написать любую подпись к ВК подписчикам

<figure><img src="/files/otFCdYjF6Iw0HyNHlYYK" alt=""><figcaption><p>Настройка страницы сайта</p></figcaption></figure>

<figure><img src="/files/UvePnsrDUWEY4Pk1lYK4" alt="" width="563"><figcaption><p>Пример Подписной страницы ВК</p></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/nastroiki-messendzherov.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
