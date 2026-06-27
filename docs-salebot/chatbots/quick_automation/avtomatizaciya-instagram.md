> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/quick_automation/avtomatizaciya-instagram.md).

# Автоматизация Instagram\*

{% hint style="danger" %}
\***Принадлежат компании Meta Platforms Inc**., деятельность которой признана **на территории Российской Федерации&#x20;**<mark style="color:red;">**экстремистской и**</mark> <mark style="color:red;">**запрещена!**</mark>&#x20;
{% endhint %}

Мы реализовали автоматизацию для Instagram\*, которая устраняет необходимость ручного построения реакций на действия пользователей под вашими постами или на истории.&#x20;

<figure><img src="/files/n3GExY3qIyf7DHdi95fm" alt=""><figcaption></figcaption></figure>

Теперь обработку событий — таких как комментарий, ответ в сторис — можно настроить с помощью удобного функционала без создания отдельных блоков с функциями или методами. Это сокращает количество логических цепочек и снижает вероятность ошибок при масштабировании.

Чтобы перейти к автоматизации мессенджера, следуйте инструкции:

Наведите на "Конструктор" в левом меню:

<figure><img src="/files/eaw71x1XyrNsyinPlKIn" alt="" width="563"><figcaption></figcaption></figure>

Откроется всплывающее меню, где нужно перейти в раздел Instagram\*.&#x20;

Если канал еще не подключен, то в разделе будет отображаться кнопка для подключения интеграции:

<figure><img src="/files/wtIPP0Zsdg1NISzQOCb5" alt="" width="563"><figcaption></figcaption></figure>

После подключения интеграции, перейдите в обратно в раздел и нажмите на кнопку "Добавить автоматизацию":

<figure><img src="/files/HVT0f2bPO2EhYnABb1qR" alt="" width="563"><figcaption></figcaption></figure>

Во вкладке с созданием автоматизации можно настроить автоответы на комментарии под постами или на ответы на истории:

<figure><img src="/files/P9HdYjN1RU6Lby2wXYsQ" alt=""><figcaption></figcaption></figure>

Можно выбрать, где настроить автоматизацию для соц. сети: для всех аккаунтов или только для определенного аккаунта:

<figure><img src="/files/bR5ndxj3wTeHYDOGWGGG" alt="" width="375"><figcaption></figcaption></figure>

Далее выберите тип автоответа:

1. Автоответ в директ (для автоматизации ответов, если клиент написал Вам в директ);
2. Автоответ на комментарии под постом (для автоматизации ответов в директ тем клиентам, которые написали комментарии под вашими постами);
3. Автоответ на сообщение на историю (для автоматизации ответов на сообщения клиентов, отправленные в истории):

<figure><img src="/files/TWAaPx7CLliHvzTqKqCg" alt="" width="367"><figcaption></figcaption></figure>

{% hint style="warning" %}
Важно!

В одной автоматизации можно настроить только один тип реакции на действия ваших клиентов в аккаунте: либо ответ в директ, либо ответ на комментарии под постом, либо ответ на сообщении в истории.

После настройки одного из типа реакции, Вам достаточно нажать "Сохранить" и далее в разделе кликнуть на "Добавить автоматизацию", чтобы выбрать автоответы другого типа.
{% endhint %}

## Автоответ в директ

Если клиент написал Вам сообщение в директ, то вы можете настроить автоответ, отправив клиенту сообщение с кнопкой, ссылкой или изображением:

<figure><img src="/files/n5G3iB0eDEG9uLwd1rEy" alt="" width="375"><figcaption></figcaption></figure>

### Настройка реакции бота

Настройки реакции бота — это такие настройки, где вы устанавливаете триггер для запуска бота. Триггер может быть любым: например, любое слово, фраза:

<figure><img src="/files/4dof2Z2lJVwZVq2fWBB6" alt=""><figcaption></figcaption></figure>

Если выберите "Реагировать на слова" и в поле пропишите слова, то бот будет отправлять автоответ только на заданные слова, а остальные — игнорировать.

{% hint style="warning" %}
Важно!

Слова/фразы, на которые должен реагировать бот, должны прописываться через точку с запятой!

<img src="/files/BSdD8uL5yxRFXfK3pmj1" alt="" data-size="original">

{% endhint %}

Если выберите настройку "Реагировать на всей слова/фразы", то автоответ будет приходить на любые сообщения, отправленные пользователями вам в директ:

