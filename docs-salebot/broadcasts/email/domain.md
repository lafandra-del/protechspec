> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/broadcasts/email/domain.md).

# Привязка домена и создание почтовых ящиков

{% hint style="warning" %}
Обращаем внимание!

Если домен зарегистрирован не в Salebot, а на стороннем сервисе, для корректной работы необходимы записи [dkim](#dkim-zapis), [SPF](#spf-zapis) (сразу обе!). Получить их можно в настройках email-бота.&#x20;

Подробнее об этом читайте [ниже](#spf-zapis).&#x20;

<mark style="color:red;">**Без этих записей google- и яндекс-почта будут БЛОКИРОВАТЬ исходящие письма!**</mark>

Установка dkim-, spf-записей осуществляется в настройках проекта в разделе "Каналы".

Найдите канал с email и перейдите в настройки:

<img src="/files/MgC66e6d5j5URFupcVUl" alt="" data-size="original">

В открывшемся модальном окне вы увидите поля для заполнения для dkim-, spf-записей:

<img src="/files/IWkNXBDWKhL0Atk3dd4W" alt="" data-size="original">
{% endhint %}

Если у вас есть свой домен, можно подключить его к аккаунту. Для этого необходимо зайти в раздел “Домены”.

![](/files/xXw6NqJhsthczXIJ7IHZ)

![](/files/wmH3gGrKwKTA68gQdfNm)

В поле нужно ввести имя своего домена и нажать на кнопку “Добавить домен”

![](/files/iChcqGYExhkpBigZDdNI)

После этого домен появится в списке. Чтобы начать с ним работать, необходимо подтверждение, что домен ваш. Для авторизации необходимо зайти в вашу DNS-панель и следовать инструкциям. (пример ниже - reg.ru)

{% hint style="warning" %} <mark style="color:red;">Внимание:</mark> настройки DNS записей вступают в силу не моментально. Иногда необходимо запастись терпением.
{% endhint %}

![](/files/aeFWBmEqzsA3rdc94ToT)

Заходим в панель настроек домена.

![](https://lh5.googleusercontent.com/-7Mq1pQVRQG8-y_HSPWEiVceiD7Eupe9sVzWtm224z-CyHy8mRpGnaJv3J7_3LvQnzDSyrb6YsT04KYaYUFzqzMqnEGBd_hZUNETtt1n1bMZBeKauuL9SbbR-c6Ymj8jYdLtQQaANku_TwejxmJOb8o)

Выбираем нужный домен и нажимаем “Настроить” - появится dns панель управления.

Для авторизации создаем новую ресурсную запись.

![](/files/W5I5MEKscnkXKM0lxd1j)

Далее необходимо настроить домен, чтобы он позволил пропускать почту через Salebot.

<figure><img src="/files/cf20yt3dm76x3OmoTDoI" alt=""><figcaption></figcaption></figure>

## **MX запись**

![](https://lh4.googleusercontent.com/Hm87lzVSPBpAQ6TcHtF30jqHw_pubdS6Cav75hkzEvNEbEBwasR6PHvN-9etnnToh0TmcoMruJLaPuLABuWgTJFnId9IPqVZA6Vyo-5xVQ-FrZIxyfnVyUZmB_ZF-6SdRWkBed68V1vKehnOtOgSMj8)

{% hint style="warning" %} <mark style="color:red;">Внимание!</mark> Если при создании m&#x78;**-**&#x437;аписи панель автоматически дописывает ваш домен к “mail.salebot.pro”, как на рисунке ниже, необходимо исправить значение и в конце записи поставить точку: “mail.salebot.pro.”
{% endhint %}

<figure><img src="/files/5MS1LRVwrIBbkd5A4e2P" alt=""><figcaption><p><mark style="color:red;"><strong>Пример неправильного ввода</strong></mark></p></figcaption></figure>

<figure><img src="/files/9wcpx7NKQxaW6btzYltA" alt=""><figcaption><p><mark style="color:green;"><strong>Пример правильного ввода</strong></mark></p></figcaption></figure>

## **SPF запись**

{% hint style="info" %}
Обращаем внимание!

Если у вас уже создана spf-запись, то нет необходимости повторно создавать еще вторую.

Достаточно к первой прибавить вставку "include:mail.salebot.pro":

<img src="/files/Q3tcdOh5JT2zYgu5RElj" alt="" data-size="original">
{% endhint %}

{% hint style="warning" %}
Если ваш домен зарегистрирован не в Salebot, необходимо обязательно создавать DKIM, SPF запись (сразу обе)!\
В противном случае, google- и яндекс-почта будут блокировать письма!
{% endhint %}

![](https://lh5.googleusercontent.com/0r25D23PpCRRKdcoyA-i2p5VSVxaf0P2VbbAAQiXQB98Jy5gknj30ux5T-ulQ28Zpds6MNo03uqqqxJSl0EDZ1zGlCt9l8AjMl3GUKyMPt4MKHVJ1Xg0pyVKM15iQz_r2FLXWtb9AzK_MbWXlNE8XAc)

&#x20;

<figure><img src="/files/3dZskUQQm25NerjXeUNB" alt=""><figcaption><p><mark style="color:green;"><strong>Пример правильного ввода</strong></mark></p></figcaption></figure>

Чтобы установить spf-запись, перейдите в раздел "Каналы" и найдите необходимый рассыльщик email:

<figure><img src="/files/S6Kdoh7ojY7MVeIAtVj7" alt=""><figcaption></figcaption></figure>

Кликните на настройки:

<figure><img src="/files/2qesy9RZ8IFJQYOk97kq" alt=""><figcaption></figcaption></figure>

Здесь вы увидите поля для заполнения dkim- и spf-записей.

## **DKIM запись**

{% hint style="warning" %}
Если ваш домен зарегистрирован не в Salebot, необходимо обязательно создавать DKIM, SPF запись (сразу обе)!\
В противном случае, google- и яндекс-почта будут блокировать письма!
{% endhint %}

![](https://lh6.googleusercontent.com/7RaAIP7b72GIK2YHVKA1S3s51yTYFgu-XX2q13AOptMBvtF0YrqtHu4CHH49DmeeCcYWkdYKU-TowIuhAFeLgV7K7HoRuSVVNJeacRJbHSLHywpiYZrVur4KnnQLzyco7KW0so7rlS_TagJ0D8o6g4k)

<figure><img src="/files/iWx7eiIxcGUWtjbOGXr9" alt=""><figcaption><p><mark style="color:green;"><strong>Пример правильного ввода</strong></mark></p></figcaption></figure>

Чтобы установить dkim-запись, перейдите в раздел "Каналы" и найдите необходимый рассыльщик email:

<figure><img src="/files/S6Kdoh7ojY7MVeIAtVj7" alt=""><figcaption></figcaption></figure>

Кликните на настройки:

<figure><img src="/files/2qesy9RZ8IFJQYOk97kq" alt=""><figcaption></figcaption></figure>

Здесь вы увидите поля для заполнения dkim- и spf-записей.

## **DMARC запись**

![](https://lh3.googleusercontent.com/Vi-WSrVBLpsfuUlvjx6OJaCHDUShNSmdVF055YxgS6MIQ5Ic7XAJLHhnxQ57BvWn8EaKl6Xp49E1kIaie7W-gzOo1LJvb690XStJCHLzK96lN86E7yQ8sYtIhBnK9ozbVfNSMR1TlXslioQTCuhQtGM)

<figure><img src="/files/xgo9xLd3ayO1RVs5iFd8" alt=""><figcaption><p><mark style="color:green;"><strong>Пример правильного ввода</strong></mark></p></figcaption></figure>

В результате правильная настройка выглядит примерно так:

![](https://lh4.googleusercontent.com/ttb-sC2XuNtq2V_SVKa3VjCnp0PkZm2w6qUR9un_mm2p8VeMC_QuxPMufQ68L2BsVX0zgOV4aEUAHJabFoYUVQmR62XsrfFZF1kNunGlcpSby5etrBRyQXiaSANawC31pv2U0I5yymTn7VnBTT0t5G4)

После авторизации и настройки домена можно создавать почтовые ящики:

<figure><img src="/files/9MlyNbE0RpuXqAnZ4EN2" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/12ahnXjLezjJraRrWPYw" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/OKBmFDHiY9gmhiaElwo7" alt=""><figcaption></figcaption></figure>

Почтовые ящики готовы к работе. Их можно использовать при регистрации Email-бота:

![](/files/D5OGbg8rekKgtA1RKwAg)

![](/files/lZ3XIl8TvTX4LSuGGxW1)

## **Как воспользоваться SMTP от Salebot**

{% hint style="success" %}
Для отправки писем **НЕобязательно** подключать SMTP! \
\
**SMTP можно подключить:**

* Если вы знакомы с понятиями порт и домен;&#x20;
* знаете что такое SMTP  и как им пользоваться;
* планируете подключать почту к другим сервисам (например, outlook, Thunderbird и подобные);
* планируете делать почтовые рассылки со своего сайта.

Если <mark style="color:green;">**почта планируется использоваться ТОЛЬКО на Salebot,**</mark>  вероятнее всего <mark style="color:green;">**SMTP вам НЕ НУЖЕН.**</mark>
{% endhint %}

### **Как подключить SMTP**

Чтобы подключить SMTP, необходимо зарегистрировать ваш домен в личном кабинете Salebot и создать почтовый ящик (как это сделать рассказано [здесь](#privyazka-domena-i-sozdanie-pochtovykh-yashikov)).

<figure><img src="/files/31gq2fpnd9gm5AxbgeUb" alt=""><figcaption></figcaption></figure>

Далее необходимо выбрать нужный почтовый ящик и нажать на “Подключить SMTP”.

{% hint style="danger" %}
После оформления запроса подключения SMTP и пока он не будет одобрен, письма с указанной в запросе почты **ОТПРАВЛЯТЬСЯ НЕ БУДУТ**!

\
Если запрос отклонён, то с указанного адреса email больше НЕЛЬЗЯ будет отправлять писем. Для нового запроса потребуется создавать новую почту для домена и переподключать бота в разделе Каналы
{% endhint %}

Перед вами появится анкета для заполнения. Необходимо выбрать проект, с которым будет связано ваше подключение. С него будет списываться лимит сообщений при отправке email'ов через SMTP. Далее будут вопросы, касающиеся целей и сферы использования почтового ящика.

{% hint style="warning" %} <mark style="color:red;">**Важно!**</mark> Просим вас отвечать максимально честно и развернуто. От ваших ответов зависит одобрят ли модераторы возможность подключения.
{% endhint %}

<figure><img src="/files/xyOV83S2Lv4Mp4mCnOOJ" alt=""><figcaption></figcaption></figure>

После заполнения формы у почтового ящика появится статус “Запрос подключения SMTP находится на модерации”. Это значит, что заявка передана администраторам и ответ придет на почту вашего аккаунта в течение суток.

<figure><img src="/files/Hz6QWTJ3nKFtuUPlNekt" alt=""><figcaption></figcaption></figure>

Если запрос прошел проверку, у вас появится возможность посмотреть параметры подключения. Для этого нажмите на “Информация о SMTP”.

{% hint style="warning" %} <mark style="color:red;">**Важно**</mark>: Порт 25 не поддерживается. Нужно использовать только указанные порты - порты соединения с шифрованием трафика 465 и 587.
{% endhint %}

{% hint style="warning" %} <mark style="color:red;">**Важно**</mark>: Пароль от почтового ящика можно изменить.
{% endhint %}

{% hint style="warning" %} <mark style="color:red;">**Важно**</mark>: Можно заходить под логином-паролем, например, на outlook или thunderbird и распоряжаться корреспонденцией вне Salebot.
{% endhint %}

<figure><img src="/files/wOlajj09YUWtvtlSN5nB" alt=""><figcaption></figcaption></figure>

Пример подключения на Rails:

```
ActionMailer::Base.smtp_settings = {
   address: 'mail.salebot.pro',
   port: 465,
   user_name: '2@rzyanny.online',
   password: '123Hello_world',
   domain: 'mail.salebot.pro',
   authentication: 'login',
   enable_starttls_auto: true
}
```

Если запрос не прошел проверку, у ящика будет статус “Запрос подключения SMTP отклонен”.

<figure><img src="/files/A5BOX1rpFrFzeRkoa5Wg" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Чтобы узнать причину отказа, обратитесь к тех. поддержке. Возможно, после уточнения данных, заявку одобрят.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/broadcasts/email/domain.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
