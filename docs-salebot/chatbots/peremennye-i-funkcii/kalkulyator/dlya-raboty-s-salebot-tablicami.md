> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-salebot-tablicami.md).

# Для работы с Salebot-таблицами

## Где найти ID таблицы?

Чтобы работать с функциями для чат-бота, понадобится ID таблицы.

Для начала перейдите в нужную таблицу: для этого найдите в списке искомую таблицу и кликните по ней:

<figure><img src="/files/U8YfTe4BdDqaUhb0hs8m" alt=""><figcaption></figcaption></figure>

Далее кликните по адресной строке:

<figure><img src="/files/CKVPrzpx3eMtdjVgjwbY" alt=""><figcaption></figcaption></figure>

В адресной строке вы увидите адрес вида "<https://salebot.pro/projects/11111/table/><mark style="color:red;">**2**</mark>", где найдете ID нужной таблицы:

<figure><img src="/files/N8iUi6UrcbAZttzE4w36" alt=""><figcaption></figcaption></figure>

## Создать новую запись в таблице с указанными значениями

Создать новую запись в таблице с указанными значениями.

**new\_record(table\_id, data)**

<table><thead><tr><th width="298.15625"></th><th></th></tr></thead><tbody><tr><td>table_id</td><td>id таблицы</td></tr><tr><td>data</td><td><p>словарь с данными, которые нужно записать.</p><p>Пример: {"column_name1": "value1", "column_name2": "value2"}. Если колонка не существует, то будет создаваться новая колонка.</p></td></tr></tbody></table>

Ответ: ID новой записи

### Пример

<figure><img src="/files/XTTEVxaDfXsxcPhQl9SW" alt=""><figcaption></figcaption></figure>

## Редактировать существующую запись в таблице

**edit\_record(table\_id, record\_id, data)**

<table><thead><tr><th width="288.515625">Параметры</th><th>Описание</th></tr></thead><tbody><tr><td>table_id</td><td>id таблицы</td></tr><tr><td>record_id</td><td>id редактируемой записи</td></tr><tr><td>data</td><td>словарь с данными, которые нужно изменить.<br>Пример: {"column_name1": "value3", "column_name2": "value4"}. Если колонка не существует, она НЕ создается</td></tr></tbody></table>

Ответ:

Возвращает полные данные по отредактированной записи в формате {"column\_name1": "value3", "column\_name2": "value4"}

### Пример

<figure><img src="/files/MjNOywDylzfHAlNwRh1C" alt=""><figcaption></figcaption></figure>

## Удалить запись в таблице по id записи

**delete\_record(table\_id, record\_id)**

<table><thead><tr><th width="311.0859375">параметры</th><th>описание</th></tr></thead><tbody><tr><td>table_id</td><td>id таблицы</td></tr><tr><td>record_id</td><td>id записи на удаление</td></tr></tbody></table>

Ответ:

{'message': 'Удалено записей: 1'}

## Найти запись по указанному значению в таблице

**find\_record(table\_id, value, find\_in, return\_from)**

<table><thead><tr><th width="304.60546875">параметры</th><th>описание</th></tr></thead><tbody><tr><td>table_id </td><td>id таблицы</td></tr><tr><td>value</td><td>значение, по которому ищем совпадение</td></tr><tr><td>find_in </td><td>необязательный параметр. Название столбца, по которому ведём поиск. если не указан, ищем запись по всем столбцам</td></tr><tr><td>return_from</td><td>необязательный параметр. Название столбца из которого нужно вернуть значение. </td></tr></tbody></table>

Ответ:

Если return\_from указан, вернется значение указанного столбца, если он есть в таблице. Если return\_from не указан или такого столбца нет, в ответе будут полные данные по найденной записи {"column\_name1": "value3", "column\_name2": "value4"}

### Пример

<figure><img src="/files/NyyPObHACuPGU10SgYN3" alt=""><figcaption></figcaption></figure>

## Получение значения из указанной записи

**get\_record\_data(table\_id, record\_id)**

<table><thead><tr><th width="262.16015625">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td>table_id </td><td>id таблицы</td></tr><tr><td>record_id </td><td>id записи, из которой берем значения</td></tr><tr><td>return_column</td><td>необязательный параметр. Название столбца из которого нужно вернуть значение.</td></tr></tbody></table>

