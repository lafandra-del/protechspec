> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/broadcasts/email/connecting.md).

# Подключение email-бота

Для того чтобы можно было сделать email-рассылки, необходимо сначала подключить Email-бота в разделе Каналы - “Email”.

Далее необходимо ввести email, с которого будет осуществляться отправка, и имя отправителя, которое будет показываться получателю.

![](/files/3j5WrTYiOJhpCzwysRr8)

После этого в списке подключенных каналов появится новый Email-бот, но он будет не авторизован.

{% hint style="warning" %} <mark style="color:red;">**Важно**</mark><mark style="color:red;">:</mark> бесплатные домены использовать нельзя!&#x20;

Бесплатные почтовые сервисы gmail/yandex/mail.ru и др. имеют свою политику DMARC, согласно которой блокируют рассылки и сервисы, осуществляющие такие рассылки.

Для рассылок подходит почтовый ящик на своем или корпоративном доменах.

Используйте домены с именем на латинице! Например: cakeschool@мойдомен.рф
{% endhint %}

{% hint style="warning" %} <mark style="color:red;">**Важно:**</mark> Если у вас есть свой домен, но нет на нем почтового ящика, его можно создать на нашем сервисе в разделе “[Домены](#privyazka-domena-i-sozdanie-pochtovykh-yashikov)”.\
Если почтовый ящик создан на нашей платформе, подтверждающий код, не потребуется.
{% endhint %}

{% hint style="warning" %} <mark style="color:red;">Важно:</mark> <mark style="color:purple;">Только владелец домена</mark> может создать email-бот со своим доменом без подтверждения.&#x20;
{% endhint %}

Для авторизации нам необходимо подтвердить, что почта ваша. На указанный email будет отправлено письмо с кодом подтверждения.

![](/files/YHrfE7C2oPphkY4THd9Y)

Авторизованный email-бот имеет следующий вид:

![](/files/2B7qCBwNohMm0kjgZWlf)

После подключения email-бота в разделе 'Рассылки' станет доступна новая вкладка:

![](/files/RhOzWp5PImFXA44m3pan)


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/broadcasts/email/connecting.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
