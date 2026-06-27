> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chasto-zadavaemye-voprosy/kak-sdelat/opros-v-chat-bote-s-ballami.md).

# Опрос в чат-боте с баллами

В конструкторе вы сможете создать опрос в боте с начислением баллов в зависимости от ответа клиента:

<figure><img src="/files/mSYIuC5UQM1Zjj9aUAzr" alt="" width="563"><figcaption></figcaption></figure>

Например, опрос в чат-боте можно использовать для проверки знаний ваших пользователей, для социологических или психологических опросов.

## Настройки схемы

Чтобы сделать опрос быстрее и проще, заранее подготовьте сценарий с вопросами и ответами в обычном документе:

<figure><img src="/files/wXOUV0Ekiud3a4h5jOYv" alt=""><figcaption></figcaption></figure>

### Вход в опрос

Создайте в конструкторе блок с условием ("Стартовый блок" или "Не состояние с условием"), с которого будет начинаться опрос:

<figure><img src="/files/VDcCYfk2GJkdbQ9Ro7iF" alt=""><figcaption></figcaption></figure>

В стартовом блоке на примере прописано только сообщение со вступительным словом. Теперь необходимо создать блок ниже: для этого откройте меню дополнительных настроек и нажмите соответствующую кнопку:

<figure><img src="/files/MO6MrrNw4Vu1FUbuqMVv" alt=""><figcaption></figcaption></figure>

#### Автоматический переход

Далее перейдите в настройку стрелки и установите таймер, чтобы первый вопрос клиенту был отправлен автоматически:

<figure><img src="/files/sMwGduAudHFp7COVrQfL" alt=""><figcaption></figcaption></figure>

#### Переход к опросу по кнопке

Если нужно, чтобы пользователь начинал опрос по клику на кнопку, создайте в стартовом блоке соответствующие кнопки:&#x20;

1. для этого перейдите в зеленый блок;
2. нажмите на "Кнопки", чтобы развернуть вкладку настроек;
3. кликните на "+ Добавить кнопку":

<figure><img src="/files/BR8DEr7VcFxL1FhFlksM" alt=""><figcaption></figcaption></figure>

Далее в открывшемся модальном окне пропишите текст кнопки, затем нажмите на "Добавить кнопку":

<figure><img src="/files/ZuptbYZWgJz77DL5BJzv" alt=""><figcaption></figcaption></figure>

Перейдите в настройки стрелки и в условии отметьте галочкой кнопку:

<figure><img src="/files/o8X4XzLMe79xXh45Lmvv" alt="" width="563"><figcaption></figcaption></figure>

Данный шаг нужен для того, чтобы клиент переходил в следующий блок только по определенному условию (в данном случае — условием будет являться текст кнопки).

Выбор соответствия — полное совпадение:

<figure><img src="/files/O39Ka045enm6hHxkN6Nk" alt="" width="563"><figcaption></figcaption></figure>

### Настройка вопросов и ответов

Теперь перейдем к самому интересному — настройке вопросов с ответами: здесь вам понадобится ваш заготовленный сценарий с вопросами.&#x20;

Шаг 1. В блоке, к которому ведет стрелка из стартового блока, вставьте из сценария в поле сообщения первый вопрос:

<figure><img src="/files/CYQaXff81eQh6vfYMFhi" alt=""><figcaption></figcaption></figure>

Шаг 2. Далее в зависимости от количества ответов, создайте кнопки с вариантами ответа (в примере будет 4 кнопки):

<figure><img src="/files/ZB4IrP8tiLHJc6RwnoFb" alt=""><figcaption></figcaption></figure>

Шаг 3.В модальном окне с настройками кнопки пропишите текст ответа и нажмите "Добавить":

<figure><img src="/files/rfLkxaYc4bGMr8rfK37w" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
**Важно!**&#x20;

В Телеграмме невозможно сделать слишком длинные варианты ответов в кнопке.

Вариант для телеграма: прописать ответы в сообщении и в кнопках указать более лаконичный текст:

<img src="/files/5hwi9Es4vGriVITCMWk6" alt="" data-size="original">

