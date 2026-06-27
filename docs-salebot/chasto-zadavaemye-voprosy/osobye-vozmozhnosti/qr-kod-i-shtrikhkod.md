> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/qr-kod-i-shtrikhkod.md).

# QR-код и штрихкод

## Генерация QR-кода

Для генерации QR-кода необходимо воспользоваться функцией с адресом <https://store.salebot.pro/function/qrcode_generator>

**Параметры:**&#x20;

**text\_for\_qr** - текст который нужно закодировать.&#x20;

**api\_key** - ключ API из настроек проекта

![Генерация ключа доступа в настройках проекта](/files/9lQS4eBqWACipTPArE13)

{% hint style="info" %}
Замените #{api\_key} на токен из настроек проекта.
{% endhint %}

Пример:&#x20;

В поле "URL запроса" пишем <https://store.salebot.pro/function/qrcode_generator>

В поле JSON параметры пишем:

*{"text\_for\_qr":"Текст для кодирования","api\_key":"c16ac0f344480f24541dd78f350297f471b5e25bd15e"}*

В поле "Сохраняемые значения" пишем те переменные, которые хотим сохранить (нужный нам URL будет в *qr\_image\_url*):

*status->status;*&#x20;

*qr\_image\_url->qr\_image\_url*

<figure><img src="/files/zSv3OPlQ3CoaFW14ZqMN" alt="" width="563"><figcaption></figcaption></figure>

Ответ: функция возвращает json с параметрами *status* и *qr\_image\_url*

![Содержимое qr\_image\_url](/files/7qDarzW3hPHMgtebdrIh)

![Полученный QR код](/files/yKcERIABokH84uzyxclB)

## Генерация штрихкода

Чтобы сгенерировать штрихкод, необходимо воспользоваться функцией с адресом\
<https://store.salebot.pro/function/barcode_generator>

**Параметры:** \
\&#xNAN;***text*** - текст который нужно закодировать. \
\
\&#xNAN;***api\_key*** - ключ апи из настроек проекта.

![Генерация ключа API ](/files/-Mgl8RQ9eLmU4v33kovt)

***class*** - класс кода, который необходимо сгенерировать. По умолчанию ea13. Может принимать значения *'code39', 'code128', 'ean', 'ean13', 'ean8', 'gs1', 'gtin', 'isbn', 'isbn10', 'isbn13', 'issn', 'jan', 'pzn', 'upc', 'upca'*

***without\_text*** - необязательный параметр, если его передать с любым значением, на картинке штрихкод будет отображаться без текста или как на картинке ниже

![](/files/ELljP9aT5fvRyJXx0Kp1)

{% hint style="info" %}
Замените #{api\_key} на токен из настроек проекта.
{% endhint %}

&#x20;Пример: *{"text":"#{barcode}","api\_key":"#{api\_key}", "class": "ean13"}*

Ответ: функция возвращает json с параметрами *status* и *image\_url* в случае успеха и *error\_message* в случае неудачи.

![Пример запроса с текстом](/files/JePaZp8T7P28F0tebzIa)

В примере в переменной barcode лежит текст для кодирования и переменная image\_url сразу отправляется в сообщении как картинка.

<img src="/files/ZLkaqx0GFgteR0OYcRst" alt="Пример запроса без текста" width="563">

## Распознавание на фотографии

Вы можете использовать ее для создания бота, который сканирует коды товаров. Полезной особенностью является то, что она также может сканировать QR-коды.

#### Функция для распознавания штрихкода на фотографии.

Адрес функции: [https://store.salebot.pro/function/cv2barcode](https://vk.com/away.php?to=https%3A%2F%2Fstore.salebot.pro%2Ffunction%2Fcv2barcode\&cc_key=)

Для сканирования фото вам необходимо отправить из блока следующие параметры:

{"photo":"ссылка на штрихкод/qr код или переменная со ссылкой","api\_key":"апи ключ из настроек проекта"}

Например, для отправки на сканирование фото, отправленного боту, нужно отправить следующие параметры:

<figure><img src="/files/ly8thJUS7nDypiaCa1LL" alt="" width="317"><figcaption></figcaption></figure>

В стрелке -> в поле "Пользователь вводит данные" укажите название переменной attachments.

<figure><img src="/files/VQVC0G83fG9bY3iu40IL" alt="" width="464"><figcaption></figcaption></figure>

`Пример кода:`

`{"photo":"#{attachments}","api_key":"eec62fb64bc0107a930ad3c60773b743b0bffa758981"}`

Где **photo** это ссылка на фотографию штрихкода, в нашем случае это переменная содержащая ссылку на фото отправленное боту.&#x20;

Следующий параметр **api\_key** это ключ, который можно сгенерировать в настройках вашего проекта.

Функция работает следующим образом. Клиент отправляет боту фото штрихкода, функция пробует его распознать и в случае успеха присылает штрихкод в виде числа и статус операции равен ok:&#x20;

barcode -> "4500000000567"\
status -> "ok"

Статус сканирования бывает следующим:

1. ok - штрихкод распознан
2. barcode not recognized - штрихкод не распознан
3. Error image reading - ошибка чтения файла
4. Error subscription - для вашей подписки не доступен данный функционал<br>

Переменную status можно поставить в виде условия на стрелку и отправлять пользователя в соответствующий блок.

Например, если на стрелке условие перехода переменная “status” и значение “barcode not recognized”, тогда выводим сообщение “Код не распознан, повторите попытку” и отправляем на повторный запрос фото.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/qr-kod-i-shtrikhkod.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
