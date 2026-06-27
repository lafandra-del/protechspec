> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/payments/wayforpay.md).

# Wayforpay

* [Как подключить](#nastroiki-podklyucheniya)
* [Как обработать результат](#obrabotka-rezultata)

{% hint style="info" %}

* Быстрая регистрация и подтверждение мерчанта
* Регистрация мерчанта для физ лица без сайта
* Единый процент для физ и юр лиц - 2.5%
* Наличие GooglePay и ApplePay
  {% endhint %}

## **Как подключить**

Для подключения платежной системы wayforpay понадобится 3 значения:&#x20;

1. логин мерчанта
2. секретный ключ мерчанта
3. доменное имя веб-сайта торговца.

Переходим в личный кабинет -> настройки магазина **<https://m.wayforpay.com/mportal/merchant/list>**

<figure><img src="/files/7L08FeUKwO1jZKr9o6K4" alt="" width="563"><figcaption></figcaption></figure>

Копируем данные и переходим к настройкам в Salebot.

Открываем раздел "Эквайринг", выбираем wayforpay.&#x20;

<figure><img src="/files/UwXENiaosLbTuyJJ6mHG" alt=""><figcaption></figcaption></figure>

Нужно ввести полученные данные в открывшейся форме:

<figure><img src="/files/s4CJIuor5U1SBHFSihdf" alt=""><figcaption></figcaption></figure>

Для генерации ссылки на оплату, вам необходимо установить значение переменной **payment\_sum** (например, 150 или 100.55, если сумма дробная, то сумма указывается через точку):

<figure><img src="/files/CA3UfA3fvSsunXcW0Xrg" alt=""><figcaption></figcaption></figure>

Сразу после этого появится переменная **wayforpay\_pay\_url**. Эту переменную можно вывести в сообщении ссылкой или разместить на кнопке с текстом "Оплатить":

Вариант 1. Ссылка на оплату в кнопке:

<figure><img src="/files/e670XHdt6oAhpKIaLzVX" alt=""><figcaption></figcaption></figure>

Вариант 2. Ссылка на оплату в поле url вложения:

<figure><img src="/files/077rYr1YDWAdh9xhj2Io" alt=""><figcaption></figcaption></figure>

Ссылка имеет вид:&#x20;

<https://secure.wayforpay.com/invoice/id1bbb2ad0375>

{% hint style="warning" %}
По умолчанию установлена UAH (гривна), если нужна другая валюта нужно установить значение переменной currency
{% endhint %}

Также до установки значения переменной **payment\_sum**, можно задать следующие необязательные переменные, для настройки платежа.

**currency** - валюта заказа по умолчанию UAH (возможные значения USD, EUR, RUB)

**session\_timeout** - время жизни ссылки в секундах, по умолчанию 3600 (1 час)

**product\_name** - название продукта

**language** - язык страницы оплаты, по умолчанию UA (возможные значения RU, EN)\
\
**buyer\_name** - имя покупателя

**buyer\_email** - почта покупателя

**buyer\_first\_name** - имя покупателя

**buyer\_last\_name** - фамилия покупателя

Такой вид имеет страница для оплаты ссылка.

<img src="https://lh6.googleusercontent.com/Qsm1KH-AI7U8pv_6AjddIF3rWTlidd-TCKepv0LtbxbpEHBL72YbrQ-Yzb-UvI64-ih_XVqb9kjVCRcix6B5rWFK-AWgNLEbHgsaLCZvMHXoH7xHmSrnsZz-qKB0wHH67M0u8gyR" alt="Пример формирования ссылки на оплату" width="375">

Создадим ссылку на оплату в размере 1 грн и временем жизни 2 часа:

<figure><img src="/files/CVHddwnwyk0UYe5zRnLx" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
**Обратите внимание:** \
\- Сначала указываете необязательные параметры  **product\_name** и т.д.\
\- И последней присваиваем значение переменной **payment\_sum**
{% endhint %}

Обратите внимание, вначале задаем переменные для настроек, затем payment\_sum. Переменные можно задать и ранее в цепочке, а не в одном блоке, это пример.

Далее в следующем блоке выводим переменную **wayforpay\_pay\_url**, в которой содержится ссылка (например, ссылка в тексте):

<figure><img src="/files/q2qAahmWucnXYzv30yHp" alt=""><figcaption></figcaption></figure>

Бот отработается следующим образом:

<figure><img src="/files/EbFnsmeGmpMRWpQR9t1N" alt="" width="563"><figcaption></figcaption></figure>

## Как обработать результат

После успешной оплаты в бот придут колбэки, по которым вы сможете понять, что была успешная оплата. Эти колбэки в системе вы видите как сообщения от пользователя, чтобы их не мог отправить пользователь, они состоят из 10 первых символов секретного ключа и приписки \_success, например: **flk3409ref\_success**

<figure><img src="/files/3Y9MKTRpBh42Qs2qkUJr" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Эти колбеки НЕ ВИДИТ пользователь, они отображаются только оператору
{% endhint %}

Тип сравнения должен быть "Полное совпадение"

Также после успешной оплаты переменная wayforpay\_payment\_completed устанавливается в True

Например, можно сделать обработку успешной оплаты блоком с условием и вывести соответствующее сообщение пользователю:

<figure><img src="/files/MI2JQsTQa6t9ewyXJbyH" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/b4mJABaVJfutZH5Q5r9Z" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Если вы не хотите выбивать клиента из основной схемы чат-бота, воспользуйтесь блоком "Не состояние с условием" — в этот блок нельзя перейти, поэтому клиента после оплаты не выбьет из основной воронки и при этом он получит уведомление об успешной оплате.

А если вам нужно продолжить воронку с реакции на успешную оплату, то используйте блок "Стартовое условие", тогда клиент из блока оплаты перейдет в блок "Стартовое условие", с которого вы можете продолжить воронку.
{% endhint %}

{% hint style="info" %}
Подробнее о [блоках с условием рассказали](broken://pages/VktePfPMzzJlbjBSqE93) в одноименной статье.
{% endhint %}

После завершения оплаты клиенту добавится переменная **wayforpay\_callback\_data**, содержащая данные ответа платежной системы по совершенной операции. Из полученного словаря можно извлечь необходимые данные при помощи метода **get**.

## Функции для работы в калькуляторе

### Для рекуррентных платежей

wayforpay\_recurrent\_payment(amount, currency, session\_timeout, product\_name, language, buyer\_name, buyer\_email, regular\_date\_next, regular\_date\_end, regular\_count, regular\_mode) - создает ссылку на рекуррентную оплату.&#x20;

<table><thead><tr><th width="303.85546875">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td>amount</td><td>сумма платежа</td></tr><tr><td>currency</td><td>валюта. По умолчанию UAH (возможные значения USD, EUR, RUB). Необязательный параметр</td></tr><tr><td>session_timeout</td><td>время жизни ссылки в секундах, по умолчанию 3600 (1 час). Необязательный параметр</td></tr><tr><td>product_name</td><td>название продукта. Необязательный параметр</td></tr><tr><td>language</td><td>язык страницы оплаты, по умолчанию UA (возможные значения RU, EN). Необязательный параметр</td></tr><tr><td>buyer_name</td><td>имя покупателя. Необязательный параметр</td></tr><tr><td>buyer_email</td><td>почта покупателя. Необязательный параметр</td></tr><tr><td>regular_date_next</td><td>дата следующего автоплатежа. По умолчанию через месяц после создания ссылки. Необязательный параметр</td></tr><tr><td>regular_date_end</td><td>дата окончания автоплатежей. По умолчанию через год после создания ссылки. Можно пропустить и указать параметр regular_count . Необязательный параметр</td></tr><tr><td>regular_count</td><td>Количество автоплатежей. Если указать, то параметр regular_date_end не будет действовать. Необязательный параметр</td></tr><tr><td>regular_mode</td><td>период, с которым будут происходить автоплатежи. . Необязательный параметр. Возможные варианты:  <br>- once - единоразовое списание<br>- daily - ежедневно<br>- weekly - еженедельно<br>- quarterly - каждые 3 месяца после даты первого платежа<br>- monthly - раз в месяц<br>- bimonthly - раз в 2 месяца<br>- halfyearly - раз в полгода <br>- yearly  - раз в год</td></tr></tbody></table>

### Для отмены автосписаний

wayforpay\_delete\_recurrent() - отменяет последующие автоматические списания у клиента. При успешном выполнении возвращает "Ok"

<figure><img src="/files/39oaPOWmz7tEQp29SSSy" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Можно также использовать блоки "Стартовое условие" и "Состояние" (в примере использованы блоки "Не состояние с условием" и "Не состояние".

Если вы не хотите выбивать клиента из основной схемы чат-бота, воспользуйтесь блоком "Не состояние с условием" — в этот блок нельзя перейти, поэтому клиента после оплаты не выбьет из основной воронки и при этом он получит уведомление об успешной оплате.

А если вам нужно продолжить воронку с реакции на успешную оплату, то используйте блок "Стартовое условие", тогда клиент из блока оплаты перейдет в блок "Стартовое условие", с которого вы можете продолжить воронку.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/payments/wayforpay.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
