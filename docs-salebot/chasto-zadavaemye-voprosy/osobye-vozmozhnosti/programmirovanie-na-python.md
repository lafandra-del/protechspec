> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/programmirovanie-na-python.md).

# Программирование на Python

## **Как выполнить исходный код на языке Python в конструкторе Salebot.pro**

Для исполнения исходного кода (файл с расширением .py) используется функция&#x20;

**code\_executor(URL, params)**, где

**URL -** ссылка на файл исходного кода (например, "<https://salebot.pro/handler.py>")

**params -** те параметры , которые нужны для вашего кода (они придут в виде строки JSON)

Возвращаемое значение - то, что вы вернете в функции.

Пример:

<figure><img src="/files/m7cn6kNbhkBpFyD0b1ey" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Если вам необходимо написать API-запросы от российского IP, рекомендуем использовать прокси Salebot.

Пример:

requests.get('<https://google.com>', proxies={'https': '[http://51.250.88.121:24532'}).text](https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/http:/51.250.88.121:24532'}\).text)
{% endhint %}

{% hint style="info" %}
139.59.148.123 - - executor кода для Python
{% endhint %}

### **Требования к исходному коду:**

Должна присутствовать функция с именем handle(data), принимающая один параметр, в котором будет хеш параметров, которые вы передали в настройках блока. Функция должна возвращать значение, которое после исполнения будет возращено боту. Для того, чтобы его разобрать на переменные конструктора, нужно возвращать JSON.

Пример кода вы можете увидеть по ссылке:  <https://salebot.pro/handler.py>

{% hint style="info" %}
Максимальное время выполнения скрипта - 15 секунд.&#x20;
{% endhint %}

Вы можете использовать стандартные библиотеки, а также перечисленные ниже:

requests\
logger\
gspread\
oauth2client\
numpy\
pyzbar\
fuzzywuzzy\
python-Levenshtein\
re\
urllib\
time\
telethon\
json\
hmac\
hashlib\
beautifulsoup4\
pandas\
base64\
xmltodict\
mysql-connector-python\
zeep\
google-api-python-client


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chasto-zadavaemye-voprosy/osobye-vozmozhnosti/programmirovanie-na-python.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
