> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-spiskami.md).

# Для работы со списками

<details>

<summary><strong>Пример работы со списками</strong></summary>

Рассмотрим пример работы с функциями в Калькуляторе для работы со списками.&#x20;

{% hint style="success" %} <mark style="color:red;">**Важно!**</mark>&#x20;

Необходимо скопировать/сохранить номер нового списка, чтобы работать с ним далее.
{% endhint %}

Чтобы узнать ID списка:

1. перейдите в соответствующий раздел "Списки и метки";
2. нажмите на необходимый список, чтобы открылось правое меню;
3. и скопируйте ID списка.

<figure><img src="/files/2jQJd1IIenVte7ImSBeZ" alt=""><figcaption></figcaption></figure>

Также можно создать список прямо в калькуляторе в разделе "Конструктор" и присвоить ID нового списка переменной. Для этого:

1. Пропишите переменную в калькуляторе в блоке, например, list\_id;
2. Далее приравняйте переменной функцию create\_list('название вашего списка');
3. Передайте переменную #{list\_id} с хешом и фигурными скобками в поле "Сообщение":

<figure><img src="/files/iiiaQfQStpEAwpFgvQDh" alt=""><figcaption></figcaption></figure>

4. Запустите блок в режиме тестирования:

<figure><img src="/files/Uh9vgGZebSwP6vw0O4ef" alt="" width="563"><figcaption></figcaption></figure>

Теперь в переменной list\_id лежит значение ID нового списка.

Очень удобно использовать списки при выводе статистических данных:

<figure><img src="/files/2mdALoazLKAUv0mtx4Vk" alt=""><figcaption><p>Подсчет общего количества клиентов в списке</p></figcaption></figure>

Часто возникает необходимость получить общее количество уникальных записей в наборе списков - это легко достичь применением функции  `lists_joint_count()`

<figure><img src="/files/rUg9Tv005svqCErNuqMS" alt=""><figcaption><p>Получение общего количества уникальных записей в списках</p></figcaption></figure>

**аа**

</details>

## **Создать новый список**&#x20;

**create\_list()**

{% tabs %}
{% tab title="Описание" %}
Укажите в поле Калькулятор в настройках блока функцию&#x20;

**create\_list(spisok)** - создание нового списка. Результат - номер списка

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;spisok** - наименование списка. Наименование задается в одинарных кавычках
{% endtab %}

{% tab title="Пример" %}
`list_id = create_list("зарегистрировались")`

<figure><img src="/files/TnYxZYM4JkP4vSbt7MnR" alt=""><figcaption></figcaption></figure>
{% endtab %}
{% endtabs %}

## Создание списка из блока без создания дубля

**create\_list\_if\_not\_exist()**

{% tabs %}
{% tab title="Описание" %}
**create\_list\_if\_not\_exist('list\_name')** - создает новый список, если с таким именем еще нет и возвращает идентификатор или вернет идентификатор существующего

Обязательный параметр:

**list\_name** - Название для создания нового списка
{% endtab %}

{% tab title="Пример" %}

<figure><img src="/files/ABJevEYmYux7syVRYLAB" alt=""><figcaption></figcaption></figure>

```
new_list = create_list_if_not_exist('Список участников')
```

{% endtab %}
{% endtabs %}

## Добавление клиента в список

**add\_to\_list()**

{% tabs %}
{% tab title="Описание" %}
**add\_to\_list(spisok, client\_id)**- добавление клиента в список.  Результат функции - none

Параметры:&#x20;

<mark style="color:red;">**!**</mark>**&#x20;spisok** - номер списка. Можно передавать как один идентификатор "1567", так и список идентификаторов - \[1567, 1672, 1980]

**client\_id** - идентификатор клиента Salebot. Если не передан, то  используется идентификатор текущего клиента&#x20;
{% endtab %}
{% endtabs %}

## Перемещение клиента в список

**move\_to\_list()**

{% tabs %}
{% tab title="Описание" %}
**move\_to\_list(spisok, client\_id)** – перемещение клиента в список (Важно! клиент удаляется из всех других списков и перемещается в указанный). Результат - булево значение (True или False)

Параметры:&#x20;

<mark style="color:red;">**!**</mark>**&#x20;spisok** - номер списка. Можно передавать как один идентификатор "1567", так и список идентификаторов - \[1567, 1672, 1980]

**client\_id** - идентификатор клиента Salebot. Если не передан, то  используется идентификатор текущего клиента&#x20;
{% endtab %}
{% endtabs %}

## Удаление клиента из списка

**remove\_from\_list()**

{% tabs %}
{% tab title="Описание" %}
**remove\_from\_list(spisok, client\_id)** – удаление из списка клиента с заданным client\_id&#x20;

Параметры:&#x20;

<mark style="color:red;">**!**</mark>**&#x20;spisok** - номер списка

**client\_id** - идентификатор клиента Salebot. Если не передан, то  используется идентификатор текущего клиента&#x20;
{% endtab %}
{% endtabs %}

## Удаление списков&#x20;

remove\_list\_from\_project(list\_id, clear\_list)

{% tabs %}
{% tab title="First Tab" %} <mark style="color:red;">**!**</mark>**&#x20;list\_id** — обязательный параметр, это id списка, который нужно удалить

