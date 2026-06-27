> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/podklyuchenie-reklamnogo-kabineta-vkontakte-cherez-gtm.md).

# Подключение рекламного кабинета ВКонтакте через GTM

Переходим на [сайт](https://tagmanager.google.com/) и нажимаем кнопку "Создать аккаунт"

<figure><img src="/files/OdZKppKqLwSGGRYd0pI3" alt=""><figcaption></figcaption></figure>

Заполняем поля

&#x20;                                                <img src="/files/kSCwJoUMVJkQqsjGf8Tf" alt="" data-size="original">

Нажимаем кнопку "Создать" и далее соглашаемся с Политикой использования GTM

<figure><img src="/files/pYzsQnKwrTUA7hfCBzLb" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/Zp9EOkySMKHy3qEaSq1M" alt=""><figcaption></figcaption></figure>

Из основного кода копируем тег GTM

<figure><img src="/files/o2t5REtp04hVv7lXgOcI" alt=""><figcaption></figcaption></figure>

Переходим в Salebot, и в минилендинге, в разделе аналитика вставляем этот код:

<figure><img src="/files/ndwZ2jc0671Ih4z1sxR4" alt=""><figcaption></figcaption></figure>

Далее переходим в рекламный кабинет ВК и создаем код пикселя

<img src="/files/LbzEffqgMAZQwhAVYIZi" alt="" data-size="original"><img src="/files/mot7w5TM8ds8bwLr9U1B" alt="" data-size="original">

<img src="/files/Zv2JvhUnvYkIERZENO0K" alt="" data-size="original">

Копируем код

![](/files/6B98nwh412vd0qvpi4GS)

Переходим в GTM, создаем новый Тег, в разделе Конфигурация Тегов выбираем Пользовательский HTML и вставляем скопированный код пикселя из Рекламного кабинета ВКонтакте

![](/files/2h7hFu83g3cbtFqW817P)

<figure><img src="/files/FTM1Sx2YXpaWwgMUEO5W" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/hfj1DrG9WwPvP1AoAkg8" alt=""><figcaption></figcaption></figure>

Настраиваем триггер, допустим для этого тега выбираем "Просмотр страницы"

<figure><img src="/files/IjrntpJ74KplqjiRgvSR" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/pX8BACOtc55TseZSlp2D" alt=""><figcaption></figcaption></figure>

Далее уже можно настраивать события для передачи по связке.&#x20;

Проверить связку GTM-Salebot легко с помощью кнопки Предварительный просмотр в GTM:&#x20;

<br>

<figure><img src="/files/fUyUj4SKP8GGtRt5jIT5" alt=""><figcaption></figcaption></figure>

После нажатия вводим адрес Минилендинга:

<figure><img src="/files/pezZYaR9QJewO6UkyZov" alt=""><figcaption></figcaption></figure>

После нажатия на **Connect** откроется сам минилендинг и окно отладки с событиями которые сработали. Tags Fired - те что применились.

В рекламном кабинете ВКонтакте спустя некоторое время после срабатывания надпись “Данные не поступают” сменится на график со значениями.

<figure><img src="/files/lFUjuhvk0VXxZa4KCkCq" alt=""><figcaption></figcaption></figure>

## Доступные события

### Для Минилендингов

{% hint style="info" %}
На минилендинги нужно прописывать триггеры тех тегов, которые необходимо пробросить дальше
{% endhint %}

событие **page\_view** - просмотр всех привязанных минилендингов

событие **page\_view\_N** где N - номер минилендинга - просмотр конкретного минилендига

нажатия на кнопки перехода мессенджеров:

* button\_vk
* button\_telegram
* button\_viber
* button\_facebook
* button\_whatsapp
* button\_ok
* button\_instagram

кастомное событие вашей личной кнопки (для этого надо добавить CSS класс кнопки, он и будет названием события нажатия)

<figure><img src="/files/GTy0p3fOyVccTsNVZUFS" alt=""><figcaption></figcaption></figure>

### Для подписной ВКонтакте

* событие **page\_view** - просмотр всех привязанных минилендингов
* событие **page\_view\_N,** где N - номер минилендинга - просмотр конкретного минилендинга
* событие **button\_vk** - кнопка “К диалогу”
* событие **buttons-type\_button -** любая кастомная кнопка


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/podklyuchenie-reklamnogo-kabineta-vkontakte-cherez-gtm.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
