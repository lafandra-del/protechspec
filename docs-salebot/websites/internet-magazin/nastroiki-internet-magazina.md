> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/internet-magazin/nastroiki-internet-magazina.md).

# Настройки интернет-магазина

В разделе настройки сайта, вы можете найти раздел "Магазин":

<figure><img src="/files/no86HAJpA7KZsNv7YRIS" alt=""><figcaption></figcaption></figure>

В данном разделе вы можете настроить оплату, внешний вид корзины, выбрать доставку, а также скрыть некоторые поля в форме для клиента.

{% hint style="success" %}
Как подключить сервисы доставки, рассказали в статье "[Доставка товаров](/websites/internet-magazin/dostavka-tovarov.md)".
{% endhint %}

## Настройки оплаты

Разверните вкладку "Оплата":&#x20;

1. здесь вы увидите выбор валюты для магазина:

<div data-with-frame="true"><figure><img src="/files/Ic5UEiAFEW32EVIoEftR" alt="" width="375"><figcaption></figcaption></figure></div>

Можно выбрать, в какой валюте будут отображаться цены в каталоге.

2. Выбор платежного сервиса:

<div data-with-frame="true"><figure><img src="/files/kV5yuT91ZNkJ3KaiNszX" alt="" width="375"><figcaption></figcaption></figure></div>

В выборе платежного сервиса у вас будут отображены только те, которые подключены в разделе "Эквайринг" в настройках проекта.

Можно выбрать все или один из подключенных сервисов для приема платежа.

3. Настройка промокода

{% hint style="info" %}
О настройке [промокодов рассказали ниже.](#promokody)
{% endhint %}

4. Сообщение после создания заявки на товар

<div data-with-frame="true"><figure><img src="/files/zWx1c64AyczvgJDz3QbD" alt=""><figcaption></figcaption></figure></div>

В этом поле укажите текст сообщения, которое будет отображаться вашему клиенту после того, как он закажет / купит ваш товар в каталоге.

5. Страница успешной оплаты:

<div data-with-frame="true"><figure><img src="/files/yecDE62g7XBJUkK1Elb4" alt=""><figcaption></figcaption></figure></div>

Указывается страница, на которую перейдет клиент после того, как оплатит корзину товаров.

### Промокоды

Чтобы настроить промокоды для скидок в магазине, перейдите в настройки сайта, затем откройте вкладку "Магазин" и нажмите на кнопку "Настройка промокода":

<div data-with-frame="true"><figure><img src="/files/HOMNUJ9m2o24e776CMwL" alt="" width="375"><figcaption></figcaption></figure></div>

Так вы перейдете на страницу настроек, где нужно кликнуть по кнопке "Создать промокод":

<div data-with-frame="true"><figure><img src="/files/MWopO2FQLxot5snBsW6G" alt="" width="563"><figcaption></figcaption></figure></div>

Далее вам откроется страница с настройками промокода:

<figure><img src="/files/EDNVCl9TK3ocCIB7kkzm" alt="" width="563"><figcaption></figcaption></figure>

Шаг 1. Пропишите код промокода:

<figure><img src="/files/xfFTSn6PObBBjoQMOaSj" alt=""><figcaption></figcaption></figure>

Шаг 2. Выберите тип скидки:

<figure><img src="/files/BKwZCQfHHB2a6Q9nZqy0" alt=""><figcaption></figcaption></figure>

1. Процент — это снижение всей суммы корзины покупателя на определенный процент (например, скидка 10% на все покупки по промокоду Лето2025).
2. Фиксированная сумма — это вычет указанной суммы из общей стоимость товаров покупателя (например, скидка 1000 рублей на первую покупку).

Шаг 3. Выберите срок действия:

<figure><img src="/files/ITgZNmeFgysEkHoZy8V2" alt=""><figcaption></figcaption></figure>

Промокод может быть бессрочным или действовать до определенной даты.

Шаг 4. Выберите максимальное количество использований:

<figure><img src="/files/WE5fHfBm9EEjzimjqQLp" alt=""><figcaption></figcaption></figure>

То есть сколько раз могут воспользоваться данным промокодом.

Шаг 5. Выберите категории товаров, на которые будет распространяться создаваемый Вами промокод:

<figure><img src="/files/bYEuumesFrHf0pJ95LTC" alt="" width="563"><figcaption></figcaption></figure>

Либо выберите "Без категории", если нужно применять скидку ко всему ассортименту товаров.

Шаг 6. Затем нажмите "Сохранить":

<figure><img src="/files/Wi2Om8sL26iqphdzHQ71" alt=""><figcaption></figcaption></figure>

Затем промокод отобразиться в разделе, где вы сможете посмотреть его характеристики (сколько раз был использован, его дату, скидку и тд):

<figure><img src="/files/Aw97L1aOLPmKEi7MvGmQ" alt="" width="375"><figcaption></figcaption></figure>

а


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/internet-magazin/nastroiki-internet-magazina.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
