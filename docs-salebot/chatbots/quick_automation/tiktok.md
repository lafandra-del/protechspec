> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/quick_automation/tiktok.md).

# Автоматизация TikTok

Мы реализовали автоматизацию для TikTok, которая устраняет необходимость ручного построения реакций на комментарии под видео или сообщений в ЛС.

<div data-with-frame="true"><figure><img src="/files/m2DzO4fd0lTHuUcQXDxQ" alt="" width="563"><figcaption></figcaption></figure></div>

Теперь обработку событий — таких как комментарий, ответ в личных сообщениях — можно настроить с помощью удобного функционала без создания отдельных блоков с функциями или методами. Это сокращает количество логических цепочек и снижает вероятность ошибок при масштабировании.

Чтобы перейти к автоматизации мессенджера, следуйте инструкции.

Наведите курсором на "Конструктор" в левом меню:

<div data-with-frame="true"><figure><img src="/files/tpnzAMc8wiT4L2CvEEYB" alt="" width="375"><figcaption></figcaption></figure></div>

Откроется всплывающее меню, где нужно перейти в раздел TikTok.

Если канал еще не подключен, то в разделе будет отображаться кнопка для подключения интеграции.

<div data-with-frame="true"><figure><img src="/files/FR2dThet7WZKxDE9nprg" alt="" width="375"><figcaption><p>Кнопка "Подключить" отображается,<br>если нет подключенных аккантов ТикТок</p></figcaption></figure></div>

После подключения интеграции, перейдите в обратно в раздел и нажмите на кнопку "Добавить автоматизацию":

<div data-with-frame="true"><figure><img src="/files/37mOYg3sE1PhSjQ5VzMo" alt="" width="375"><figcaption><p>Если аккаунт ТикТок подключен,<br>отображается кнопка "Добавить автоматизацию"</p></figcaption></figure></div>

Во вкладке с созданием автоматизации можно настроить автоответы на комментарии под видео или на сообщения в ЛС.

<div data-with-frame="true"><figure><img src="/files/0rKvbvxBVJFrohHufDzg" alt=""><figcaption></figcaption></figure></div>

Можно выбрать, где настроить автоматизацию для соц. сети: для всех аккаунтов или только для определенного аккаунта:

<div data-with-frame="true"><figure><img src="/files/W5Se5P1a7Xhygo0NeshN" alt="" width="468"><figcaption></figcaption></figure></div>

Далее выберите тип автоответа:

1. Реакция на комментарии — автоответ на комментарий под видео;
2. Реакция на сообщения — автоответ на личное сообщение.

<div data-with-frame="true"><figure><img src="/files/Lo9XTAJ9ZI2IaXCAaQV2" alt="" width="371"><figcaption></figcaption></figure></div>

## Реакция на сообщение

Если нужно настроить реакцию на сообщение, включите чекбокс "Включить реакцию на сообщение":

<div data-with-frame="true"><figure><img src="/files/A88EgKD5SEpRnvUYjQn5" alt=""><figcaption></figcaption></figure></div>

Откроются поля настроек для ответного сообщения в ЛС.

### Настройка реакции бота

Настройки реакции бота — это такие настройки, где вы указываете определенные слова/фразы (иначе — тригеры), на которые должен реагировать бот.

<div data-with-frame="true"><figure><img src="/files/MMZs3ncXzXmKm36OseoI" alt="" width="368"><figcaption></figcaption></figure></div>

Например, вы прописываете слова, на которое должно отправляться определенное сообщение.

<div data-with-frame="true"><figure><img src="/files/PQhmM1P7hCExP5m2O26e" alt="" width="359"><figcaption></figcaption></figure></div>

Если клиент напишет слова (как в примере выше) "Ссылка", "Цена", "Акция" в ЛС, то бот будет отправлять ответ. Если клиент напишет что-нибудь другое, то ответное сообщение ему не будет отправлено.

{% hint style="warning" %}
Важно!

