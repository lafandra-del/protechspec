> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/markdown.md).

# Форматирование текста сообщений

## Как форматировать текст в месседжерах

{% hint style="info" %}
Обращаем внимание!

При использовании разметки HTML некоторые расширения браузера и типы браузеров могут применять разметку и добавлять невидимые символы.
{% endhint %}

### Как форматировать в Telegram

Для разметки текста в нужном блоке под полем для ввода текста сообщения включите "Markdown в Telegram":

<div data-with-frame="true"><figure><img src="/files/idL8ATARXGDqOpksu5ka" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="danger" %}
Если в этом блоке встречаются символы из перечисленных: '\_', '\*', '\[', ']', '(', ')', '\~', '\`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!'  — их нужно экранировать, добавлять перед ними обратный слэш \\&#x20;

Иначе сообщение не отправится вообще. При этом не имеет значения, какой участок текста вы размечаете.

&#x20;Пример: привет\\. Рады \*тебя\* видеть\\!
{% endhint %}

Экранирование текста возможно как вручную, так и в калькуляторе при помощи функции

**txt = tg\_escape(s)**

На вход подается **s** - строка с исходным текстом.&#x20;

{% hint style="info" %}
Чтобы в переменную записать текст с переносами строк, укажите значение следующим образом:

`ваша_переменная = "Текст первой строки" + "\n" + "Текст второй строки" + "\n" +"Третья строка"`
{% endhint %}

На выходе в **txt** приходит строка уже с вставленными слешами в нужных местах.&#x20;

Пример:

<div data-with-frame="true"><figure><img src="/files/GojBFwYYfeU00XYVAXEc" alt=""><figcaption><p>Пример экранирования</p></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/35izYDfhHK3nOwvBJ80j" alt=""><figcaption><p>Как выглядит текст в Telegram</p></figcaption></figure></div>

![Как выглядит текст в других мессенджерах](/files/wws7TBQIVVhzp7a2jggW)

Далее размечаете нужный текст:

Чтобы сделать текст **жирным**, с обеих сторон ставите звездочки: \*тут текст\*

**Для курсива** — нижнее подчёркивание: \_текст\_

**Подчеркнутый текст** — два нижних подчеркивания с обеих сторон: \_\_текст\_\_

**Зачеркнутый текст** — тильда с обеих сторон текста: \~текст\~

**Ссылка в тексте**: \[текст в квадратных скобках]\(ссылка в круглых скобках) \
\[inline URL]\(<http://example.com/>)

**Упоминание пользователя ТГ**: \[текст в квадратных скобках]\(ссылка на пользователя в круглых скобках). В ссылке после знака равно можно использовать #{platform\_id} \
\[inline mention of a user]\(tg://user?id=123456789)

**Текст в виде кода** — с обеих сторон текста поставить обратный апостроф: \`inline fixed-width code\`

**Скрытый текст или spoiler** - с обеих сторон от текста используйте ||&#x20;

Пример:

<div data-with-frame="true"><figure><img src="/files/FbB4Aq8xKY86hdv4kdWF" alt=""><figcaption><p>Пример экранирования</p></figcaption></figure></div>

Результат:

<div data-with-frame="true"><figure><img src="/files/kHBD3h4N2mhMaGruEKab" alt=""><figcaption><p>Как выглядит текст в Telegram</p></figcaption></figure></div>

{% hint style="warning" %}
Экранировать переменные в тексте НЕ надо.
{% endhint %}

<div data-with-frame="true"><figure><img src="/files/MnUscBUe1xHj4cjfGGgq" alt=""><figcaption><p>Пример ошибки: экранированы символы переменной и разметки текста. </p></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/CyOWIPbhI3LaaZzriX12" alt="" width="563"><figcaption><p>Пример сообщения с ошибкой экранирования</p></figcaption></figure></div>

Правильный вариант:

<div data-with-frame="true"><figure><img src="/files/FgVjL9dyRnoo0qL8OuXq" alt=""><figcaption></figcaption></figure></div>

Сообщение в Телеграм:

<div data-with-frame="true"><figure><img src="/files/tdkdEWgvgIkHONsa9DXt" alt=""><figcaption></figcaption></figure></div>

В случае, если вы не экранируете спец. символы при использовании разметки, то сообщения из бота не будут направляться.&#x20;

Например:

<div data-with-frame="true"><figure><img src="/files/EPc6zZjjIsWTQUZuJedl" alt=""><figcaption><p>Не экранирован восклицательный знак, в то время как точка экранирована</p></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/c4wilU8BJnlqHW3Ws0I3" alt=""><figcaption><p>Ошибка отправки сообщения</p></figcaption></figure></div>

### Видеоинструкция "Как форматировать текст в Telegram"

{% embed url="<https://www.youtube.com/watch?feature=youtu.be&v=yzGHBrBywOo>" %}

### Как форматировать ВКонтакте&#x20;

Какие теги доступны для форматирования текста Вконтакте:

HTML:\
\<b>жирный\</b>\
\<strong>жирный\</strong>\
\<em>курсив\</em>\
\<i>курсив\</i>\
\<u>подчеркнутый\</u>\
\<a href="url">текст ссылки\</a>

<div><figure><img src="/files/LNYDM233URrbosQk8LLG" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/InfDP4qFWxViQQMk5kaA" alt="" width="563"><figcaption></figcaption></figure></div>

Markdown:\
\_\_подчеркнутый\_\_\
\_курсив\_\
\*жирный\*\
\[текст ссылки]\(url)

<div><figure><img src="/files/gSscZkXfANtXnNOtUDHm" alt="" width="563"><figcaption></figcaption></figure> <figure><img src="/files/z1VG9wLTGPB3SNgezu7Y" alt="" width="563"><figcaption></figcaption></figure></div>

### Как форматировать в Viber &#x20;

{% hint style="info" %}
В мессенджере Viber разметка текста не работает.
{% endhint %}

### Как форматировать в Whatsapp и Facebook<mark style="color:red;">\*</mark>&#x20;

{% hint style="danger" %} <mark style="color:red;">**\***</mark>**На территории Российской Федерации&#x20;**<mark style="color:red;">**запрещена деятельность**</mark>**&#x20;социальных сетей&#x20;**<mark style="color:red;">**Facebook**</mark>**&#x20;и&#x20;**<mark style="color:red;">**Instagram**</mark>**, принадлежащих компании Meta Platforms Inc**., признанная экстремистской!
{% endhint %}

Whatsapp и Messenger Facebook<mark style="color:red;">\*</mark> поддерживают выделение текста при помощи символов:

<div data-with-frame="true"><figure><img src="/files/hXOtroqt60niGg1pUxSp" alt=""><figcaption><p>Форматирование текста в блоке</p></figcaption></figure></div>

<figure><img src="/files/U7jyj84jPxQ4hCfcmH4E" alt="" width="324"><figcaption><p>Как выглядит текст в Whatsapp</p></figcaption></figure>

{% hint style="info" %}
В Messenger Facebook<mark style="color:red;">\*</mark> форматирование работает только в веб-версии.

Неподдерживаемые теги в ФБ и whatsapp:

<img src="/files/GQCAeon1BIYg7k5VHIt4" alt="" data-size="original"><img src="/files/IcIDsFHp7sgtBYzQQiln" alt="" data-size="original">
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/markdown.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
