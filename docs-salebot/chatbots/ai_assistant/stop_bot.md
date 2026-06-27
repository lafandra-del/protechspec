> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/ai_assistant/stop_bot.md).

# Как приостановить ИИ-ассистента

## Как заставить ассистента молчать

Передайте в поле настройки бота следующий текст-команду:

"Если тебя спрашивают про \_\_\_\_\_\_\_, то ты должен написать, что ты не знаешь ответа на вопрос.

Если тебя спросят про события, которых ты не знаешь, то ты должен написать, что ты не знаешь ответа на вопрос"

Пример:

<figure><img src="/files/r2YFu7jgmeOp1JIk6IWM" alt=""><figcaption></figcaption></figure>

### Пример со стоп-словами в настройках AI-ассистента

Если нужно, чтобы бот не реагировал на какие-то определенные слова, пропишите следующим образом:

"Если в вопросе есть слова: слово1, слово2, слово3, то ты должен написать, что не знаешь ответа на вопрос":

<figure><img src="/files/BaaTwV4rmHXqngB6csgO" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/8MJOhqqAMZauKBBYdVyA" alt="" width="375"><figcaption></figcaption></figure>

На примере выше видно, что при промпте "Если в вопросе есть слова: Барнаул, флешка, лампочка, кошка", то бот не реагирует и не отвечает клиенту.

### Пример остановки ассистента с вызовом блока по ключевым словам

Также можно вызывать блоки из конструктора по ключевым словам/фразам в боте, например, для остановки AI-ассистента.&#x20;

Для этого создайте блок в конструкторе:

<figure><img src="/files/j7OtCD2evYxcXJASERp6" alt=""><figcaption></figcaption></figure>

Присвойте переменную с флажком `stop_bot = true` (название переменной может быть любое) и скопируйте номер блока. Далее в настройках AI-ассистента пропишите следующую команду 'Если в вопросе есть слова: слово1, слово2, слово3, слово4, то напиши без изменения "start\_block\_from\_ai 49887353""

<figure><img src="/files/TejgkPZ2CiOxy2shxtUh" alt=""><figcaption></figcaption></figure>

Далее в строке "Условие для запуска" пропишите stop\_bot != "true":

<figure><img src="/files/omGWar9Fg7Xzo9Z1Ovqj" alt=""><figcaption></figcaption></figure>

Создайте блок "Стартовое условие" (или "Не состояние с условием"), в котором необходимо прописать в строке "Переменные для сравнения" stop\_bot == "true":

<figure><img src="/files/5JfTWE4BpBmBlum3T6cZ" alt=""><figcaption></figcaption></figure>

Тогда схема отработает следующим образом:

<figure><img src="/files/Mf492ZlDTWAy6Zmtdvui" alt="" width="563"><figcaption></figcaption></figure>

То есть, когда ИИ считал стоп-слово, указанное в промпте, был вызван блок с сообщением об остановке блока — тем самым клиенту присвоилась переменная stop\_bot = true:

<figure><img src="/files/RPbJ4s1kpzYYmYQuLYCM" alt=""><figcaption></figcaption></figure>

Поскольку в условии запуска в AI-ассистенте, бот с ИИ запустится только при условии, что переменная stop\_bot не равна флажку true, AI-ассистент окончательно остановился и не запустится, пока переменная stop\_bot станет не равной флажку true.&#x20;

При написании клиентом в бот далее отрабатывается блок "Стартовое условие", в условиях которого сравнивается переменная stop\_bot с флажком true, поскольку у клиента переменная stop\_bot == "true".

<figure><img src="/files/cumKoxeUiIl4nbl5hZhg" alt=""><figcaption></figcaption></figure>

С стартового блока вы можете построить схему чат-бота, продолжив вести клиента дальше по воронке.&#x20;

А если вам нужно подключить другого ИИ-бота, то можно не использовать блок стартового условия, а прописать в промпте второго AI-ассистента в поле "Условия для запуска" stop\_bot == "true":

<figure><img src="/files/czbrYOXnC8wo6LFVwIuF" alt="" width="563"><figcaption></figcaption></figure>

### Пример остановки ассистента с вызовом блока с условием

Можно сделать еще проще. Например, с использованием блока "Стартовое условие" или "Не состояние с условием", в которых сразу установить переменную с флажком.

{% hint style="success" %}
Поскольку блоки в конструкторе имеют приоритет выше, чем AI-ассистент, то при наличии ключевых слов (стоп-слов) в сообщении клиента, соответствующие условию блоков конструктора, будут сначала отработаны блоки из конструктора.
{% endhint %}

В блоке в поле "Условие" пропишите ключевые слова или стоп-слова (разделяйте слова/фразы через точку с запятой):

<figure><img src="/files/rlPxxPDwyOmrSENkCpve" alt="" width="563"><figcaption></figcaption></figure>

Выберите тип соответствия "По наличию ключевых слов", в калькуляторе объявите переменную stop\_bot = true (название переменной может быть любое).

Далее в AI-ассистенте в поле "Условие запуска" укажите выражение stop\_bot != true:

<figure><img src="/files/ii1gRqC8e4wENOLFD4Tm" alt="" width="563"><figcaption></figcaption></figure>

И сохраните настройки.&#x20;

Теперь если в сообщении клиента будут ключевые слова, указанные в условии "Стартового блока" (или блока "Не состояние"), AI-ассистент не будет отвечать клиенту:

<figure><img src="/files/35liNT4zcW4LN2SB2EUC" alt="" width="375"><figcaption></figcaption></figure>

В примере выше в сообщении пользователя бот считал ключевое слово из блока "Стартовое условие" и направил соответствующее сообщение:

<figure><img src="/files/IcU0tLq2i9JlVst27rGn" alt=""><figcaption></figcaption></figure>

## Как остановить бота в мессенджере для тестирования

Если вам нужно добавить новые настройки или переписать промпт ai-ассистента, при этом чтобы клиенты не сталкивались с тестовыми настройками ИИ, вам поможет конструктор условий.&#x20;

С помощью конструктора условий можно остановить отработку AI-ассистента в мессенджере, при этом в окне тестирования бот будет отрабатывать как обычно.

Шаг 1. Перейдите в настройки нужного AI-ассистента и найдите поле "Условие запуска":

<figure><img src="/files/F0lCNqhAYS2zyVsPkmuG" alt=""><figcaption></figcaption></figure>

Шаг 2. Нажмите на "Конструктор условий", чтобы открылось тестовое окно:

<figure><img src="/files/NLF2ZQu2clJkpN1nNKmi" alt=""><figcaption></figcaption></figure>

Шаг 3. Нажмите на кнопку "Тестовое окно", а затем "Добавить условие":

<figure><img src="/files/duh7PHQL3umhdCd79dVa" alt=""><figcaption></figcaption></figure>

В поле было добавлено условие запуска `platform_id == "test_client_online"` - это значит, что данный AI-ассистент будет работать только в тестовом окне.

## Как выключить AI-ассистента

Если вы создали нового ассистента и, к примеру, вам нужно выключить старого, то перейдите в настройки того бота с ИИ, которого хотите выключить:

<figure><img src="/files/mijkTHkJiZn6KzvEDKCN" alt=""><figcaption></figcaption></figure>

Далее в поле "Роль" выберите "Выключено":

<figure><img src="/files/E01RHnzeMghR72iioLNR" alt="" width="563"><figcaption></figcaption></figure>

Затем сохраните настройки:

<figure><img src="/files/MVBnE2BPuEq4QT1EDEFg" alt="" width="563"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/ai_assistant/stop_bot.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
