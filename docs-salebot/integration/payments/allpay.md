> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/payments/allpay.md).

# Allpay

### Подключение платежной системы Allpay

Для работы с платежной системой allpay переходим в проект на salebot.pro и в разделе "Эквайринг" находим платежную систему Allpay.

<figure><img src="/files/8clmkM2dRJrGcJLLRXM6" alt=""><figcaption><p>Рис. 1. Раздел "Эквайринг" для подключения платежного сервиса к Сейлботу</p></figcaption></figure>

После нажатия подключить открывается форма для подключения платежной системы

<figure><img src="/files/unJ7B78FeHXE0XHKyOXg" alt=""><figcaption><p>Рис. 2. Ввод логина и пароля от сервиса</p></figcaption></figure>

В этой форме вводим **Логин** и **пароль** для работы с API платежной системы.

После этого нажимаем **Сохранить настройки,** после чего увидим, что кнопка для подключения платежной системы Allpay отображается как "Подключено":

{% hint style="success" %}
Это обозначает, что платежная система подключена и можете переходить к работе с ней.
{% endhint %}

<figure><img src="/files/K0lh00Ze0ggsS8zvoV2V" alt=""><figcaption><p>Рис. 3. Отображение кнопки подключенной платежной системы</p></figcaption></figure>

### Настройка работы с платежной системой Allpay

В Allpay необходимо обязательно передать email покупателя. Вы можете поместить его в переменную **allpay\_email** в блоке

Для создания ссылки оплаты есть 2 способа:

1. Для генерации ссылки на оплату, вам необходимо установить значение переменной **payment\_sum** (*например, 150 или 100.55 (<mark style="color:red;">**через точку**</mark>!)*), сразу после этого появится переменная **allpay\_pay\_url.**&#x20;

Эту переменную можно вывести на экран ссылкой или разместить на кнопке с текстом "Оплатить". Для этого способа есть дополнительные параметры, но их необходимо объявить в переменных до **payment\_sum**. Переменная **allpay\_currency** может быть использована для указания валюты, по умолчанию используется значение **'RUB'**. Переменная **allpay\_lang** для указания языка платежной страницы, по умолчанию **‘ENG’.**

2. Также ссылку можно создать через функцию **allpay\_generate\_payment\_url(amount, email**, **currency, lang)**.&#x20;

| Параметры (для второго способа):                                                                        |
| ------------------------------------------------------------------------------------------------------- |
| amount - содержит сумму платежа                                                                         |
| email - содержит email плательщика                                                                      |
| currency - необязательный параметр для указания валюты (по умолчанию - ‘RUB’),                          |
| lang - необязательный параметр, указывает на каком языке будет платежная страница (по умолчанию ‘ENG’). |

Ссылка будет ответом на выполнение функции поместите ее в переменную

### ПРИМЕРЫ:

Для первого способа:

<figure><img src="/files/Qku6DrcwoFHuFEuneV3t" alt=""><figcaption></figcaption></figure>

> allpay\_email = '\*\*\*\*\*\*<1@mail.ru>'
>
> payment\_sum = 100

В результате следующую переменную можно передать в блоке ссылкой:

<figure><img src="/files/Nxwkz80B6jFLYmq7Ldcy" alt=""><figcaption></figcaption></figure>

**Пример** для второго способа:

<figure><img src="/files/39YYhE4bKGfsPYUaNH4M" alt=""><figcaption></figcaption></figure>

> payment\_url = allpay\_generate\_payment\_url(100, '\*\*\*\*\*\*\*\*<1@mail.ru>')

В результате будут созданы переменные:

<figure><img src="/files/qSpRdhd4Rf19PRB4WdC9" alt="" width="266"><figcaption></figcaption></figure>

{% hint style="success" %}
После успешной оплаты переменная **allpay\_payment\_completed** примет значение True, а также придет callback об успешной оплате
{% endhint %}

{% hint style="info" %}
В начале текста используются первые 8 символов пароля для работы с API
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/payments/allpay.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
