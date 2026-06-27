> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/massivy-i-slovari/dlya-raboty-so-slovaryami.md).

# Для работы со словарями

## Как создать словарь

Создание словаря - объявление словаря

**имя\_словаря = {}**

## Как обнулить  словарь

Обнуление - это ничто иное как объявление пустого словаря

**имя\_словаря = {}**

## Как получить значение словаря по ключу

{% tabs %}
{% tab title="Описание" %}
**имя\[ключ] -** получение элемента  словаря по ключу
{% endtab %}

{% tab title="Примеры" %}
**Пример работы со словарем:**

&#x20;в данном конкретном случае идет обращение по ключу со значением a. То есть для того, чтобы получить значение словаря по конкретному ключу прописываем команду в формате: имя\_словаря\["ключ"]

<figure><img src="/files/qBLLQWLwxODtGZ60AYTF" alt=""><figcaption></figcaption></figure>

Ответ:

<figure><img src="/files/kiRCjrobnepZmJGlj95J" alt=""><figcaption></figcaption></figure>

На экран будет выведено&#x20;

<figure><img src="/files/HO6b55WQnyU9JQWyt0hF" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
dicts = {"a": "11", "d": "privet"}
/*получение из словаря*/
aa = dicts["a"]
```

{% endtab %}
{% endtabs %}

## Как получить список ключей из словаря

{% tabs %}
{% tab title="Описание" %}
**dict\_keys\_to\_array(data)** - для получения списка ключей словаря data
{% endtab %}

{% tab title="Примеры" %}
**Пример:** Получим список всех ключей словаря

<figure><img src="/files/oDY2DbQVImL5TuEE127T" alt=""><figcaption></figcaption></figure>

**Ответ**:&#x20;

<figure><img src="/files/oxRbBkF03M6f9JiPK1wM" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}
`v={"A1":"апельсин","A2":"абрикос","A3":"мандарин","A4":"яблоко","A5":"груша","A6":"киви","A7":"банан","A8":"персик"} key= dict_keys_to_array(v)`
{% endtab %}
{% endtabs %}

## Как получить список значений из словаря

{% tabs %}
{% tab title="Описание" %}
**dict\_values\_to\_array(data)** - для получения списка значений из словаря data
{% endtab %}

{% tab title="Примеры" %}
Пример:

<figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252FZSgrsbN6yIXHOfW1yOgP%252Fimage.png%3Falt%3Dmedia%26token%3De338ff03-050f-4713-b23f-7e212c85a2e3&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=44c62f04&#x26;sv=2" alt=""><figcaption></figcaption></figure>

Ответ:

<figure><img src="https://docs.salebot.pro/~gitbook/image?url=https%3A%2F%2F4216716816-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F-LxKl4rC_EcwBAz40Qn_%252Fuploads%252F2kS3uawRwriauaG1iVRY%252Fimage.png%3Falt%3Dmedia%26token%3Db1260c0c-ec5e-44b2-903b-feb925cb4890&#x26;width=768&#x26;dpr=4&#x26;quality=100&#x26;sign=af4699b5&#x26;sv=2" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}
`v={"A1":"апельсин","A2":"абрикос","A3":"мандарин","A4":"яблоко","A5":"груша","A6":"киви","A7":"банан","A8":"персик"} value= dict_values_to_array(v)`
{% endtab %}
{% endtabs %}

### Как получить значения из списка словарей по указанному ключу

{% tabs %}
{% tab title="Описание" %}
**get\_values\_by\_key(data, key)** - позволяет получить значения из списка словарей по указанному ключу. Возвращает список значений.
{% endtab %}

{% tab title="Примеры" %}
Пример: Получим значения из списка словарей по ключу

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcxagAH-OPoHeCwd0eDdazge8yUmGwl2OtFWIES2htDRf42jezf-1WD9InQBWUqr2AihC-wd7z-7xGeZD4DxypcowYpkZ5S0uNt92KyuwOXLhL-vsua1JYNpjpX2Yje5y6dAbKn?key=ItVw1huKgUDmT8UO8bhwXA" alt=""><figcaption></figcaption></figure>

Ответ:

<figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXeK9VUAHsy3a50Rp5nZXCwMj2EiGTcUc97PzhCDjlyzBBR9pWYCceFWtninKafDZllEiZZz5p7ZzuhOpX9RhPKuRIBSHAWx1ePajWhGiETgKh5AS9tEm1mmcT6UBZvPIK7zi70e?key=ItVw1huKgUDmT8UO8bhwXA" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
data = [{"Товар": "Товар№1", "Цена": 1500}, {"Товар": "Товар№2", "Цена": 6000}]
key = "Товар"
result = get_values_by_key(data, key)
```