<figure><img src="/files/ltNyk7d3Lgw66sErmPPp" alt="" width="375"><figcaption></figcaption></figure>

### Добавить действие

Чтобы добавить клиента в список или просвоить ему метку (либо удалить из списка и метку), нажмите "+ добавить действие" в настройках реакции:

<figure><img src="/files/BgmCP0RDALS2uDop6U5N" alt="" width="375"><figcaption></figcaption></figure>

Далее выберите действие:

<figure><img src="/files/HhtxZ9BdYEpAhUqEcVP4" alt="" width="375"><figcaption></figcaption></figure>

И выберите соответствующий список (метку):

<figure><img src="/files/RhzEMoF3ozON3DdwLdYr" alt="" width="375"><figcaption></figcaption></figure>

В зависимости от действия (добавить / удалить), ваш клиент будет добавлен в список или удален из него (аналогично с метками), если напишет вам в директ.

### Настройка автоответа в директ

После того как вы настроили реакцию бота (прописали тригерные слова/фразы и т.д.), нужно настроить сообщение, которое будет отправляться клиенту в качестве автоматического ответа:

<figure><img src="/files/wVmqYbOLipF0MfjqUtqY" alt="" width="366"><figcaption></figcaption></figure>

1. Сообщение с ссылкой в кнопке является обязательным:

<figure><img src="/files/3spkTJ21dxTB3tCTFgW5" alt=""><figcaption></figcaption></figure>

Здесь можно добавить при необходимости изображение для отправки вашему клиенту, а также нужно прописать текст:

<figure><img src="/files/IAbcixmtvL5GHnoZXB79" alt="" width="373"><figcaption></figcaption></figure>

Чтобы добавить кнопку с ссылкой, нажмите на "Добавить ссылку":

<figure><img src="/files/e2L6mt7PnYNHI8GNkLYx" alt="" width="358"><figcaption></figcaption></figure>

Далее заполните текст в кнопке и укажите ссылку.&#x20;

{% hint style="warning" %}
Важно!

На данный момент функция удаления кнопки недоступна.
{% endhint %}

2. Также можно настроить сообщение с простой кнопкой. Для этого активируйте чекбокс:

<figure><img src="/files/5JcHAcbg6B2kAHhutvI4" alt="" width="367"><figcaption></figcaption></figure>

Данное сообщение отправится раньше, чем сообщение с ссылкой в кнопке.

Пример реализации работы с ботом вы сможете увидеть на экране справа:

<figure><img src="/files/5zen4cfhKxDNGHoIJ99t" alt=""><figcaption></figcaption></figure>

Далее нажмите "Сохранить", чтобы не потерять настройки:

<figure><img src="/files/ON87r6tYKXtkkYbnnUze" alt="" width="563"><figcaption></figcaption></figure>

## Автоответ на комментарии под постами

Чтобы настроить автоматические ответы на комментарии под постами, выберите в настройках автоматизации "Автоответ на комментарии под постом":

<figure><img src="/files/w3SiTJKUhspxhkwXw4rX" alt="" width="375"><figcaption></figcaption></figure>

Далее выберите пост, на комментарии под которым вы хотите настроить автоматический ответ:

<figure><img src="/files/XBoqkeLRIQxHK509AuiH" alt="" width="375"><figcaption></figcaption></figure>

Или выберите отметьте галочкой "Автоответ на все посты", чтобы автоматический ответ в виде комментария прилетал под всеми постами.

### Настройка реакции бота

Настройки реакции бота — это такие настройки, где вы устанавливаете триггер для запуска бота. Триггер может быть любым: например, любое слово, фраза:

<figure><img src="/files/GU4PrnaDowfHvfhQTyVh" alt="" width="356"><figcaption></figcaption></figure>

Если выберите "Реагировать на слова" и в поле пропишите слова, то бот будет отправлять автоответ только на заданные слова, а остальные — игнорировать.

{% hint style="warning" %}
Важно!

Слова/фразы, на которые должен реагировать бот, должны прописываться через точку с запятой!

<img src="/files/BSdD8uL5yxRFXfK3pmj1" alt="" data-size="original">

{% endhint %}

Если выберите настройку "Реагировать на всей слова/фразы", то автоответ будет приходить на любые сообщения, отправленные пользователями вам в директ:

<figure><img src="/files/ltNyk7d3Lgw66sErmPPp" alt="" width="375"><figcaption></figcaption></figure>

