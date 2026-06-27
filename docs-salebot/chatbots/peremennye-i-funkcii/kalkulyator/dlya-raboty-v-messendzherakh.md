> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-v-messendzherakh.md).

# Для работы в мессенджерах

{% hint style="danger" %}
**\*Facebook, Instagram, Whatsapp принадлежат Meta, деятельность котороый признана экстремистской и запрещена в РФ!**
{% endhint %}

## Для проверки подписки в Инстаграм\*&#x20;

**check\_insta\_subscription()**

{% tabs %}
{% tab title="Описание" %} <mark style="background-color:blue;">**Для проверки подписки на**</mark> [<mark style="background-color:blue;">**Instagram**</mark>](#user-content-fn-1)[^1]<mark style="color:red;background-color:blue;">**\***</mark><mark style="background-color:blue;">**-аккаунт**</mark>

**check\_insta\_subscription()**

Параметры: Без параметров

Функция возвращает логическое True, если пользователь подписан на аккаунт, False - . не подписан.
{% endtab %}

{% tab title="Примеры" %}

<figure><img src="/files/oeL5YSB77nbpsyWzSfiN" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
r=check_insta_subscription()
```

{% endtab %}
{% endtabs %}

## Для работы с Whatsapp\*&#x20;

**check\_whatsapp() | get\_whatsapp\_bot\_id\_by\_phone()**

{% tabs %}
{% tab title="Описание" %}
{% hint style="warning" %}
Функции работают, если к проекту подключен Whatsapp-бот
{% endhint %}

<mark style="background-color:blue;">**Для проверки, есть ли Whatsapp на номере телефона**</mark>

**check\_whatsapp(phone\_number) -** метод для проверки, подключен ли на данный номер Whatsapp

Параметры:

**phone\_number** - номер телефона в формате 79999999999 или 89999999999

Функция возвращает логическое True - номер зарегистрирован в Whatsapp, False - номер не зарегистрирован

<mark style="background-color:blue;">**Для получения Whatsapp bot\_id по номеру телефона**</mark>

**get\_whatsapp\_bot\_id\_by\_phone(bot\_phone)** - функция для поиска whatsapp bot\_id по номеру телефона
{% endtab %}

{% tab title="Примеры" %}
Проверим есть подключенный Whatsapp к номеру телефона:

<figure><img src="/files/j3mkmKXW2q3LopdtPzii" alt=""><figcaption><p>Пример применения функции check_whatsapp()</p></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
rs=check_whatsapp(79999999999)
```

{% endtab %}
{% endtabs %}

## Для удаления последнего сообщения

**last\_message\_id() | remove\_last\_message()**&#x20;

{% tabs %}
{% tab title="Описание" %}
**last\_message\_id()**- для получения номера последнего сообщения от бота

{% hint style="info" %}
Если были отправлены картинка и текст, номера сообщений разделены символом подчеркивания
{% endhint %}

{% hint style="warning" %}
Для корректного получения номера последнего сообщения от бота, нужно чтобы сообщение было сохранено в переписке с клиентом.&#x20;

То есть в блоке воронки было должно быть включено сохранение в историю, если отправлено через воронку, или при отправке рассылки было включено "сохранять сообщение в историю переписки"
{% endhint %}

**remove\_last\_message()** – для удаления последнего сообщения от бота

{% hint style="danger" %}
Работает <mark style="color:red;">только</mark> в MAX, Telegram и Вконтакте.&#x20;
{% endhint %}

Если вы включали переключатель "сохранить в истории переписки", то для ТГ/ВК можно удалить последнее сообщение через рассылку из блока, где в калькуляторе прописать remove\_last\_message(). Функция удаляет последнее отправленное ботом сообщение, но только если оно есть в истории переписки.

Пример:

Создаем блок для рассылки:

<figure><img src="/files/cf7z5lTUfgudj1U5BhKQ" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Настройте рассылку по своему усмотрению и перейдите во вкладку "Отправка"
{% endhint %}

Во вкладке отправка активируйте чекбокс "Сохранять рассылку в истории переписки с клиентом":

<figure><img src="/files/uEt7FLHDNoHqR79dJhnG" alt=""><figcaption></figcaption></figure>

Важно! Чтобы чекбокс "Сохранить рассылку в истории переписки клиентом" отображался во вкладке "Отправка", отключите в разделе каналы прочитанность сообщений для групп вконтакте:

<figure><img src="/files/gFl2ijloo4eIcEdpXYDK" alt=""><figcaption></figcaption></figure>

Далее смело отправляйте рассылку.&#x20;

Если вдруг вы хотите удалить последнее сообщение (например, сообщение с ошибкой), то удалить последнее сообщение можно одним блоком с функцией remove\_last\_message()

<figure><img src="/files/ydG5bawTJvymXOe9TFfR" alt=""><figcaption></figcaption></figure>

Далее отправляйте рассылку с функцией удаления последнего сообщения.

{% hint style="warning" %}
ВАЖНО! Спустя время последнее сообщение удалить нельзя!
{% endhint %}
{% endtab %}

{% tab title="Примеры" %}

<figure><img src="/files/1OSloUIiQnFGRnDc9BDj" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
soob = last_message_id()
status = remove_last_message()
```

{% endtab %}
{% endtabs %}

## Для приостановки работы бота

pause\_bot(minutes)

{% tabs %}
{% tab title="Описание" %}
pause\_bot(minutes) - приостанавливает действие бота на указанное количество минут.

minutes - число, обязательный параметр. Передавать можно как целое число, так и с точкой

Функция работает аналогично нажатию на кнопку "пауза" в диалоге с клиентом, только мы передаем сами на какое время останавливаем бота. При успешном выполнении возвращает True
{% endtab %}
{% endtabs %}

## Удаление запланированных сообщений

delete\_pended\_messages\_from\_list(message\_id\_list, with\_not\_delete)

{% tabs %}
{% tab title="Описание" %}
delete\_pended\_messages\_from\_list(message\_id\_list, with\_not\_delete)

Функция поможет удалить необходимые сообщения из запланированных.&#x20;

<mark style="color:red;">!</mark> message\_id\_list - обязательный параметр, передается список блоков, сообщения из которых из запланированных необходимо удалить;

with\_not\_delete - необязательный параметр; удалит сообщения с пометкой "Не удалять". В параметре можно передать любое значение

Возвращаемое значение в виде "<mark style="color:red;">**wrong message\_id\_list**</mark>" отображается в том случае, если message\_id\_list не передан или передан не массив

Как передать параметры:

<figure><img src="/files/zrY21OuvgXvmn5VDnTMx" alt=""><figcaption></figcaption></figure>

Где взять обязательный параметр:

<figure><img src="/files/BcuXas3Re54QEkWJgnfn" alt=""><figcaption></figcaption></figure>
{% endtab %}
{% endtabs %}

## Проверка статуса оператора

check\_operator\_status(email, with\_pause)

{% tabs %}
{% tab title="Описание" %}
check\_operator\_status(email, with\_pause) - проверяет, на смене ли оператор. Возвращает True, если оператор на смене, False - если нет.

<mark style="color:red;">**!**</mark> email - обязательный параметр, email сотрудника

with\_pause - необязательный параметр, значения - 1 или 0. Если указать 1, функция вернет положительный ответ, если статус сотрудника  "На смене" или "Перерыв". Если указать 0, то положительный ответ будет, только если статус сотрудника "На смене". По умолчанию 1
{% endtab %}
{% endtabs %}

[^1]: **На территории Российской Федерации&#x20;**<mark style="color:red;">**запрещена деятельность**</mark>**&#x20;социальных сетей&#x20;**<mark style="color:red;">**Facebook**</mark>**&#x20;и&#x20;**<mark style="color:red;">**Instagram**</mark>**, принадлежащих компании Meta Platforms Inc**., признанные экстремистскими!


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-v-messendzherakh.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