{% endtab %}
{% endtabs %}

## Как заменить значение в словаре&#x20;

{% tabs %}
{% tab title="Описание" %}
**имя\['ключ'] = значение** - замена значения элемента словаря по заданному ключу. Если указан несуществующий ключ, то произойдет добавление нового элемента словаря
{% endtab %}

{% tab title="Примеры" %}
**Пример:**

Для замены значения конкретного элемента массива пишем обращение к нему *имя\_массива\[индекс] = значение или имя\_*&#x441;ловаря\[ключ] = значение

<figure><img src="/files/wv58PeWvxCBPTrdREA9S" alt=""><figcaption></figcaption></figure>

Ответ:&#x20;

<figure><img src="/files/shUhf7SoIGyMws42glCr" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
dicts = {"a": "11", "d": "privet"}

/*Заменить в словаре*/
dicts['d'] = AAAAA

/*Добавить в словарь   dicts['key'] = 'VVVVVVVVVVV'*/
dicts['m']=new

/*Заменить в словаре на число*/
dicts['a'] = int('555')
```

{% endtab %}
{% endtabs %}

## Как добавить значение в словарь

{% tabs %}
{% tab title="Описание" %}
**имя\_*****словаря\['ключ'] = 'значение'** -* добавление нового значения в словарь.&#x20;

{% hint style="warning" %}
Если ключ ранее не существовал, то произойдет добавление пары ключ: значение, иначе - замена значения для указанного ключа
{% endhint %}
{% endtab %}

{% tab title="Примеры" %}
Пример:

<figure><img src="/files/niuDGLbGm7C2snstKU3a" alt=""><figcaption></figcaption></figure>

Результат:

<figure><img src="/files/s4HLVohvb35yGUn7w1Qp" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
/*Добавить в словарь   dicts['key'] = 'VVVVVVVVVVV'*/
dicts['m']=new
```

{% endtab %}
{% endtabs %}

## Как проверить наличие ключа в словаре

{% tabs %}
{% tab title="Описание" %}
**exist\_key(mass, key)** - для проверки наличия ключа в словаре.&#x20;

Параметры:&#x20;

**mass -** словарь&#x20;

**key -** ключ для поиска.&#x20;

Возвращаемое значение True или False, в зависимости найден ключ или нет.
{% endtab %}

{% tab title="Примеры" %}
Пример использования:

<figure><img src="/files/Lir4duANuhYDQsOiruUD" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
s = {"1": 123, "2": 234, "q": {"w": "e"}} 
q = if(exist_key(s, 'q'), 'Найдено', 'Еще строка')
```

{% endtab %}
{% endtabs %}

## Как проверить позицию ключа в словаре

{% tabs %}
{% tab title="Описание" %}
**key\_index(mass, key)** - для проверки позиции ключа в словаре.&#x20;

**Параметры:** \
**mass -** словарь  \
**key -** ключ для поиска.&#x20;

{% hint style="info" %}
Позиция в словаре считается с 0. Таким образом первый элемент будет 0, второй элемент будет 1 и так далее.
{% endhint %}
{% endtab %}

{% tab title="Примеры" %}
Пример использования:

<figure><img src="/files/yliKnd7M0rwxRI7lm1EP" alt=""><figcaption></figcaption></figure>

*Результат:*

<figure><img src="/files/Dd0hERVapfQbiyZmdlnx" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
s = {"1": 123, "2": 234, "q": {"w": "e"}} 
q = key_index(s, 'q')
```

{% endtab %}
{% endtabs %}

## Как узнать количество элементов в словаре

{% tabs %}
{% tab title="Описание" %}
**arr\_len(mass)** - для определения длины словаря.&#x20;

Параметр:\
**mass -** *словарь*&#x20;

Результат: Возвращает число - длину словаря.

{% hint style="warning" %}
Будьте внимательны при передаче параметра в функцию! Если вызвать функцию без параметров, вернет 0, если в параметрах не массив и не словарь, вернет -1.
{% endhint %}
{% endtab %}

