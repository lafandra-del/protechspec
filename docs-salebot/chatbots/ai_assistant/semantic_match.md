> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/ai_assistant/semantic_match.md).

# Сравнение по смыслу

Сравнение по смыслу в условиях блоков ("Стартовое условие" и "Не состояние с условием") — это искусственный интеллект, который обучен искать в сообщении клиента по словам/фразам, указанным в поле "Условие".&#x20;

Блоки имеют приоритет над AI-ассистентом, поэтому можно использовать блок с условием и выбором соответствия "сравнение по смыслу" в случае, если вы хотите направить клиенту четко выверенный и прописанный вами ответ и вести по воронке в боте из "Конструктора".&#x20;

## Принцип работы

В основе работы сравнения по смыслу лежит поиск контекста в сообщении по ключевым фразам, прописанных в поле "Условие".

Принцип работы "Сравнение по смыслу" следующий:

1. В условии прописываются фразы, являющиеся СМЫСЛОМ, который выявляется ИИ из сообщения клиента;
2. Обработка системой (чат-ботом) сообщения клиента — то есть поиск вложенного в условие смысла для ИИ в реплике клиентов;
3. Отработка ботом события в блоке.&#x20;

То есть, прописывая в условии определенные значения, например, какие-либо фразы, искусственный интеллект проверит каждое условие на соответствие реплике, отправленной клиентом, и начнет отработку соответствующего события в блоке (например, отправку сообщения и пр.)

Пример:

В условии прописана определенная фраза, которую должен обработать и найти в сообщении клиента, если ИИ нашел контекст из поля "Условие" в сообщении клиента, то отработается действие из данного блока (например, отправится сообщение).

В нашем случае, в условии лежат фраза "закрывающие счета и акты":

<figure><img src="/files/lkWVDL3zXxDxjtLbQXfV" alt="" width="563"><figcaption></figcaption></figure>

Наш блок выглядит следующим образом:

<figure><img src="/files/HF0KgtpU3H2i7WWz4SSM" alt="" width="563"><figcaption></figcaption></figure>

При выборе соответствия "сравнение по смыслу" бот должен найти в сообщении клиента похожие/схожие по смыслу слова/фразы, лежащие в условии:

<figure><img src="/files/5PqilkmQNcqy7PKUJSNC" alt="" width="563"><figcaption></figcaption></figure>

<figure><img src="/files/y7lAmlYlcTkBGzcS9Itm" alt="" width="563"><figcaption></figcaption></figure>

Каждый раз бот после обработки сообщения клиента, верно отрабатывает необходимое событие, лежащее в блоке.

## Как писать условие

Условие в соответствующем поле прописывается аналогично иным условиям при любом выборе соответствия — каждую отдельную фразу необходимо отделять от другой с помощью точки с запятой:

<figure><img src="/files/GKzegwgXed9Nw73Bbcax" alt="" width="563"><figcaption></figcaption></figure>

Точное и лаконичное условие — фраза — для блока поможет чат-боту верно отрабатывать событие, вложенное в блок. \
Чем больше сложных слов, размытых по смыслу, и растянутых на несколько предложений фраз, тем дольше осуществляется обработка ИИ сообщений клиентов, что может привести к некорректной работе вашей схемы.

Также условие для соответствия "Сравнение по смыслу" не может состоять из одного слова.

Пример <mark style="color:green;">**правильного**</mark> условия:

<figure><img src="/files/zWuBrE2OfCYileVoge66" alt="" width="563"><figcaption></figcaption></figure>

Пример <mark style="color:red;">**НЕправильного**</mark> условия:

<figure><img src="/files/EvBae1vXSPITNXvdMQse" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="warning" %} <mark style="color:red;">**Обращаем внимание!**</mark>&#x20;

1. Условие НЕ должно состоять из одного слова: несмотря на то, что необходимо составлять лаконичные условия, они должны отражать искомый ботом смысл.
2. Если модель будет сравнивать два разных слова условия, то они не будут равны. Например: вместо слова «счет», выставьте условие «оплата по счету за месяц» - такое условие будет соответствовать искомым требованиям, а также укажет модели ИИ необходимые критерии для сравнения по смыслу
   {% endhint %}

### Пример отработки условий ботом

Для начала наглядно продемонстрируем, как будет вести себя бот при написании условия всего с одним словом:

Например, вам необходимо, чтобы блок отрабатывался, когда клиенту нужно выставить счет по оплате за интернет:

