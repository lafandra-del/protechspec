> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-generacii-qr-koda.md).

# Для генерации QR-кода

### Создать QR-код и ссылку на него&#x20;

qrcode\_generate(text) - создает изображение с qr кодом и возвращает ссылку на него.

text - текст который нужно закодировать.

### Создать изображение со штрихкодом

barcode\_generate(text, barcode\_class, without\_text) - создает изображение с штрихкодом и возвращает ссылку на него.

text - текст который нужно закодировать.

class - класс кода, который необходимо сгенерировать. По умолчанию ea13. Может принимать значения 'code39', 'code128', 'ean', 'ean13', 'ean8', 'gs1', 'gtin', 'isbn', 'isbn10', 'isbn13', 'issn', 'jan', 'pzn', 'upc', 'upca'

without\_text - необязательный параметр, если его передать с любым значением, на картинке штрихкод будет отображаться без текста

### Распознать штрихкод или QR

recognize\_code(url) - распознает штрихкод или qr-код и возвращает распознанный текст

url - ссылка на фотографию штрихкода или qr-кода

если распознавание прошло успешно, вернет распознанный текст. Ели возникла ошибка, вернет один из следующих результатов:

* code not recognized - штрихкод/qrcode не распознан
* Error image reading - ошибка чтения файла


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-generacii-qr-koda.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