Слова/фразы, на которые должен реагировать бот, должны прописываться через точку с запятой!

<img src="/files/BSdD8uL5yxRFXfK3pmj1" alt="" data-size="original">

{% endhint %}

Если выберите настройку "Реагировать на всей слова/фразы", то автоответ будет приходить на любые сообщения, отправленные пользователями вам в ЛС:

<div data-with-frame="true"><figure><img src="/files/ltNyk7d3Lgw66sErmPPp" alt="" width="375"><figcaption></figcaption></figure></div>

### Добавить действие

Чтобы добавить клиента в список или просвоить ему метку (либо удалить из списка и метку), нажмите "+ добавить действие" в настройках реакции:

<div data-with-frame="true"><figure><img src="/files/BgmCP0RDALS2uDop6U5N" alt="" width="375"><figcaption></figcaption></figure></div>

Далее выберите действие:

<div data-with-frame="true"><figure><img src="/files/HhtxZ9BdYEpAhUqEcVP4" alt="" width="375"><figcaption></figcaption></figure></div>

И выберите соответствующий список (метку):

<div data-with-frame="true"><figure><img src="/files/RhzEMoF3ozON3DdwLdYr" alt="" width="375"><figcaption></figcaption></figure></div>

В зависимости от действия (добавить / удалить), ваш клиент будет добавлен в список или удален из него (аналогично с метками), если напишет вам в директ.

### Настройка сообщения

Теперь нужно прописать текст ответного сообщения, которое будет отправляться клиенту в качестве реакции.

<div data-with-frame="true"><figure><img src="/files/NAlXjKfkdbz9oVfTBOM8" alt="" width="353"><figcaption></figcaption></figure></div>

Далее пропишите текст кнопки.

#### Проверка подписки

Чтобы проверить подписку клиента, который написал в ЛС, достаточно активировать переключатель "Проверить подписку":

<div data-with-frame="true"><figure><img src="/files/b76r1Oi1DGEp7KdzjsIS" alt="" width="354"><figcaption></figcaption></figure></div>

Затем прописать нужное сообщение или оставить текст по умолчанию.

Теперь когда клиент напишет вам в ЛС и захочет получить, например, бонус, сначала бот проверит его подписку.

<div data-with-frame="true"><figure><img src="/files/f8CAIUXs2y7uKj781oUR" alt="" width="352"><figcaption><p>Если клиент не подписан, ему отправится<br>сообщение, которое вы указали здесь</p></figcaption></figure></div>

#### Сообщение после проверки подписки

После поверки подписки клиенту придет финальное сообщение:

<div data-with-frame="true"><figure><img src="/files/KEGRv1mpU4lRAHGJ1A3K" alt="" width="352"><figcaption></figcaption></figure></div>

Можно прописать свой текст и добавить ссылки.

## Реакция на комментарий

Чтобы включить реакцию на комментарий, активируйте чекбокс "Реакция на комментарии":

<div data-with-frame="true"><figure><img src="/files/qCZKUz4OzWIbyZ3Clcez" alt=""><figcaption></figcaption></figure></div>

Теперь нужно настроить реакции бота на комментарии:

<div data-with-frame="true"><figure><img src="/files/JGEINlDNLBrKYllMhwEe" alt="" width="359"><figcaption><p>Триггер-слова, на которые будет отвечать бот<br>ответным комментарием</p></figcaption></figure></div>

Если нужно отвечать на все комментарии под видео, оставьте поле пустым. Если только на ключевые слова, то пропишите их в поле ввода:

<div data-with-frame="true"><figure><img src="/files/P8eIIiB2YjT4qlAw4wEe" alt="" width="341"><figcaption></figcaption></figure></div>

Теперь можно прописать разные варианты ответных комментариев:

<div data-with-frame="true"><figure><img src="/files/jF8FPWi34rhiSlUtzXGY" alt="" width="353"><figcaption></figcaption></figure></div>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/quick_automation/tiktok.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