<figure><img src="/files/7uGyIfylEvqKvOr1HTc0" alt="" width="563"><figcaption></figcaption></figure>

В условии было прописано всего одно слово - "счет".&#x20;

Далее протестируем бота, задав ему вопрос по поводу счета (любого другого):

<figure><img src="/files/IPSG3pAH9tAqHIosrYQv" alt="" width="563"><figcaption></figcaption></figure>

Итак мы видим, что хотя ИИ и видит слово "счет"/"счета" в контексте сообщения пользователя и принимает его значение для старта блока, бот срабатывает на любое сообщение со словом "Счет".

Чтобы избежать подобного, необходимо конкретизировать условия в выборе соответствия:

<figure><img src="/files/fLP4is9cRtz1ztd4y33l" alt="" width="563"><figcaption></figcaption></figure>

Пример отработки условий ботом:

<figure><img src="/files/PCgSYkElgtaDKVokj0NU" alt="" width="563"><figcaption></figcaption></figure>

Как видно из примера, бот не ответил на сообщения по поводу банковских счетов и счетов-фактуры.&#x20;

Однако из последнего сообщения он выявил контекст, который был прописан в его условии, и отработал все корректно.&#x20;

Таким образом, с помощью выбора соответствия "сравнение по смыслу" при отработке ИИ переберет необходимые варианты для понимания смысла реплики клиента, и по соответствию чат-бот отработает необходимое событие.&#x20;

## Видео-инструкция

{% embed url="<https://youtu.be/1YD5QVgyeN0>" %}

## Пример бота с ИИ "Умная станция"

{% hint style="success" %}
В данном примере наглядно продемонстрируем приоритет блоков над AI-ассистентов и поиск по контексту в сообщении клиента с выбором соответствия "Сравнение по смыслу".&#x20;
{% endhint %}

В конструкторе воронок создаем два блока "Первостепенная проверка условия", в каждом из которых устанавливаем выбор соответствия "Сравнение по смыслу" и сообщение "Включаю/выключаю свет":

<div><figure><img src="/files/NFQl548VDN05Xsvd2o5H" alt="" width="563"><figcaption><p>Блок 1 "Включаю свет"</p></figcaption></figure> <figure><img src="/files/gHaFgk8v6kUH0eXF7Ld8" alt="" width="563"><figcaption><p>Блок 2 "Выключаю свет"</p></figcaption></figure></div>

Для понимания того, что отработался именно блок, а не АИ-ассистент, добавим дополнительную строку в сообщении каждого блока:

<div><figure><img src="/files/Nth21hqjT1ctUrrJ8QcA" alt="" width="563"><figcaption><p>Блок 1 "Включаю свет"</p></figcaption></figure> <figure><img src="/files/w85Z7n1aGlWArVf3nzoQ" alt="" width="563"><figcaption><p>Блок 2 "Выключаю свет"</p></figcaption></figure></div>

Далее переходим в АИ-ассистента.&#x20;

Создаем бота с ролью "Универсальный ассистент":

<figure><img src="/files/mWpV7oXo4LpZsb4Q8Ksw" alt="" width="429"><figcaption></figcaption></figure>

Далее прописываем его настройки:

<figure><img src="/files/RGf0SaLyQAVmUf9e8OW6" alt="" width="563"><figcaption></figcaption></figure>

Для наглядности отработки блоков, мы не будем ограничивать ассистента в его поведении.&#x20;

На данном этапе все настройки завершены. Перейдем к тестированию.

1. Начнем разговор с нашей умной станцией:

<figure><img src="/files/TaJaKaL4bwzRZUoLmy7Z" alt="" width="375"><figcaption></figcaption></figure>

Поскольку мы никак не ограничивали станцию, то она может разговаривать на совершенно отвлеченные темы.

2. Теперь в контексте нашего сообщения пропишем ключевой смысл - включить или выключить свет:

<figure><img src="/files/ou7GO8hJ4Av4XNmuY3QH" alt="" width="375"><figcaption></figcaption></figure>

Бот отработал корректно.&#x20;

Таким образом, в моменты, когда условия из блока не отрабатываются, работает ассистент.&#x20;

Но если в контексте бот найдет контекст, установленный в условии блока, отработается именно блок.&#x20;

## Видеогид

{% embed url="<https://youtu.be/ND1Ri-jPEOc>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/ai_assistant/semantic_match.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