{% tab title="Примеры" %}
Пример использования

<figure><img src="/files/MHd2hDMOwMmlnZYHuREj" alt=""><figcaption></figcaption></figure>

Ответ:&#x20;

<figure><img src="/files/RtebzP2zmsRz7WWizT2a" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}
`/`*`словарь`*`/ радуга = {"каждый":"красный","охотник":"оранжевый","желает":"желтый","знать":"зеленый","где":["бирюзовый","светло-голубой", "темно-голубой"],"сидит":"синий","фазан":"фиолетовый"}`

`dlina=arr_len(радуга)`
{% endtab %}
{% endtabs %}

## Как удалить элемент из словаря

### По индексу или ключу

**del(mass, key)** - для удаления элемента из массива  по индексу или из словаря по ключу. Принимает два параметра: массив/словарь, индекс/ключ, по которому будет удаление. Возвращает измененный словарь или массив, исходную строку не меняет.

Пример со словарем:

<figure><img src="/files/619rYi3tAhHxiTyk4pK4" alt=""><figcaption></figcaption></figure>

![](/files/-MVMIjOxhSInSxoyhF9G)

Пример с массивом:&#x20;

<figure><img src="/files/SFOwY2Y9Rz6ifIS92hCJ" alt=""><figcaption></figcaption></figure>

![](/files/-MVMJ3kUkn7_9Un345uZ)

{% hint style="warning" %}
Если в качестве значений массива или словаря используются числа, то для удаления элемента пользуйтесь функцией remove()
{% endhint %}

## Как перевести словарь в человекочитаемый текст

{% tabs %}
{% tab title="Описание" %}
**humanize(dict, delimiter, from\_i, to\_i)**&#x20;

Параметры:

**dict** - имя словаря\
**delimiter** - разделитель между строками\
**from\_i** - индекс элемента, с которого начинать вывод (нумерация с 0)\
**to\_i** - индекс элемента, до которого выводить данные (не включительно)
{% endtab %}

{% tab title="Примеры" %}
Разберем на примере:

