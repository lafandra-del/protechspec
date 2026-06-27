> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/online_courses/builder/notification.md).

# Уведомления и дожим

В конструкторе курсов Salebot существует возможность создавать уведомления для ваших клиентов по курсу:

<figure><img src="/files/qENnotRri7aivWn3sFbm" alt="" width="563"><figcaption></figcaption></figure>

Например, вы можете создать письмо приветствия для зарегистрированных учеников, а также создать письмо для дожима клиентов, как по колбеку (при подключенном whatsapp), так и с помощью email-бота.

## Письмо приветствия

С помощью письма приветствия вы сможете предоставить доступ к курсу ваших учеников. Для этого достаточно перейти во вкладку "Уведомления и дожим":

<figure><img src="/files/Sxyk69Li0zC2QH5x08g9" alt=""><figcaption></figcaption></figure>

### Письмо по умолчанию

Письмо приветствие уже заранее собрано разработчиками Salebot, где подставляются имя вашего ученика, который зарегистрировался на курс, название курса, а также кнопка для входа в личный кабинет:

<figure><img src="/files/9JUfQZbw6SuO67AKTMIk" alt=""><figcaption></figcaption></figure>

### Письмо с собственными настройками

В случае, если вы хотите поменять некоторые настройки в письме, то найдите чекбокс "Свое письмо приветствия":

<figure><img src="/files/0oPTF7o60psxcEOg9daZ" alt="" width="563"><figcaption></figcaption></figure>

Далее вам откроются настройки:

1. Для ввода текста письма:

<figure><img src="/files/DaoQ46bgstu5zJoaEp1c" alt=""><figcaption></figcaption></figure>

В данном случае вы можете задать собственную тему письма, например, придав ему больше креатива.

2. Для загрузки собственного логотипа:

<figure><img src="/files/fDba2PzHOIOWg3hf2otJ" alt=""><figcaption></figcaption></figure>

Логотип может быть загружен прямо с вашего устройства, а также вы можете указать URL-файла, который загружен в файловом хранилище в Salebot.

Чтобы загрузить логотип из файлового хранилища, перейдите в соответствующий раздел:

<figure><img src="/files/gDMcbaj2TqhyWxFoGQIp" alt="" width="443"><figcaption></figcaption></figure>

Далее загрузите необходимый файл изображения и скопируйте на него ссылку:

<figure><img src="/files/56vFePU3Mnn4Z8OxW7tb" alt=""><figcaption></figcaption></figure>

Вставьте URL в строке для загрузки логотипа:

<figure><img src="/files/rRu6xYWfIG2KTUbPJGcJ" alt=""><figcaption></figcaption></figure>

3. Текстовый редактор для заголовка письма:

<figure><img src="/files/ROHUScjZuLXTM6MN0msc" alt=""><figcaption></figcaption></figure>

4. Текстовый редактор для тела письма:

<figure><img src="/files/Wm2NxC5oZaxkWhxtYVOl" alt=""><figcaption></figcaption></figure>

5. Чекбокс для добавления кнопки для перехода на страницу курса:

<figure><img src="/files/pc9AWAEFQt9NU1XwdaWt" alt=""><figcaption></figcaption></figure>

## Дожим клиентов

<figure><img src="/files/CzpNicscnyiVRbBkf3MU" alt=""><figcaption></figcaption></figure>

Вы можете выбрать два варианта дожима: Callback и email-дожим.

Для отправки письма вам нужно иметь авторизованного email-бота и еmail-шаблон, одобренный модератором.

После этого, вы можете выбрать: промежуток времени для отправки, список или метки для клиента после получения дожима и email-шаблон, который будет использоваться.

Для callback дожима, вам достаточно иметь авторизованного Whatsapp бота или email-бота,  для которого вы сможете выбрать: бота для клиента, созданного после ввода данных, промежуток времени для отправки, список или метки для клиента после дожима.&#x20;

<figure><img src="/files/pWnhkVwwst1P0gi1kODl" alt=""><figcaption></figcaption></figure>

а


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/online_courses/builder/notification.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
