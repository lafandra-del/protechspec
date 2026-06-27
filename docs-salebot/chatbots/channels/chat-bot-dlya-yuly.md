> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/chat-bot-dlya-yuly.md).

# Чат-бот для Юлы

## Как подключить бота к Юле

{% hint style="warning" %}
**Доступ к апи можно получить только на бизнес-аккаунте.**
{% endhint %}

![](https://lh3.googleusercontent.com/m3gonxCH_NwLgx1o9rNzst_zFga8_iy3a-7LMd-oGVrLuUzcvYz73vChhtitZjAoD9-QrsfIh4DIb11tsV76rctbTlU2X2Se4qZKdUWCNiihmO2DO4NPgUtV7AtOKKPLqLRK5nxy)

![](https://lh6.googleusercontent.com/6XAi4YrCpFtojkijdgIIpW3wYVxnot5m7XqvWemaezPkkRZxQLzYyF-Q69ldXVzLKxyu9SV7JAUEtgnlu3FPZ4j0drvUw1VZeQeCg80BqMAgk8w1Kcx8aTYVPmedB3xsnyvLc7jG)

Для подключения salebot к чату Юлы, нужно получить у менеджера в Юле токен для доступа к апи, а также попросить установить вебхук на адрес:

**<https://chatter.salebot.pro/youla\\_webhook>**

Далее переходим в свой аккаунт на Юле и в адресной строке идентификатор (все что находится после последнего слеша “/”).

{% hint style="warning" %}
Будьте внимательны именно профиля, не магазина!
{% endhint %}

![](https://lh5.googleusercontent.com/AcVfbJqdFtvSGlvlEOHHw91a_-di0PB_xCDI_4RAHSis8rEEX1pVwW84kgppg1zcyMa2CICB1zwLlBndqKfgvaAPrX3R4LFYGF46hvsOuufUhU-YmlGRW21FcDkf948EmyuM6IoP)

{% hint style="success" %}
Эту строку вы введете в поле ID аккаунта(seller\_id) при подключении к salebot
{% endhint %}

После того как все данные готовы зайдите в ваш проект на salebot.pro в раздел “Мессенджеры и чаты” и выберите Юла.

![](https://lh5.googleusercontent.com/QJSzpqiA4xBZWzptew6BxoaXTU8rDjnRaZOO7c2rDeW27436O6XKC0e5ZsUC0GA9vn2OXggMMTH68ZEZxVL7TQR7N9N2NrASQvKVML3gCvhZKWBybiNnvCO3FSXU6zRP6v2GG1w1)

![](https://lh3.googleusercontent.com/Jekk-6Y2Zydj3v3seZAypuRF29MroydaLa45R8XicSWr73HZoyxvy38A0j0mFV1V4GWqgH8SC3gltgV5LtLwg1atslmXus-niLYaTFDo1Fc2UwH6dsZmj5gZhqTFqYGH-1a6JuZA)

Название - укажите уникальное название вашему боту (отображается в списке подключенных ботов для Юлы)

В поле Токен вставляем выданный вам менеджером токен и в последнее поле вставляем скопированный с адресной строки идентификатор вашего профиля.<br>

После нажатия кнопки Готово подключение Юлы завершено.

## Пример

![](/files/By3hI92ZoAzS9u4ooUKJ)

Вот как это выглядит в Юле

![](https://lh5.googleusercontent.com/UJJY_DSmE6iYZXnxG_yR2MbyHsXBMtoIua2U4YB_tiIWZBS96FRAHTCkbj5vArXIlz3cdnftNFbFaByP2PdohY5QMzPJ-LeHYSkyFhr1UAHnUThtQ9XbWYB3ltsO6e25UGPV9jWJ)

После первого сообщения, у клиента в salebot появятся следующие переменные:\
**youla\_profile** - ссылка на профиль пользователя\
**youla\_order\_id** - идентификатор объявления\
**youla\_order\_url** - ссылка на объявление\
**youla\_order\_title** - заголовок объявления\
**youla\_order\_price** - цена товара/услуги\
**youla\_order\_description** - описание товара/услуги

## **Какие есть ограничения**

{% hint style="info" %}
Сообщения, отправленные вами из интерфейса Юлы, не будут отображаются в переписке с клиентом в salebot.&#x20;
{% endhint %}

{% hint style="info" %}
Кроме текста и emoji, поддерживаются только изображения (если из salebot отправить другой файл (видео, аудио и тд), он отправится ссылкой).
{% endhint %}

{% hint style="info" %}
Информацию о написавшем клиенте по апи Юлы не получить.
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/chat-bot-dlya-yuly.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