Ответ: Если запись найдена, возвращает словарь типа {"column\_name1": "value1", "column\_name2": "value2"}. Если при этом передан параметр return\_column, и такой столбец существует, в ответе будет значение только по этому столбцу.

## Получение записи из таблицы

**get\_records\_from\_table(table\_id, start\_row, count, start\_col, end\_col) - получение записи из таблицы**

<table><thead><tr><th width="129.97265625">Параметр</th><th>Описание</th><th>Примечание</th></tr></thead><tbody><tr><td>table_id </td><td>id таблицы</td><td></td></tr><tr><td>start_row</td><td>необязательный параметр, целое число. Указывает начало диапазона строк. </td><td>Передается номер строки, с которой включительно необходимо прочесть значения таблицы. Указывается без кавычек.</td></tr><tr><td>count</td><td>необязательный параметр, целое число. Указывает количество строк, которое нужно получить</td><td>По умолчанию - 1000, максимум - 5000. Указывается без кавычек.</td></tr><tr><td>start_col</td><td>необязательный параметр, строка. Указывает начало диапазона столбцов</td><td>Передается название колонки, с которой включительно необходимо прочесть значения таблицы. Указывается в кавычках</td></tr><tr><td>end_col</td><td>необязательный параметр, строка. Указывает конец диапазона столбцов</td><td>Передается название колонки, до которой включительно необходимо прочесть значения таблицы. Указывается в кавычках.</td></tr></tbody></table>

Если указать только начало диапазона строк/столбцов, то будут получены все данные от указанного значения без ограничения по концу диапазона. Аналогично можно не указывать начало диапазона, указав только конец.&#x20;

### Пример в калькуляторе

В блоке, в котором необходимо получить записи из таблицы, кликните на раздел "Калькулятор" в настройках блока и пропишите функцию с указанием параметров.&#x20;

<figure><img src="/files/sc1Cfcsqjie8HPM2wXr7" alt="" width="506"><figcaption><p>Чтобы параметры были переданы в качестве переменной проекта,<br>перед названием переменной с функцией укажите project.</p></figcaption></figure>

Ответ бота будет следующим:

<figure><img src="/files/epylfRhZC6SVAfMNtde7" alt="" width="418"><figcaption></figcaption></figure>

## Получить данные из таблицы по заданному диапазону

table\_read\_cells(table\_id, cell\_data) - позволяет получить данные из таблицы с помощью указания диапазонов

<table><thead><tr><th width="286.37890625">Параметр</th><th>Описание</th></tr></thead><tbody><tr><td><mark style="color:red;"><strong>!</strong></mark> table_id</td><td>обязательный параметр, id таблицы</td></tr><tr><td><mark style="color:red;"><strong>!</strong></mark> cell_data</td><td>обязательный параметр, словарь с диапазонами.<br>Пример cell_data: <code>'{"a1":"a1", "a3": "b4", "c1": "c3"}'</code></td></tr></tbody></table>

Если проблем при выполнении запроса не возникло, то в ответ приходит словарь содержащий статус и все ячейки со значениями:

`{"status":true,"A1":"значение","A3":"значение","B3":"значение","A4":"значение", "B4":"значение", "C1":"","C2":"значение","C3":"ddddddd"} или описание ошибки {"status":false,"err":"Ошибка или описание"}`

### Пример в калькуляторе

Например, в ячейках таблицы существуют определенные указанные значения:

<figure><img src="/files/4nTnvIKKS4wYn5BzLejR" alt=""><figcaption></figcaption></figure>

Чтобы получить данные из таблицы через бота, передайте необходимые диапазоны в функции в калькуляторе:

<figure><img src="/files/hDtKdrOVfDsaBz1vUQXF" alt="" width="509"><figcaption></figcaption></figure>

В примере конструкция #{res}, в которой лежит переменная, поможет отобразить в сообщении, какие данные были получены с помощью функции и заданного диапазона:

<figure><img src="/files/Kl1aKof76bOVduykRhvA" alt="" width="406"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-s-salebot-tablicami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
