> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/inye-servisy/yandex-forms.md).

# Yandex Forms

Создайте форму в Yandex Forms с вашими вопросами <https://forms.yandex.ru/> и далее следуйте инструкции ниже.

{% hint style="warning" %}
Обращаем внимание!

Инструкция устарела.

[Для создания опросов и сбора заявок используйте лендинг "Квиз".](/websites/builder/kviz.md)
{% endhint %}

## Настройка Yandex

{% hint style="danger" %}
**Обязательно!** Необходимо настроить предзаполнение скрытого поля с идентификатором клиента.
{% endhint %}

Скрытые поля формы можно использовать для автоматической передачи в форму служебных или вспомогательных параметров. Это позволяет добавить к ответам пользователей дополнительную информацию для анализа и сбора статистики.

В нашем случае нужно обязательно добавить поле sb\_id - в нем будет записан идентификатор пользователя в Salebot, чтобы после отправки формы данные отправлялись клиенту.

Чтобы настроить скрытый параметр, добавьте на форму вопрос типа *Короткий текст* с названием sb\_id.

<figure><img src="/files/eDRgpoTdKDYDtwImLJZb" alt=""><figcaption></figcaption></figure>

Для этого вопроса включите опцию Скрытый вопрос.

В поле Идентификатор вопроса укажите sb\_id — это будет название GET-параметра.<br>

<figure><img src="/files/xY3ZMW451hT36M8wCToQ" alt=""><figcaption></figcaption></figure>

Получите ссылку на форму и добавьте в конец URL-адреса GET-параметр ?sb\_id=#{client\_id}

> Пример ссылки на форму с GET-параметром:
>
> <https://forms.yandex.ru/u/6191b18d99e21b1b45b9c82?sb\\_id=#{client\\_id}>

Далее отправьте эту ссылку клиенту из бота.&#x20;

При переходе по ссылке в скрытое поле sb\_id автоматически будет подставляться значение из переменной #{client\_id}.

<mark style="color:red;">**sb\_id - это обязательное поле,**</mark> но вы таким же образом можете передавать и свои данные, например, utm\_source (предварительно добавив это поле в форму, как и sb\_id).

> *Пример ссылки с передачей данных с помощью поля в форме:* <https://forms.yandex.ru/u/6191b18d99e21b1b45b9c82?sb\\_id=#{client\\_id}\\&utm\\_source=telegram>

## Отправить свой колбек после заполнения формы

По умолчанию после отправки формы клиенту придет колбэк **yandex\_form\_received**.&#x20;

<figure><img src="/files/T8Or4l6M8nMjpzJXrlE1" alt=""><figcaption></figcaption></figure>

Как настроить колбек со своим текстом, читайте далее.\
Для этого нужно создать еще одно скрытое поле с названием **callback\_text**, все делаете аналогично как и sb\_id.

<figure><img src="/files/ipaKV4566CmlOdRaPikQ" alt=""><figcaption></figcaption></figure>

Есть 2 варианта использования этого поля\
\
Замените **стандартный колбек yandex\_form\_received для формы на ваш**, для этого нужно указать *Значение по умолчанию* и не передавать параметр в ссылке (галочка *Скрытый вопрос* - установлена ), иначе он будет взят из ссылки.

<figure><img src="/files/xJRb4PODTRxa0fuhMwwJ" alt=""><figcaption></figcaption></figure>

**Для отправки уникального колбека** передавайте **callback\_text** в ссылке со своим значением так же, как и sb\_id, пример:\
<https://forms.yandex.ru/u/6191b18d99e21b1b45b9c82?sb\\_id=#{client\\_id}\\&callback\\_text=test>

## Настройка вебхука

{% hint style="warning" %} <mark style="color:red;">**Обязательно!**</mark> Настройка вебхука должна производиться только после заполнения формы.
{% endhint %}

На странице нужной формы, перейдите во вкладку **Интеграции**

<figure><img src="/files/Aqgo2cx8FyWAEZSrwvJO" alt=""><figcaption></figcaption></figure>

Далее внизу выбираем API -> Запрос JSON-RPC POST

<figure><img src="/files/lQ9Z2El1m57fz9TBiSRh" alt=""><figcaption></figcaption></figure>

<mark style="color:red;">**В поле URL**</mark> <mark style="color:red;">**указываем**</mark> ссылку \*\*<https://chatter.salebot.pro/yandex\\_form/API\\_KEY**\\>
где **API\_KEY** - апи-ключ из настроек проекта в SaleBot&#x20;

> Пример ссылки: <https://chatter.salebot.pro/yandex\\_form/43ad8d427073ea93377544cc4a408f89>

В параметрах указываем **sb\_id** и значение выбираем *Ответ на вопрос*, указываем **sb\_id**

<figure><img src="/files/YDzAEqYtOiBApIM01pOT" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/ow3GhA2yjYFjjfWlzQ5A" alt=""><figcaption></figcaption></figure>

Для **callback\_text** делаем тоже самое.

Так же можно добавить другие параметры, которые будут записаны **в отдельные переменные клиента** в SaleBot с указанными названиями. Например:

<figure><img src="/files/eLVAQYTmhenCB1s45PrB" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Будьте внимательны с названиями, чтобы не перетереть уже существующие переменные у клиента!
{% endhint %}

Чтоб сохранить все ответы в одну переменную, можно выбрать пункт *Ответы на вопросы* и выбрать все или, те, которые нужны, а также указать формат JSON, чтоб с ними легче было работать:

<figure><img src="/files/B3oVGWoSGNSB1kHZgo1E" alt=""><figcaption></figcaption></figure>

В итоге должна получиться такая настройка (параметры могут отличаться, если добавлены дополнительные):

<figure><img src="/files/2GIr2ZZGu40qDrhIJv7Y" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Все переменные из формы будут записаны в переменные клиента Salebot.&#x20;
{% endhint %}

Сохраняем изменения. На этом настройка завершена.

*Пример значения переменной answers в диалоге клиента Salebot.*&#x20;

В настройках  формы в эту переменную мы объединили ответы на все вопросы формы в формате Json&#x20;

<figure><img src="/files/QCkCkWSQd3Hv8T46BIZn" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Для каждого вопроса формы можно указать отдельную переменную в настройках вебхука формы.
{% endhint %}

### Выдать ссылку на форму в боте:

Пример 1

<figure><img src="/files/VoN3mhkO0r8BCOw02VHE" alt=""><figcaption></figcaption></figure>

Пример 2

<figure><img src="/files/2BHCMCwwVTob7gWdj47r" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/inye-servisy/yandex-forms.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