### Добавить действие

Чтобы добавить клиента в список или просвоить ему метку (либо удалить из списка и метку), нажмите "+ добавить действие" в настройках реакции:

<figure><img src="/files/BgmCP0RDALS2uDop6U5N" alt="" width="375"><figcaption></figcaption></figure>

Далее выберите действие:

<figure><img src="/files/HhtxZ9BdYEpAhUqEcVP4" alt="" width="375"><figcaption></figcaption></figure>

И выберите соответствующий список (метку):

<figure><img src="/files/RhzEMoF3ozON3DdwLdYr" alt="" width="375"><figcaption></figcaption></figure>

В зависимости от действия (добавить / удалить), ваш клиент будет добавлен в список или удален из него (аналогично с метками), если напишет комментарий под постом.

### Настройка автоответа

На комментарии под постами можно отвечать комментарием под постом и (или) сообщением в директ:

<figure><img src="/files/ivjipGPSHyIsrpMcuhBk" alt="" width="362"><figcaption></figcaption></figure>

{% hint style="success" %}
Подробно о том, как настроить ответ на комментарий в директ (ответ в виде сообщения в директ на комментарий) [мы рассказали в разделе выше.](#nastroika-avtootveta-v-direkt)
{% endhint %}

Чтобы настроить автоответ в виде комментария, активируйте переключатель "Ответ в виде комментария":

<figure><img src="/files/DtKfePgxyXlS8tp6SQ7W" alt=""><figcaption></figcaption></figure>

Вам откроются поля, чтобы написать текст автоответа под постами:

<figure><img src="/files/oqW5Mgu28xBCPgGJejL5" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="success" %}
Можно добавить от одного до четырех комментариев, которые будут рандомно проставляться под комментариями ваших клиентов в аккаунте.
{% endhint %}

После настройки автооветов под постами, не забудьте нажать "Сохранить" в правом углу:

<figure><img src="/files/JdcktpwBfTlkZV85P8HA" alt=""><figcaption></figcaption></figure>

## Автоответ на сообщения в сторис

Чтобы настроить автоответы на сообщения в сторис, выберите "Автоответ на реакцию в истории":

<figure><img src="/files/6ZmPFusRh5OGJLfsWrSC" alt="" width="375"><figcaption></figcaption></figure>

Далее выберите одну из сторис или "все истории", на которые необходимо настроить автоответы:

<figure><img src="/files/9en8sR288dTN6w6vfpta" alt="" width="375"><figcaption></figcaption></figure>

### Настройка реакции бота

Настройки реакции бота — это такие настройки, где вы устанавливаете триггер для запуска бота. Триггер может быть любым: например, любое слово, фраза:

<figure><img src="/files/WT53PN1jAmhaMtR2eeSZ" alt="" width="352"><figcaption></figcaption></figure>

Если выберите "Реагировать на слова" и в поле пропишите слова, то бот будет отправлять автоответ только на заданные слова, а остальные — игнорировать.

{% hint style="warning" %}
Важно!

Слова/фразы, на которые должен реагировать бот, должны прописываться через точку с запятой!

<img src="/files/BSdD8uL5yxRFXfK3pmj1" alt="" data-size="original">

{% endhint %}

Если выберите настройку "Реагировать на всей слова/фразы", то автоответ будет приходить на любые сообщения, отправленные пользователями вам в директ:

<figure><img src="/files/ltNyk7d3Lgw66sErmPPp" alt="" width="375"><figcaption></figcaption></figure>

### Автоответ в директ

{% hint style="success" %}
Подробнее о настройке [автоответов в директ рассказали выше.](#nastroika-avtootveta-v-direkt)
{% endhint %}

### Добавить действие

{% hint style="success" %}
Как добавить действие в автоответ, [рассказали выше.](#dobavit-deistvie)
{% endhint %}

## Как проверять подписку

Чтобы проверить подписку клиента, который оставил вам комментарий под постом, написал в директ или отреагировал на историю, достаточно нажать галочку в настройке автоответа:

<figure><img src="/files/Fe6vEVUqQNFjIgkd2nLl" alt=""><figcaption></figcaption></figure>

Затем прописать нужное сообщение в тексте или оставить текст по умолчанию:

<figure><img src="/files/3BhvgTx2gN3a4PKSdgy5" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/quick_automation/avtomatizaciya-instagram.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
