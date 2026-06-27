> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/message/action.md).

# Вкладка: Действие

<figure><img src="/files/lQBdtzKGcZIpFX3CZkbV" alt="" width="563"><figcaption></figcaption></figure>

### Поле: Добавить действие

Данное поле представляет собой выпадающий список из действий, которые можно настроить в блоке.&#x20;

#### Добавление действия:

Чтобы добавить действие в блоке, нажмите  "+ Добавить действие". &#x20;

<figure><img src="/files/lvT8RDw5Al0kgMeoaZJH" alt="" width="563"><figcaption></figcaption></figure>

По умолчанию: тип действия - Действие:  никакое действие не выбрано.

<figure><img src="/files/cyAU4qrXkM1HcmqbZh3N" alt="" width="563"><figcaption></figcaption></figure>

Можно добавлять несколько действий:

<figure><img src="/files/PRWVBGygsiIzIvLeM9XI" alt="" width="563"><figcaption></figcaption></figure>

### Действие: Переместить по воронке

Можно выбрать в какое [состояние воронки в Salebot CRM](/crm-sistema/crm-dlya-biznesa.md#sozdanie-i-nastroiki-voronki) будет помещен клиент при переходе в данный блок. Удобно не только для продвижения клиента по этапам воронки, но и для наглядной сегментации клиентов по категориям. Например, заявки от частных лиц в одну колонку, а от организаций - в другую колонку SalebotCRM.

<figure><img src="/files/BYFrEEOgkXBO8cT3pjc4" alt="" width="563"><figcaption></figcaption></figure>

### Действие: Добавить в список / Удалить из списка / Переместить в список

Можно добавлять клиентов [в списки](/crm-sistema/spiski-i-metki.md). Списки используют не только для сегментации базы, но и для настройки минимальной аналитики по спискам.&#x20;

<div><figure><img src="/files/cV19zK9WvqB4zPZcPFwb" alt=""><figcaption></figcaption></figure> <figure><img src="/files/waVhVk28b6CnEYP0GMjz" alt=""><figcaption></figcaption></figure> <figure><img src="/files/Sbn2l973d1SNc1cPodT6" alt=""><figcaption></figcaption></figure></div>

Действие "Переместить в список" предполагает, что пользователь будет удален из списка А и перемещен в список Б.

Создать новый список и выполнять другие действия с ними можно в разделе Списки (левое меню конструктора).&#x20;

После перехода клиента в блок с настроенными действиями, у клиента изменятся списки в которые он добавлен. \
В разделе Клиенты можно будет настраивать фильтрацию клиентов по спискам, а в диалоге с клиентом в правом меню отображаются списки, в которые данный клиент добавлен.

Увидеть список, в котором состоит клиент, можно в разделе "Клиенты" в карточке клиента:

<figure><img src="/files/F16Fryn3T7i8oxfA0C7e" alt="" width="375"><figcaption></figcaption></figure>

### Действие: Добавить метку / Удалить метку

Метки упрощают сегментацию клиентов и помогают визуально ориентироваться в диалогах в разделе Клиенты. Также как и списки, можно использовать для фильтрации клиентов.

<div><figure><img src="/files/djLs9dsRfQH8Tb6XjsWz" alt=""><figcaption></figcaption></figure> <figure><img src="/files/juIJZ8hNG2j3OSOA6Ltr" alt=""><figcaption></figcaption></figure></div>

Создавать метки и управлять ими можно в разделе Списки - вкладка Метки. После перехода в блок с действием "Добавление метки" данная метка отобразится в диалоге с клиентом.

<figure><img src="/files/BN9oYBuTrd9WRqq8AHea" alt="" width="563"><figcaption><p>Пример использования меток для сегментации клиентов</p></figcaption></figure>

### Действие: Выполнить код на python

<figure><img src="/files/U9WzjSA2QtVZ3TzpDo5Q" alt="" width="375"><figcaption></figcaption></figure>

До входа в блок, в котором будет использовано действие для выполнения кода на python, нужно назначить переменные, используемые в python скрипте. Все переменные, которые доступны в калькуляторе, будут доступны в скрипте: они будут переданы в словарь data, заранее его создавать не нужно.

<figure><img src="/files/lwtlzUPOKw64JFsBxdqq" alt=""><figcaption></figcaption></figure>

Пример:

В блоке "Первостепенной проверки условия" назначены переменные first и second.

<figure><img src="/files/ZbOV2THul4eGqtrZTyiM" alt="" width="563"><figcaption></figcaption></figure>

Далее во втором блоке устанавливаем действие "Выполнить код на Python":&#x20;

<figure><img src="/files/VEQFGoitYByxYF9L21fx" alt=""><figcaption></figcaption></figure>

В коде python обращаемся к этим переменным по ключу в словаре data, совпадающим с наименованием переменной из первого блока (создание переменной a), либо можно обратиться к переменной так же, как в выводе текста (создание переменной b).

{% hint style="info" %}
Обращаем внимание на создание переменной b - перед выполнением скрипта, все переменные, имеющие вид #{name\_variable}, заменяются значениями соответствующих переменных, как при отправке сообщения клиенту.
{% endhint %}

<figure><img src="/files/5yLLupC2DzdYTnMY88MC" alt=""><figcaption></figcaption></figure>

В конце скрипта, как результат работы скрипта, возвращается переменная result, содержащая **{'**<mark style="color:red;">**a**</mark>**': a, '**<mark style="color:red;">**b**</mark>**': b, '**<mark style="color:red;">**sum\_ab**</mark>**': sum\_ab}.** Возвращать данные нужно именно в таком формате, тогда запишутся новые переменные, наименованием которых будут ключи возвращаемого словаря, а значениями переменных - соответствующие значения в словаре.&#x20;

Отработка ботом блоков с выполняемым скриптом на Python:

<figure><img src="/files/itraha43OJrXSYHI6KSh" alt=""><figcaption></figcaption></figure>

#### Ошибки

Не удалось скачать файл - ошибка, из-за которой сохраненный файл с кодом не скачался для выполнения при отправке сообщения

result is not dict - возвращаемое значение должно быть словарем в формате ключ - значение, как на на примере ниже:

<figure><img src="/files/MTyoS6N8wojAMzhPX1TA" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/message/action.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
