> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/internet-magazin/dostavka-tovarov.md).

# Доставка товаров

Новый инструмент позволяет добавлять и управлять способами доставки, чтобы клиенты могли выбирать удобный вариант при оформлении заказа.

<figure><img src="/files/4quBEmw6jxUucdLUl22y" alt="" width="406"><figcaption></figcaption></figure>

{% hint style="success" %}
Интеграции с сервисами доставки будут доступны позднее, о чем мы доведем вам в рубрике "[Обновления недели](broken://pages/pjxbCqlBFofuEVIAlbQS)".&#x20;
{% endhint %}

Настройка доступных способов доставки уже позволяет гибко организовать процесс заказа и предоставить покупателям прозрачный выбор доставки товаров.

## Настройка способов доставки

### Деловые линии

{% hint style="success" %}
При использовании интеграции клиенту отображается примерный расчет суммы доставки, также создается заказ на сервисе "Деловые линии", который отслеживается по номеру.
{% endhint %}

Чтобы подключить интеграцию "Деловые линии" для доставки вам понадобится api-ключ. Для этого зарегистрируйте его в личном кабинете:

<figure><img src="/files/gycBFBlFuH7SjtKSIOkv" alt=""><figcaption></figcaption></figure>

Обязательно отметьте галочку "Приложение, использующее API Деловые линии".

{% hint style="success" %}
По вопросам получения api-ключа обращайтесь в техническую поддержку сервиса "Деловые линии".
{% endhint %}

**Далее перейдите в раздел «Доставки» в Salebot.**\
В боковом меню выберите раздел **«Доставки»:**

<figure><img src="/files/It0wT6iP9i0BObp4SSr3" alt="" width="194"><figcaption></figcaption></figure>

Далее нажмите подключить на карточке "Деловые линии":

<figure><img src="/files/pQv0MSvgsYM2hOVBz8oI" alt=""><figcaption></figcaption></figure>

После чего заполните поля API key, а также введите логин и пароль от сервиса "Деловые линии":

<figure><img src="/files/yeZNGypgAnizW1pNE6r8" alt=""><figcaption></figcaption></figure>

После чего нажмите "Проверить подключение". Если данные введены корректно, то вам откроются  следующие поля настроек:

<figure><img src="/files/f1Pxjhzn3F96ylsnnGhd" alt=""><figcaption></figcaption></figure>

Далее вы сможете выбрать терминал отправки, тип груза, имя отправителя и ввести номер телефона для связи с клиентами.

При заказе клиентом товаров, он сможет выбрать способ доставки, увидит примерную стоимость:

<figure><img src="/files/CGk2SoDfxvNDUmYTe7yq" alt=""><figcaption></figcaption></figure>

При заказе клиента создается заявка с данными клиента, выбранными и оплаченными товарами, а также номер заказа, который отслеживается на сервисе "Деловые линии".

<figure><img src="/files/S8AxadDKZqUwwFUSPNeL" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Как выбрать способ доставки в настройках магазина, [рассказали ниже.](#vybor-sposoba-dostavki-v-nastroikakh-magazina)
{% endhint %}

### СДЭК

{% hint style="warning" %}
Обращаем внимание!

Интеграция доступна только для юридических лиц.
{% endhint %}

Чтобы отправлять товары, также можно подключить интеграцию СДЭК. Для этого Вам понадобится client ID и секретный ключ:

<figure><img src="/files/cvW4wRcvMdCk5RhgxxI0" alt=""><figcaption></figcaption></figure>

Найти client ID и секретный ключ можно в личном кабинете в настройках на сайте СДЭК (вход от имени ю/л).

<figure><img src="/files/s1tnSRyTbvwZHDy7w3oL" alt="" width="563"><figcaption></figcaption></figure>

### Почта России

Для отправки посылок с помощью "Почты России" необходимо пройти регистрацию для отправки. Регистрация для отправки посылок доступна для ю/л, ИП и самозанятых.

<figure><img src="/files/gbifK4VVUAH9TJWEC6EN" alt=""><figcaption></figcaption></figure>

Далее после регистрации в сервисе (после регистрации кабинет формируется в течение 5-10 минут) в личном кабинете вы сможете найти токен для подключения интеграции в разделе "Настройки" -> "API":

<figure><img src="/files/xj8KTky87Soo6sfacCrI" alt=""><figcaption></figcaption></figure>

После чего необходимо ввести логин, пароль и токен при подключении доставки в Сейлбот:

<figure><img src="/files/yGmDJdmQg6TRk28YeCXN" alt=""><figcaption></figcaption></figure>

Далее нажмите "Сохранить" и интеграция будет подключена.

### Настраиваемые вручную способы

**Шаг 1. Перейдите в раздел «Доставки»**\
В боковом меню выберите раздел **«Доставки»:**

<figure><img src="/files/It0wT6iP9i0BObp4SSr3" alt="" width="194"><figcaption></figcaption></figure>

**Шаг 2. Создайте новый способ доставки**\
Нажмите кнопку **«Создать свой вариант доставки»**.

<figure><img src="/files/75Tdb5KBjH8txG7gDrUz" alt="" width="563"><figcaption></figcaption></figure>

После чего откроются поля с настройками доставки.

**Шаг 3. Заполните поля способа доставки**

<figure><img src="/files/xdS8pY8nEd3t5UU4p0Jo" alt="" width="563"><figcaption></figcaption></figure>

Укажите необходимые параметры:

1. **Название** — как способ доставки будет отображаться клиенту;
2. **Описание** — краткая информация о способе доставки (описание отображается под выбором варианта доставки);
3. **Город** — город, в котором вы осуществляете доставку;
4. **Сроки доставки** — ориентировочное время доставки товара;
5. **Цена** — стоимость доставки для клиента;
6. **Минимальная сумма для бесплатной доставки** — если применимо, пороговая сумма заказа: если клиент наберет товаров на сумму, равную или больше указанной в данном поле, то доставка отображается как "Бесплатная".
7. **Дополнительные поля для доставки** — выберите, какие данные клиент должен указать при заказе (ФИО, улица, дом, подъезд, этаж, квартира/офис, домофон, адрес, комментарий).

После того как вы заполнили поля с настройками, нажмите "Сохранить" или "Сохранить и выйти":

<figure><img src="/files/jBEOMs6YeDdsuzngEKN4" alt="" width="563"><figcaption></figcaption></figure>

## Выбор способа доставки в настройках магазина

После того как вы настроили способы доставки в одноименном разделе, перейдите в настройки интернет-магазина:

<figure><img src="/files/7X77FxzRKzIlMXmngagf" alt=""><figcaption></figcaption></figure>

Далее найдите сайт с интернет-магазином, в котором хотите установить способы доставки, и нажмите на кнопку настроек:

<figure><img src="/files/0TkXIqShKhffSwpiR2Rq" alt="" width="563"><figcaption></figcaption></figure>

Откроется правое меню с настройками сайта, где необходимо перейти во вкладку "Магазин":

<figure><img src="/files/qBhKgaRWtKDGkBR4Pffc" alt=""><figcaption></figcaption></figure>

Далее во вкладке "Магазин" разверните поле "Доставка" и выберите, какой вид доставки будет доступен данному магазину:

<figure><img src="/files/zuurcPx1fOAZUZ9uIke1" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!&#x20;

Теперь вы знаете, как настраивать доставку для интернет-магазина.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/internet-magazin/dostavka-tovarov.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
