> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chasto-zadavaemye-voprosy/kak-sdelat/vremenno-dostupnyi-kontent.md).

# Временно доступный контент

{% hint style="warning" %}
Важно помнить:

1. Ссылки создаются в калькуляторе;
2. Ссылка уникальна для каждого диалога, их нельзя пересылать;
3. Внутри ссылок работают переменные.&#x20;
   {% endhint %}

Для ограничения доступа к вашим ссылкам по времени, можно использовать прокси-ссылки через добавление в кнопки блоков:

Шаг 1. Для этого в калькуляторе добавим переменную, например, link, в которой сохраним прокси-ссылку (см. пример на рис. 2)

Шаг 2. Добавим кнопку в блоке, где в настройках кнопки вставим переменную в поле URL:

<figure><img src="/files/YkBo6KaX5CfdYOGhLdc0" alt="" width="563"><figcaption></figcaption></figure>

## Короткие ссылки с уведомлением о клике

### Одноразовые ссылки

Если в функции "proxy", "proxy\_date", "prox&#x79;*\_*&#x74;imeout" дополнительно передать еще один параметр, не равный нулю, то ссылку будет одноразовая.

<figure><img src="/files/9JToAlTY84B6JEEwpQSQ" alt=""><figcaption><p>Рис. 2</p></figcaption></figure>

На второй переход по ссылке пользователь увидит такое сообщение:

![Рис. 3](/files/-MKAiV8wC_o1meiwT8W4)

### Ссылки с таймером

proxy\_date() - в данную функцию передается ссылка, при этом функция возвращает ссылку с уведомлением о клике.&#x20;

Вторым и третьим параметром идут дата и время, когда ссылка перестанет действовать.  Если передать после минут еще один параметр, не равный нулю, то ссылка будет одноразовая

<figure><img src="/files/fu6FCEf720ZrqWbe6e2N" alt=""><figcaption><p>Рис. 4</p></figcaption></figure>

После того как истечет срок ссылки, человек увидит это сообщение, перейдя по ней.

![Рис. 5](/files/-MKAiIdzpKoo9E86GEpH)

### Ограниченные по времени ссылки

proxy\_timeout() - в данную функцию передается ссылка, функция возвращает ссылку с уведомлением о клике. дополнительный параметр количество минут, которые действует ссылка. Если передать после минут еще один параметр, не равный нулю, то ссылку будет одноразовая

<figure><img src="/files/QVNxwF6irNuhz7V3LSMd" alt=""><figcaption><p>Рис. 6</p></figcaption></figure>

![Рис. 7](/files/-MKAiHy53qHKlIhkyNFJ)

## Короткие ссылки без уведомления о клике

Все короткие ссылки можно сделать без колбека, то есть классическими короткими ссылками.

Для этого есть функции с такими же параметрами, но не вызывающие колбек.

<table><thead><tr><th width="358">С колбеком</th><th>Без колбека</th></tr></thead><tbody><tr><td><strong>proxy</strong> </td><td><strong>short</strong> </td></tr><tr><td><strong>proxy_timeout</strong></td><td><strong>short_timeout</strong> </td></tr><tr><td><strong>proxy_date</strong></td><td><strong>short_date</strong> </td></tr></tbody></table>

Соответственно, если вам необходимо воспользоваться короткими ссылками без колбека, то аналогично функциям прокси-ссылок воспользуйтесь переменной, в которую сохраним ссылку:

<figure><img src="/files/2QQprFdjQW7OFf1W5M0d" alt=""><figcaption><p>Рис. 8</p></figcaption></figure>

## Умные прокси-ссылки

Это те же обычные прокси-ссылки: называются "умными", поскольку позволяют передавать параметры через #{}. При переходе по такой ссылке вместо параметров буду взяты переменные с соответствующим названием из переменных клиента. Так вы сможете направить клиента в нужный раздел сайта, не изменяя саму ссылку:

<figure><img src="/files/zrEqQ4O7mM9EYQiHHo48" alt=""><figcaption><p>Рис. 9</p></figcaption></figure>

`url = proxy('https://yandex.ru/search/?clid=9582&text=salebot&lr=53&p=#{page}')`&#x20;

`page = 0`&#x20;

В данном примере (рис. 8) создаем ссылку с одним параметром, но их может быть любое количество.&#x20;

{% hint style="warning" %}
Будьте внимательны! Важно заранее продумать заполнение параметров в воронке, чтобы "умная" прокси-ссылка работала без сбоев. Свое значение параметр должен получить до того, как ссылка предоставляется клиенту.&#x20;
{% endhint %}

При грамотном построении воронки достаточно будет изменять значения необходимых переменных у клиента  и при переходе по ссылке клиент будет попадать туда, куда требуется по одной и той же ссылке.

## Удаление ссылок

**remove\_links()** - деактивация всех коротких ссылок, отправленных клиенту\
**remove\_one\_time\_links()** - деактивация всех одноразовых ссылок, отправленных клиенту\
**remove\_timer\_links()** - деактивация всех временно доступных ссылок, отправленных клиенту

<figure><img src="/files/lfNKyqqicOyd5USwuGDd" alt=""><figcaption><p>Рис. 10</p></figcaption></figure>

## Пример использования в кнопке

Зададим одноразовую ссылку в калькуляторе в переменной 'link':

<figure><img src="/files/JICeDuyrKKWGDy7Xfp7K" alt=""><figcaption><p>Рис. 11. Назначим переменную link</p></figcaption></figure>

Далее переменную передадим с интерполяцией (через конструкцию #{}) в настройках кнопки:

<figure><img src="/files/q0fpqfAphI0l8JsZQ3fy" alt=""><figcaption><p>Рис. 12. Настройки кнопки</p></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chasto-zadavaemye-voprosy/kak-sdelat/vremenno-dostupnyi-kontent.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
