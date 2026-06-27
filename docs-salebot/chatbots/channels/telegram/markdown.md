> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/telegram/markdown.md).

# Форматирование сообщений в Telegram

## Разметка Markdown

Для правильной разметки текста в нужном блоке (разметка находится под полем для ввода текста сообщения) строго соблюдайте следующие шаги:

<div data-with-frame="true"><figure><img src="/files/flGhFCeBuAGZRpyJM2Eh" alt="" width="563"><figcaption></figcaption></figure></div>

1. Ставим нужный текст в поле ответ.

Если вы используете переменные в тексте, то на данном этапе их указывать <mark style="color:red;">**не нужно**</mark>. В противном случае синтаксис переменных будет нарушен и знаки #{} также будут экранированы, а переменная не отобразится в тексте.

2. Включаем "Markdown в Telegram". Так в ваш текст будут добавлены символы экранирования.
3. Выделяем текст \*\* либо \_ \_ и т.п.

{% hint style="danger" %}
Если в этом блоке встречаются символы из перечисленных: '\_', '\*', '\[', ']', '(', ')', '\~', '\`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!'  — их нужно экранировать, добавлять перед ними обратный слэш \\&#x20;

Иначе сообщение не отправится вообще. При этом не имеет значения, какой участок текста вы размечаете.

&#x20;Пример: привет\\. Рады \*тебя\* видеть\\!
{% endhint %}

Спецсимволы:

**Жирный текст** — с обеих сторон ставите звездочки: \*тут текст\*\
**Курсив** — нижнее подчёркивание: \_текст\_\
**Подчеркнутый текст** — два нижних подчеркивания с обеих сторон: \_\_текст\_\_\
**Зачеркнутый текст** — тильда с обеих сторон текста: \~текст\~\
**Ссылка в тексте**: \[текст в квадратных скобках]\(ссылка в круглых скобках) \
\[inline URL]\([http://www.example.com/](https://vk.com/away.php?to=http%3A%2F%2Fwww.example.com%2F\&cc_key=))\
**Упоминание пользователя ТГ**: \[текст в квадратных скобках]\(ссылка на пользователя в круглых скобках). В ссылке после знака равно можно использовать #{platform\_id} \
\[inline mention of a user]\(tg://user?id=123456789)\
**Текст в виде кода** — с обеих сторон текста поставить обратный апостроф: \`inline fixed-width code\`\
**Скрытый текст или spoiler** - с обеих сторон от текста используйте ||

4. Далее размечаете нужный текст при помощи спецсимволов.&#x20;

**Пример:**

<div data-with-frame="true"><figure><img src="/files/MP3G3FCIOZoZx5hfibf4" alt="" width="563"><figcaption><p>Пример разметки</p></figcaption></figure></div>

Результат:

<div data-with-frame="true"><figure><img src="/files/HkUdsJXDRSLHMv2I9jAq" alt="" width="432"><figcaption></figcaption></figure></div>

При работе с Markdown необходимо не забывать, что спецсимволы следует экранировать, заменить в тексте управляющие символы на соответствующие текстовые подстановки. Делается это достаточно просто - перед спецсимволом добавляется **обратный слэш \\**  или  при помощи функции Калькулятора

**txt = tg\_escape(s), где** **s** - строка с исходным текстом.&#x20;

{% hint style="info" %}
Чтобы в переменную записать текст с переносами строк, укажите значение следующим образом:

`ваша_переменная = "Текст первой строки" + "\n" + "Текст второй строки" + "\n" +"Третья строка"`
{% endhint %}

На выходе в **txt** приходит строка уже с вставленными слешами в нужных местах.&#x20;

**Пример:**

<div data-with-frame="true"><figure><img src="/files/GojBFwYYfeU00XYVAXEc" alt=""><figcaption><p>Пример экранирования</p></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/35izYDfhHK3nOwvBJ80j" alt=""><figcaption><p>Как выглядит текст в Telegram</p></figcaption></figure></div>

Далее размечаете нужный текст.

#### Пример с длинным текстом:

<div data-with-frame="true"><figure><img src="/files/T0o2TCO9K1v8DYOwCggL" alt="" width="364"><figcaption></figcaption></figure></div>

Для этого в калькуляторе необходимо:

Шаг 1. Вставить текст в поле сообщения:

<div data-with-frame="true"><figure><img src="/files/mOTV8ygtmpZpRldBji9h" alt="" width="563"><figcaption></figcaption></figure></div>

Шаг 2. Включить кнопку разметки Marldown:

<div data-with-frame="true"><figure><img src="/files/MMrsySC7YaIfOkPqUoZU" alt="" width="563"><figcaption><p>При включении кнопки разметки, экранируются спецсимволы</p></figcaption></figure></div>

Шаг 3. Расставляем спецсимволы для форматирования сообщения по тексту:

<div data-with-frame="true"><figure><img src="/files/X4sqyHRFHqVy4Ri6YXih" alt="" width="563"><figcaption></figcaption></figure></div>

Если после отправки сообщения, оно не дошло в мессенджер, а в диалоге в разделе Клиенты вы видите ошибку, значит вы неверно экранировали символы.&#x20;

При этом вы увидите ошибку при отправке сообщения в разделе "Клиенты", в ней будет указан символ, который не был экранирован.

Сообщения об ошибках, которые вы можете встретить:

1. Нет закрывающего символа:

<div><figure><img src="/files/xtELLjUdN9qg8PzeFXIj" alt="" width="542"><figcaption></figcaption></figure> <figure><img src="/files/0eIoOjDnjUxKWTfOAuRe" alt="" width="560"><figcaption></figcaption></figure></div>

2. Отсутствует экранирование символа:

<figure><img src="/files/I0bqIIchr0rbP7kjsNpH" alt="" width="563"><figcaption></figcaption></figure>

Ознакомьтесь с особенностями разметки текста в видео ниже и выполните экранирование правильно:

{% embed url="<https://www.youtube.com/watch?v=yzGHBrBywOo>" %}
Форматирование текста в редакторе блока для Telegram: markdown
{% endembed %}

## Разметка HTML

Чтобы разметка HTML работала, не забудьте нажать на кнопку HTML под текстовым полем для сообщения:

<div data-with-frame="true"><figure><img src="/files/jUl9VyNEWI0WAY2iYO9h" alt="" width="563"><figcaption></figcaption></figure></div>

1. \<a href="[https://google.com">ссылка\\](https://docs.salebot.pro/chatbots/channels/telegram/https:/google.com">ссылка\\)</a> - вшивает ссылку в определенное слово.&#x20;

Пример заполнения:

<div data-with-frame="true"><figure><img src="/files/jVKCiImqYEzJCTdzt8FX" alt="" width="563"><figcaption></figcaption></figure></div>

2. \<u>underlined\</u> - подчеркнутый шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/rKxPlevys7tao901NVnA" alt="" width="359"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/DMmbOqhGQTCjJLdGgLeP" alt="" width="478"><figcaption></figcaption></figure></div>

3. \<ins>underlined\</ins> - подчеркнутый шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/Tz0u25ZGTcy7OME3IHAG" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/SCd6jEc3Vx7YUxUQ7L5D" alt="" width="472"><figcaption></figcaption></figure></div>

4. \<em>italic\</em> - курсивный шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/2iLN24ExEf0CvruftX9n" alt="" width="544"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/E7gEqEqc2S53x7scwTe9" alt=""><figcaption></figcaption></figure></div>

5. \<i>italic\</i> - курсивный шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/hN5FAijc9o5PXr0gH7mB" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/Id6H3XOxeymdAgkAtlhL" alt="" width="473"><figcaption></figcaption></figure></div>

6. \<strong>strong\</strong> - жирный шрифт

<div data-with-frame="true"><figure><img src="/files/bKtRoE93HYeaQKmjBOE2" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/LAWhLUhCXyCuRIVRemUx" alt=""><figcaption></figcaption></figure></div>

7. \<strike>strike\</strike> - зачеркнутый шрифт

<div data-with-frame="true"><figure><img src="/files/1q9QFyqjbVFGbaKXshX0" alt="" width="405"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/YsTzD0dwMOl0VAprQOKq" alt=""><figcaption></figcaption></figure></div>

8. \<span class="tg-spoiler">hidden\</span> - скрытый шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/VKRAWygyShjJtSdO0msL" alt="" width="464"><figcaption></figcaption></figure></div>

9. \<code>Prerfomatted\</code> - форматированный шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/wCadatG3l3yiDGCFDUXO" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/FkDDOL1WLVmSHtJRW0cm" alt=""><figcaption></figcaption></figure></div>

10. \<pre>Preformatted\</pre> - форматированный шрифт

Пример:

<div data-with-frame="true"><figure><img src="/files/tT6TddKfgGOxUITJ8mdR" alt=""><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/boVK0WCQCLpjCId86pKw" alt=""><figcaption></figcaption></figure></div>

11. \<blockquote>\</blockquote> - цитата

<div data-with-frame="true"><figure><img src="/files/D6088dfEHGHiKsjtJ9oV" alt="" width="563"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/yA6V1vGHyScHbpzHgWe8" alt="" width="325"><figcaption></figcaption></figure></div>

## <sub>Как</sub> включить защищенный режим для контента

Чтобы защитить контент от распространения можно включить защищенный режим для сообщений. Для этого в разделе "Сообщение" включите "Защитить контент":

<figure><img src="/files/CcJ4KuQoBW5p3ia1bdDO" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Защищенные сообщения нельзя переслать, на телефоне нельзя сделать скриншот.
{% endhint %}

{% embed url="<https://www.youtube.com/watch?v=mBSG2RY2y1k>" %}
Telegram: защита контента, редактор блока
{% endembed %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/telegram/markdown.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