**clear\_list** — необязательный параметр, принимает 2 значения True или False (по умолчанию False), если не передавать его и если список содержит клиентов, вы получите ответ следующего вида:\
\
«Can't delete list, list not empty»\
\
&#x20;если список пустой, то список спокойно удалится, если же в clear\_list установить значение True, то список удалится в независимости от того, есть там клиенты или нет.
{% endtab %}
{% endtabs %}

## Удаление меток

remove\_label\_from\_project(list\_id, clear\_list)

{% tabs %}
{% tab title="First Tab" %} <mark style="color:red;">**!**</mark>**&#x20;list\_id** — обязательный параметр, это id метки, которую нужно удалить

**clear\_list** — необязательный параметр, принимает 2 значения True или False (по умолчанию False), если не передавать его и если клиентам присвоена данная метка, вы получите ответ следующего вида:\
\
«Can't delete list, list not empty»\
\
если список пустой, то метка удалится, если же в clear\_list установить значение True, то список удалится в независимости от того, есть там клиенты или нет
{% endtab %}
{% endtabs %}

## Очистить список клиентов&#x20;

**clear\_list()**

{% tabs %}
{% tab title="Описание" %}
**clear\_list(list\_id)** - очистка списка клиентов

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;list\_id -** номер списка. После использования все клиенты  будут удалены из указанного списка.&#x20;
{% endtab %}
{% endtabs %}

## Узнать количество клиентов в списке

**list\_size()**

{% tabs %}
{% tab title="Описание" %}
**list\_size(spisok)** – для подсчета общего количества клиентов в списке

Параметры:&#x20;

<mark style="color:red;">**!**</mark>**&#x20;spisok** - номер списка
{% endtab %}
{% endtabs %}

## **Подсчитать количество уникальных записей о клиентах в нескольких списках**

**lists\_joint\_count()**

{% tabs %}
{% tab title="Описание" %}
**lists\_joint\_count(massive\_list)** – для подсчета общего количества уникальных записей о клиентах, которые находятся в нескольких списках. На вход функция принимает массив с номерами списков. Результат - число.

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;massive\_list** - массив с перечнем списков, в котором будем производить подсчет уникальных записей клиента. Записывается в формате: '\[list\_id1, list\_id2, ..., listidN]'
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
/*Создание списка*/
list_id = create_list('Новенький списочек')

/*проверяем состоит ли клиент в списке*/
k=inlist(list_id, client_id)

/*вывод размера списка - общее количество клиентов списка*/
razm=list_size(1)

/*Получение общего количества уникальных записей в списках*/
k=lists_joint_count('[144636,144634]')

```

{% endtab %}

{% tab title="Видеоразбор" %}

{% endtab %}
{% endtabs %}

## Проверить есть ли клиент в списке

**inlist()**

{% tabs %}
{% tab title="Описание" %}
**inlist(spisok,client\_id)** - для проверки наличия пользователей в списке. Результат - булево значение (True или False)

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;spisok** - номер списка

**client\_id** - идентификатор клиента Salebot. Если не передан, то  используется идентификатор текущего клиента&#x20;
{% endtab %}
{% endtabs %}

## Проверить состоит ли участник чата в определенном списке

**some\_client\_in\_list()**

{% tabs %}
{% tab title="Описание" %}
**some\_client\_in\_list(list\_id, recepient)**

&#x20;Параметры:\ <mark style="color:red;">**!**</mark>**&#x20;list\_id** - номер списка; \ <mark style="color:red;">**!**</mark>**&#x20;recepient** - это значение id в мессенджере проверяемого (platform\_id). Для чатов значение переменной chat\_member\_id.

Возвращаемый результат: \
**True** - клиент есть в списке; \
**False** - клиента нет в указанном списке.
{% endtab %}

{% tab title="Пример" %}

<figure><img src="/files/HtI9i1teS7dmZaGKPDWl" alt=""><figcaption><p>Проверка наличия в списке при вступлении в канал</p></figcaption></figure>

<figure><img src="/files/HipPYLrEvJVteGM1AR9m" alt=""><figcaption><p>Проверка наличия в списке по ID  в мессенджере</p></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
/*пример проверки наличия в списке для участников чата, где первый параметр - номер списка, второй - ID пользователя в чате*/

r = some_client_in_list(123456, chat_member_id)
```

{% endtab %}

{% tab title="Видеоразбор" %}

{% endtab %}
{% endtabs %}

## Возвращение элементов из списка

count\_occurrences()

{% tabs %}
{% tab title="Описание" %}
count\_occurrences(array, element) - возвращает число указанных элементов, содержащихся в списке

array - обязательный параметр, список элементов

element - обязательный параметр, элемент, который необходимо посчитать
{% endtab %}
{% endtabs %}

## Получение случайного ID клиента из списка

random\_list\_member(list\_id)

{% tabs %}
{% tab title="Описание" %}
random\_list\_member(list\_id) - возвращает случайный id одного из клиентов, находящихся в указанном списке.

list\_id - обязательный параметр, id списка.

ID списка, в котором лежат ваши клиенты, берется в разделе "Списки":

<figure><img src="/files/h9o8m3lvchmX0H2UAiJd" alt=""><figcaption></figcaption></figure>
{% endtab %}
{% endtabs %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-spiskami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
