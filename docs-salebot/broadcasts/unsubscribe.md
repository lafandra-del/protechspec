> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/broadcasts/unsubscribe.md).

# Отписка клиента от бота

## Как полностью отписать от сообщений

Например, в Whatsapp отсутствует возможность запретить сообщения, и, чтобы пользователь не нажал кнопку "СПАМ", вам необходимо по его требованию останавливать рассылки.

Во всех других мессенджерах есть системная возможность: ниже приведен пример кнопки отписки во ВКонтакте:

<figure><img src="/files/OxpdwlLS58BWGKvNFomj" alt="" width="563"><figcaption></figcaption></figure>

Если *<mark style="color:green;">пользователь ВКонтакте</mark>* нажал на эту кнопку, то он отписался от всех сообщений и бот не сможет отправить сообщений. \
\
В диалог с клиентом придет уведомление об отписке, а во вкладке "О клиенте" появится отметка, что клиент отказался от сообщений бота (отписался): сообщение с крестиком.

<figure><img src="/files/mVPVmsTRhMQhufzSbsEb" alt="" width="375"><figcaption></figcaption></figure>

Если у клиента есть отметка об отписке, то сообщения пользователю не дойдут.

<figure><img src="/files/mI0sbtDyz7vaJ1o1oIDf" alt=""><figcaption><p>Сообщение не отправлено, клиент запретил отправку сообщений сообщества ВКонтакте</p></figcaption></figure>

{% hint style="info" %}
Помните!&#x20;

Не все мессенджеры присылают уведомления о том, что клиент отписался от сообщений.&#x20;
{% endhint %}

### Как отписаться вручную

В боте можно настроить возможность для клиента отписаться от сообщений. \
Рассмотрим на примере мессенджера Whatsapp.

Создаём блок с условием в зависимости от логики вашей воронки. Блок "*Первостепенной проверки условия"* имеет наивысший приоритет срабатывания.

<figure><img src="/files/ZUwcz6KxYunPgIZqsNJa" alt=""><figcaption></figcaption></figure>

В поле "*Условие"* перечисляем через точку с запятой все вариант слов, которые могут написать пользователи для того, чтобы отписаться от сообщений бота. В этом блоке также повторно спросим клиента, действительно ли он хочет отписаться, и создадим две кнопки "да" и "нет".&#x20;

При попадании в блок Первостепенной проверки условия, клиенту нужно будет кликнуть по одной из кнопок, а названия кнопок пропишем в условиях стрелки:

<figure><img src="/files/n4BbsON62ETUWKaz7b0J" alt=""><figcaption></figcaption></figure>

В следующем блоке, стрелка в который ведет по условию "Да, удалите из базы", прописываем сообщение, что клиент успешно отписался:

<figure><img src="/files/fdSVenggcmGHCmaX31eE" alt=""><figcaption></figcaption></figure>

Далее из блока с сообщением об успешной отписке создаем блок ниже, в котором будет заложена функция для отписки:

`unsubscribe()`

{% hint style="danger" %}
Обратите внимание!&#x20;

Внутри блока сначала обрабатываются действия в Калькуляторе, и после этого отправляется текст сообщения.

Если указать в одном блоке текст отписки и функцию отписки, клиент НЕ получит сообщение из данного блока - оно уже не будет доставлено пользователю.&#x20;
{% endhint %}

<figure><img src="/files/SAYletYZSw1gbwWpXuRx" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
**Важно!**&#x20;

Клиент подпишется на сообщения вновь, если отправит любое сообщение боту, до этого момента ни одно сообщение ему не будет отправлено.
{% endhint %}

## Как частично отписать от рассылок

Для частичной отписки вам необходимо присваивать переменные и проверять их значение перед отправкой.&#x20;

{% hint style="info" %}
Присваиваем переменные в блоке в поле Калькулятор. \
Также можно вручную в диалоге с клиентом во вкладке "О клиенте" создать переменную клиента, по которой далее будете исключать из рассылок.
{% endhint %}

Например, если пользователю присвоена переменная `рассылать_утром` со значением `нет`*,* то в настройки фильтра рассылки можно исключить пользователей по значению переменной:

<figure><img src="/files/COnmIRnBPTyy37TWFPkz" alt=""><figcaption><p>Настройка фильтра при создании рассылки, чтобы исключить по значению переменной</p></figcaption></figure>

Также в блоке или стрелке к блоку рассылки в поле Переменная для сравнения можно указать  `рассылать_утром == "нет"` *,* чтобы данному человеку сообщение пришло вечером. Условия можно комбинировать по разному.

*Пример использования поля "Переменная для сравнения" при планировании сообщений:*

<figure><img src="/files/ybybxjWwNVHivOeLcGnS" alt=""><figcaption></figcaption></figure>

Видим, что у клиента есть переменная `рассылать_утром` со значением "`нет"`.  И для него запланировалось сообщение на 20:00.&#x20;

<figure><img src="/files/mFLUyv2x1F0SvY8IPNAB" alt=""><figcaption></figcaption></figure>

## Как настроить реакцию на отписку

Часто необходимо произвести какие-либо действия в боте после отписки клиента. Например, передать информацию в аналитику, добавить или исключить из списков, добавить или удалить метки, выполнить запрос на сервер и прочее.\
\
Для таких целей можно настроить блок с условием, который будет реагировать на уведомление об отписке клиента. Данный колбэк (уведомление) приходит в диалог с клиентом после того, как клиент отписался от сообщений в мессенджере (например, "Запретить сообщения" в ВК, "Остановить и блокировать  бота"  в Telegram)

<figure><img src="/files/AHPAZ5QtJs4S0S8Pfve7" alt="" width="375"><figcaption><p>Колбек об отписке клиента</p></figcaption></figure>

В блоке в поле Условие укажем колбек `client_unsubscribed` и Выбор соответствия - Полное соответствие.

<figure><img src="/files/RhNKX8Ecjse3A2LqXIgW" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Действия и запросы настроенные в блоке выполнятся,  но сообщение НЕ БУДЕТ  отправлено клиенту, так как клиент уже отписался.
{% endhint %}

{% hint style="success" %}
Данный коллбэк работает в ВКонтакте, Viber, Telegram.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/broadcasts/unsubscribe.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
