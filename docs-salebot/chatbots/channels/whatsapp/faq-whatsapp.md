> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/whatsapp/faq-whatsapp.md).

# FAQ Whatsapp\*

{% hint style="danger" %}
\*— принадлежит компании Meta Platforms Inc.,деятельность которой признана экстремистской в РФ и запрещена!
{% endhint %}

{% hint style="danger" %}
Мы не призываем Пользователей к использованию ресурса.

Помните!

1. Действия, связанные с приобретением товаров или услуг у запрещенной организации могут быть расценены как финансирование экстремистской деятельности, согласно ст. 282.3 УК РФ.
2. Также с 1 сентября 2025 запрещено распространять рекламу на информационных ресурсах тех организаций, деятельность которых запрещена в РФ (согласно ч. 3 ст. 12 ФЗ от 25 июля 2002 № 114-ФЗ).
   {% endhint %}

## Частые вопросы

### Почему я не вижу бота в Whatsapp\*

1. Проверьте, оплачен ли у вас тариф.
2. Нельзя одновременно использовать whatsapp\* web в браузере и боте. Бот работать не будет
3. Проверьте cтатус авторизации и подключение whatsapp\*. Зайдите на сайт salebot.pro в ""Мессенджеры и чаты"" - Whatsapp\*. Проверьте cтатус авторизации и подключение whatsapp.
4. Если написано ""Спящий режим"", отправьте команду ::bot\_info (боту или из бота).Если ответ пришел, значит бот работает. "

### Как протестировать бота в Whatsapp\*?

Напишите с другого номера на номер который подключили. Либо можно прислать с подключенного номера на любой другой кодовую фразу **::bot\_info**, по ней можно определить работает в данный момент бот штатно или нет. Должен прийти ответ, похожий на:

![](/files/-M7a5FTAvUyYSvNqzxW0)

### Если делать бота для Whatsapp\*, необязательно иметь Whatsapp Business\*?

Необязательно, для бота нет разницы обычный или Whatsapp Business\* у Вас подключен.

## Ошибки, возникающие при работе с мессенджером

### Ошибка отправки сообщения в Whatsapp\* (read timeout)

HTTPSConnectionPool(host='[whatsapp-new.salebot.pro](https://vk.com/away.php?utf=1\&to=http%3A%2F%2Fwhatsapp-new.salebot.pro)', port=443): Read timed out. (read timeout=17)

Эта ошибка возникает чаще всего, когда у вашего мобильного телефона медленное подключение к интернету или временно прервалось. Если вы отправляете файлы или ссылки, то скорость подключения должна быть еще выше.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/whatsapp/faq-whatsapp.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