Если варианты ответов в кнопках будут слишком длинные, то будет приходить следующая ошибка:

<img src="/files/qfwkzprkYAz36XMDgx0W" alt="" data-size="original">

Учитывайте максимальное количество символов кнопки для Telegram.

Длинные варианты ответа, например, можно предусмотреть для [онлайн-чата на сайт](broken://pages/bFGXHAuc8giXRvQy74bS).
{% endhint %}

Таким образом добавьте необходимое количество кнопок в блок:

<figure><img src="/files/pvnuOfHkZjRssanmDR5E" alt=""><figcaption></figcaption></figure>

Шаг 4. Теперь нажмите на меню дополнительных настроек и создайте столько блоков, сколько у вас создано кнопок с ответами на вопрос:

<figure><img src="/files/8dVexnVQtTbvEU8DuJMT" alt=""><figcaption></figcaption></figure>

В примере на четыре кнопки с ответами создано четыре блока:

<figure><img src="/files/17fVIfb0GEyz4Zh71tPa" alt=""><figcaption></figcaption></figure>

Шаг 5. Теперь перейдите в настройки стрелок и отметьте галочками в условии одну кнопку:

<figure><img src="/files/f1OXuWbqDfSsmGBu0idE" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
Условия в настройках стрелки должны удовлетворять только тексту одного вариантов из ответов клиента — это значит, что в условии каждой стрелки должна быть отмечена одна кнопка, в следующей стрелке — соответственно другая кнопка и т.д.
{% endhint %}

На примере видно, что каждой стрелке соответствует только одна из кнопок:

<figure><img src="/files/1RIFK4jCfB6z26YWEBMC" alt=""><figcaption></figcaption></figure>

Шаг 6. Далее создаем блок ниже, в который будут вести стрелки из четырех блоков с ответами на вопрос:

<figure><img src="/files/CoYOg6qVnsvdb1PcNscz" alt=""><figcaption></figcaption></figure>

Шаг 7. В настройках каждой стрелки, ведущих к одному блоку, мы установим таймер в 0 секунд:

<figure><img src="/files/ENBYnGVYfSAsGNJkC3h0" alt=""><figcaption></figcaption></figure>

Шаг 8. И в блоке, к которому ведут 4 стрелки, пропишем следующий вопрос:

<figure><img src="/files/UEbaULDDwVCaB1xxZ2Gy" alt=""><figcaption></figcaption></figure>

Теперь создадим в блоке со вторым вопросом точно так же варианты ответа, которые будут лежат в кнопках:

<figure><img src="/files/bTyipBeySCUQW3yS4BoY" alt=""><figcaption></figcaption></figure>

Теперь из блока со вторым вопросом создадим четыре блока ниже, в стрелках которых в условии пропишем варианты ответа, — по сути, теперь будут повторяться шаги с 1 по 8, где нужно заполнить поле вопроса, создать необходимое количество кнопок с вариантами ответа и в условии стрелки прописать вариант ответа.

<figure><img src="/files/3JDMPTxmRX69H5IYjCdt" alt=""><figcaption></figcaption></figure>

На примере выше наглядно можно увидеть повторяющиеся настройки блоков с вопросами. Таким образом заполняются все вопросы и ответы.&#x20;

Шаг 9. Далее вам нужно создать следующий блок с вопросом: для этого создайте блок "Состояние" и протяните к нему стрелки:

<figure><img src="/files/74PRMJ8cCtVfPUIMaxK9" alt=""><figcaption></figcaption></figure>

Так будет создан блок третьего вопроса: теперь вы можете продолжить заполнять вопросы с ответами по описанным шагам 1-9.

{% hint style="success" %}
Удобнее и быстрее будет сначала создать все вопросы и ответы на них, а затем присвоить переменную с начислением баллов.&#x20;

Как начислять баллы в ходе опроса, рассказали далее.
{% endhint %}

### Как начислять баллы?

Шаг 1. Перейдите в блок с первым вопросом:

<figure><img src="/files/Vq5XdawTcnaU5Q8FUXB8" alt=""><figcaption></figcaption></figure>

В калькуляторе объявите переменную, например, с названием "балл" со значением ноль:

<figure><img src="/files/MarCahPeOjHrgQbSMAZx" alt=""><figcaption></figcaption></figure>

Шаг 2. Нужно перейти в блок, в который ведет стрелка с ответом на вопрос, и открыть калькулятор:

<figure><img src="/files/TKOxesDgMOWPNTxSi5th" alt=""><figcaption></figcaption></figure>

В соответствии со сценарием, прибавьте количество баллов к переменной в калькуляторе:

<figure><img src="/files/MsW5s93LuavVnhLvCsno" alt=""><figcaption></figcaption></figure>

В блоке, в который ведет вариант А, прибавляется 4 балла:

<figure><img src="/files/DjeVMPfCK44eykOSmxMx" alt=""><figcaption></figcaption></figure>

В блоке, в который ведет вариант В, прибавляется 3 балла:

<figure><img src="/files/Yd3w0I65gFg0QdMvly0A" alt=""><figcaption></figcaption></figure>

В блоке, в который ведет вариант С, прибавляется 2 балла:

<figure><img src="/files/GJmnr3tyRrrIe1SDXZiY" alt=""><figcaption></figcaption></figure>

В блоке, в который ведет вариант D, прибавляется 1 балл:

<figure><img src="/files/7pbRPHGC8d0LX8xOGKo6" alt=""><figcaption></figcaption></figure>

То же самое проделываем со следующими блоками, в которые ведут стрелки с вариантами ответа, — нужно прибавить к переменной баллы в зависимости от варианта ответа:

<figure><img src="/files/FRVHqbljiH3G3ERuTEuA" alt=""><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!&#x20;

Теперь вы создали схему чат-бота с вопросами и начислением баллов клиенту.
{% endhint %}

### Как вывести результат?

#### Вариант 1. Выводим результат в тексте:

В последнем блоке, в который ведут стрелки из блоков с начислением баллов, вывести результат можно с помощью конструкции #{балл}:

<figure><img src="/files/kvoYV14T5IfS8PlkAymS" alt=""><figcaption></figcaption></figure>

Тогда ваш пользователь наглядно сможет увидеть итоговое количество баллов, которые он набрал в ходе опроса и сравнить результаты.

#### Вариант 2. Калькулятор и оператор IF

Если вы хотите выводить более короткий и лакончиный ответ, то воспользуйтесь калькулятором с функцией IF:

<figure><img src="/files/4gKMSGgZodH3Pjv1BTrw" alt=""><figcaption></figcaption></figure>

То есть нужно прописать условия для бота "<mark style="color:$danger;">**если баллов меньше 8, то ты меланхолик, если баллов больше или равно 8 и меньше или равно 11, то ты флегматик и т.д.**</mark>" только на понятном системе языке.&#x20;

Код для копирования:

`текст = if(балл < 8, "Ты меланхолик - застенчивый, чувствительный, склонен к размышлениям и переживаниям. Отличаешься глубокой эмоциональностью", if(балл >= 8 and балл <= 11, "Ты флегматик: спокойный, уравновешенный, рассудительный. Не любишь суету, предпочитаешь стабильность", if(балл > 11 and балл < 21, "Ты сангвиник: общительный, жизнерадостный, легко адаптируешься к изменениям. Склонен к поверхностному восприятию, но легко загораешься", "Ты холерик: энергичный, импульсивный, склонен к резким реакциям. Лидер, но можешь быть несдержан.")))`

Итоговая схема выглядит следующим образом:

<figure><img src="/files/JAdJzDFbhwcZSYJYKIyZ" alt=""><figcaption></figcaption></figure>

**Важно! Блоки с названием "Начисляем баллы" с пустым сообщением #{none} — в них мы считаем только количество баллов.**

<figure><img src="/files/yuqM99s9XdrpUNZbqeyt" alt=""><figcaption></figcaption></figure>

Итого: как работает бот:

<figure><img src="/files/qKf0XXCMTgO9ATtMaW8Q" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!&#x20;

Теперь вы умеете создавать опросы для мессенджеров в боте!
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chasto-zadavaemye-voprosy/kak-sdelat/opros-v-chat-bote-s-ballami.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
