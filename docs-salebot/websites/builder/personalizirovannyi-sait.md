> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/personalizirovannyi-sait.md).

# Персонализированный сайт

Создать сайт с персональным обращением или аватаркой и баллами из бота Telegram - легко! Провести опросы на красиво оформленных страницах сайта и вернуть клиента в бота - также легко!

{% hint style="info" %}
Функции **`quiz_link()/quiz_link_timeout()/quiz_link_date() работают только для Telegram!`**
{% endhint %}

Если вы формируете ссылку на страницу сайта с помощью этих функций, то на странице можно вывести значение любых переменных клиента.

Создайте страницу в разделе “Сайты”. Дальше номер страницы сайта будет использоваться в функции.

Для того, чтобы подключить возможность отображения квиза в телеграмме, необходимо:&#x20;

1\. Скопировать id страницы сайта. Для этого перейдите в раздел "Сайты", выберите нужный сайт:

<figure><img src="/files/7vj3lOkf58iy8zZvS0by" alt=""><figcaption><p>Раздел "Сайты"</p></figcaption></figure>

Наведите на страницу сайта и скопируйте id:

<figure><img src="/files/8EkRjtbVeZDRrm1DXTI9" alt=""><figcaption><p>Страницы сайта</p></figcaption></figure>

&#x20;Далее по тексту mini\_landing\_page\_id

2\. В поле калькулятор используем одну из функций:

<mark style="color:red;">**ОБОЗНАЧЕНИЯ:**</mark>

<mark style="color:red;">**!**</mark> - Обязательные параметры

{% tabs %}
{% tab title="Параметры" %}
**quiz\_link\_timeout(mini\_landing\_page\_id, minutes)  -** создает ссылку с ограничением  срока жизни ссылки в минутах

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;mini\_landing\_page\_id** - идентификатор страницы сайта\
**minutes -** минуты жизни ссылки, тип число

**quiz\_link\_date(mini\_landing\_page\_id, date, time) -** создает ссылку с ограничением  срока жизни ссылки до конкретного дня и часа

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;mini\_landing\_page\_id** - идентификатор страницы сайта\
**date** - дата действия ссылки, формат: дд.мм.гггг\
**time** - время действия ссылки, формат: чч:мм

&#x20;**quiz\_link(mini\_landing\_page\_id)** - создает ссылку без ограничения  срока жизни ссылки

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;mini\_landing\_page\_id** - идентификатор страницы сайта
{% endtab %}
{% endtabs %}

<figure><img src="/files/Q1Cgzoe8ck5GkOn25YJM" alt=""><figcaption></figcaption></figure>

3\. Создать кнопку **Telegram Web Application** и указать в фигурных скобках с решеткой название переменной

<figure><img src="/files/8SSliPcwi8bJjXDgTzsp" alt=""><figcaption><p>Настройки кнопки</p></figcaption></figure>

<mark style="color:red;">**Важно!**</mark> Проверьте, чтобы значение переменной правильно записалось в расширенные настройки:

<figure><img src="/files/ZsBJrbwfHxxaKe0aVUmI" alt=""><figcaption><p>Расширенные настройки кнопки</p></figcaption></figure>

Если вы используете quiz\_link\_timeout для перехода клиента на страницу сайта, то вы можете пользоваться переменными клиента внутри описания и заголовка. Например, если у клиента есть переменная name со значением "Богдан" и в описании страницы сайта вы напишите "Привет #{name}, как твои дела ?", то вывод будет "Привет, Богдан, как твои дела ?". Однако, если такая переменная будет отсутствовать у клиента, то переменная будет взята из общих переменных проекта.

{% hint style="warning" %}
**Внимание!** Будьте внимательны с использованием ссылок без срока жизни: Если ссылка будет отправлена кому-то еще и этот кто-то пройдет опрос, то результаты будут записаны клиенту, для которого была создана данная ссылка.
{% endhint %}

{% embed url="<https://youtu.be/8zQn9wNzJ0U>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/personalizirovannyi-sait.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
