> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/vk/personalnye-i-servisnye-tokeny.md).

# Персональные и сервисные токены

## Персональный токен доступа

Для некоторых методов калькулятора для ВК может потребоваться токен пользователя. Для его получения перейдите [по ссылке](https://oauth.vk.com/authorize?client_id=51800984\&scope=215985366\&redirect_uri=https://oauth.vk.com/blank.html\&display=page\&response_type=token\&revoke=1).

Вам откроется страница для входа в официальное приложение Salebot в VK:

<div data-with-frame="true"><figure><img src="/files/iWZUhBnyRI5Gm30G30iE" alt="" width="563"><figcaption></figcaption></figure></div>

Чтобы получить токен, нажмите "Продолжить как...".&#x20;

После чего вас перенесет на страницу с токеном:

<div data-with-frame="true"><figure><img src="/files/K97ZvGnXDmlIPMBJMhbJ" alt=""><figcaption></figcaption></figure></div>

После этого для удобства скопируйте все из адресной строки в любой текстовый редактор, она будет иметь такой вид: <https://oauth.vk.com/blank.html#access\\_token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\\&expires\\_in=0\\&user\\_id=xxxxxxx\\&email=xxxxxxxxxxxxxxxx&#x20>;

<div data-with-frame="true"><figure><img src="/files/4tihobpU0pwqQFHcemBc" alt=""><figcaption></figcaption></figure></div>

Для извлечения токена найдите в ссылке ‘access\_token=’ и удалите все, что идет до знака равенства, затем найдите ‘\&expires\_in’ и оставьте только то, что идет до знака &. В итоге останется только токен.

{% hint style="warning" %}
Внимание! Персональный токен ни в коем случае нельзя передавать кому-либо, так как он может быть использован для получения полного доступа к странице, для которой он был получен.
{% endhint %}

Полученный токен можете сохранить в любую удобную переменную и передавать ее в качестве параметра. Все действия, совершенные с помощью этого токена, будут отмечены как совершенные Вами (отправка в бан, принятие в группу).

### Функция для проверки пользователя онлайн (VK) vk\_check\_user\_online(token)

<table><thead><tr><th width="217">Параметры функции</th><th>Значение параметра</th><th>Ответы</th></tr></thead><tbody><tr><td><strong>token</strong></td><td>индивидуальный <strong>access_token</strong> пользователя</td><td><p><strong>True</strong> — в сети</p><p><strong>False</strong> — не в сети</p></td></tr></tbody></table>

## Сервисный токен VK Vision

Vision | Технологии компьютерного зрения от VK Cloud. Воспользуйтесь готовыми решениями для автоматизации анализа фото и видео

{% hint style="warning" %} <mark style="color:red;">**Внимание!**</mark> Услуга платная.
{% endhint %}

1. Зарегистрироваться на сайте <https://mcs.mail.ru/app/auth>
2. Войдите в раздел AI API (Машинное обучение) ->Vision Компьютерное зрение&#x20;

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeUuttW1240Cn_ZgSgzXIwljfmwCndacVwEWOuCKgDojDwfPCb_D2WKfVcy5Vh7iH2bA6kYpLXVpIfi0DJgvQCG_06w7DP9WvAztRJw-W5Gt-nNV1Debucgyh0f7eCGRdZ_IWjV4w?key=7gBYiIsUQfHzAEcQPztY1g" alt=""><figcaption></figcaption></figure>

3\. Добавьте доступ через Сервисные токены

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXfVq8HPTCz0tAMQVQ9Fahc2qOgSkn6H5N0EO_j60kTLU0ZjoLto3vtzIFXElZZKdl8OQB9U-NqRx5hyULXmrbQiTnNroQguOHnpnRXE_l2WC0SL2hlSBsw_6Q3LNWjd9BWDHeWo?key=7gBYiIsUQfHzAEcQPztY1g" alt=""><figcaption></figcaption></figure>

4\. Скопируйте полученный сервисный токен. Можете работать.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/vk/personalnye-i-servisnye-tokeny.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