<figure><img src="/files/M6Efb2EKe8b2OcGLdvXv" alt=""><figcaption></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
dict = {"[id146467928|Дмитрий]":"6","[id145255525|Матвей]":"20"}
r = humanize(dict, ': ')
```

{% endtab %}
{% endtabs %}

## Для сортировки  словарей&#x20;

sort() | sort\_by\_value()

{% tabs %}
{% tab title="Описание" %} <mark style="background-color:blue;">**Сортировка словаря**</mark>

**sort(dict, b)** - сортирует массив по значению, а словарь по ключу

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;dict**- словарь

**b** - направление сортировки (False - по возрастанию (по умолчанию), True - по убыванию)

<mark style="background-color:blue;">**Сортировка словаря по значению**</mark>

**sort\_by\_value(dict, b) -** сортировка словаря по значениям.

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;dict**- словарь

**b** - направление сортировки (False - по возрастанию (по умолчанию), True - по убыванию)
{% endtab %}

{% tab title="Примеры" %}
Пример сортировки массива по убыванию и словаря по возрастанию:

<figure><img src="/files/dUGK9mKYZAQHfo7oYAu7" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/QNBGbhwBlrqv7O43DoGt" alt=""><figcaption><p>Результат сортировки</p></figcaption></figure>

Сортируем словарь по значениям:

<figure><img src="/files/2eAOzPbityOZJUoHlu5W" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/fynKlaFjc2i3n2juu1uH" alt=""><figcaption><p>результат сортировки</p></figcaption></figure>
{% endtab %}
{% endtabs %}

## Перевод словаря в кнопки&#x20;

**tools\_make\_button\_str\_checker() | tools\_check\_user\_input()**

{% tabs %}
{% tab title="Описание" %} <mark style="background-color:blue;">**Перевод массива/словаря в кнопки**</mark>

**tools\_make\_button\_str\_checker(values\_list, key, in\_line, button\_type)**&#x20;

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;values\_list** - массив строк или словарей, данные которого будут использоваться для получения клавиатуры или нумерованного списка\
**key** - ключ, по которому будет производиться выборка из массива словарей values\_list \
**in\_line** - количество кнопок в строке (по умолчанию равен 1) \
**button\_type** - тип кнопок (по умолчанию reply-клавиатура).  \
Возможные значения: 0 - reply-клавиатура, 1 - inline-клавиатура ( кнопки в тексте)

Результат исполнения функции - словарь вида:

{"**numbered\_list**":"1. Футболки\n2. Шорты\n3. Носки\n4. Кепки\n","**buttons**":\[{"type":"inline","text":"Футболки","line":0,"index\_in\_line":0},{"type":"inline","text":"Шорты","line":0,"index\_in\_line":1},{"type":"inline","text":"Носки","line":1,"index\_in\_line":0},{"type":"inline","text":"Кепки","line":1,"index\_in\_line":1}],"**checker**":"Футболки;1;Шорты;2;Носки;3;Кепки;4;"}

Значения словаря в дальнейшем можно подставлять в поля в конструкторе:

<figure><img src="/files/z8FYvlQcCBXem7lJJ2fs" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/JsLFyPURGRCAqyQajGoq" alt=""><figcaption></figcaption></figure>

<mark style="background-color:blue;">**Получение значения словаря на основе выбора клиента**</mark>&#x20;

**tools\_check\_user\_input(values\_list, user\_input, key, return\_key)**&#x20;

Параметры:

<mark style="color:red;">**!**</mark>**&#x20;values\_list** - массив строк или словарей, данные которого будут использоваться для получения клавиатуры или нумерованного списка\ <mark style="color:green;">Пример словаря:</mark> \[{"text":"Футболки","price":100},{"text":"Шорты","price":150},{"text":"Носки","price":20},{"text":"Кепки","price":50}]\ <mark style="color:red;">**!**</mark>**&#x20;user\_input** - значение введенное пользователем из числа значений, полученных из  словаря values\_list \ <mark style="color:green;">Пример значения:</mark> Кепки\
**key** - ключ, по которому будет производиться выборка из массива словарей values\_list \ <mark style="color:green;">Пример ключа:</mark> text\
**return\_key** -  возвращаемое  значение для заданного ключа key из словаря values\_list \ <mark style="color:green;">Пример возвращаемого значения:</mark> price
{% endtab %}

{% tab title="Пример" %}
Разберем использование функции на примере реализации корзины товаров:

1.Задаем массив и разбираем его на нумерованный список, кнопки и список возможных значений (для  мессенджеров без кнопок) при помощи функции tools\_make\_button\_str\_checker()

<figure><img src="/files/WQFZ5KQZqyTkc53CQtnB" alt=""><figcaption><p>Пример использования функции <strong>tools_make_button_str_checker()</strong></p></figcaption></figure>

<figure><img src="/files/obgi2448tuo3UzswsGat" alt=""><figcaption><p>Реузльтат выполнения функции <strong>tools_make_button_str_checker()</strong></p></figcaption></figure>

2.Используем полученные значения buttons, numbered\_list для организации возможности выбора товара:

<figure><img src="/files/ioB078zijh4FSgWZw75d" alt=""><figcaption><p>Пример использования функции <strong>tools_make_button_str_checker()</strong></p></figcaption></figure>

3.А список возможных значений checker используем для проверки вводимых клиентом данных:

<figure><img src="/files/ApuDItkacNiKcBeJmJxF" alt=""><figcaption><p>Пример использования функции <strong>tools_make_button_str_checker()</strong></p></figcaption></figure>

4.Осталось вывести клиенту цену выбранного товара. Это удобно сделать при помощи функции tools\_check\_user\_input()

<figure><img src="/files/TvIb8UISzVFq8f3zELST" alt=""><figcaption><p>Пример использования функции <strong>tools_check_user_input()</strong></p></figcaption></figure>
{% endtab %}

{% tab title="Пример кода для копирования" %}

```
list = [{"text":"Футболки","price":100},{"text":"Шорты","price":150},{"text":"Носки","price":20},{"text":"Кепки","price":50}]
res = tools_make_button_str_checker(list, "text", "2", "1")
numbered_list = res['numbered_list']
buttons = res['buttons']
checker = res['checker']

res_check = tools_check_user_input(list, user_input, 'text', 'price')
```

{% endtab %}
{% endtabs %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/peremennye-i-funkcii/kalkulyator/massivy-i-slovari/dlya-raboty-so-slovaryami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
