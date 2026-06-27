> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/crm-sistema/sdelki-v-crm.md).

# Сделки в CRM

Сделки в CRM отображаются в виде карточек с информацией о клиенте, названии сделок, описании и суммы.&#x20;

<div data-with-frame="true"><figure><img src="/files/kxndaTrUQEiXGdXA5HlD" alt=""><figcaption><p>Рис. 19. Отображение сделок в CRM</p></figcaption></figure></div>

При необходимости можно добавить и другие поля (например, переменные) (см. рис. 8 — 12).

## Кнопка "Создать сделку"

<div data-with-frame="true"><figure><img src="/files/wES9acCWhhHEWvkN66M6" alt="" width="375"><figcaption></figcaption></figure></div>

<p align="center">Рис. 20. Кнопка "Создать сделку"</p>

Создать сделку - модальное окно создания новой сделки:

<div data-with-frame="true"><figure><img src="/files/RAgqx5SE6emtfGfKbvvh" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 21. Модальное окно создания сделки</p>

Вы можете заполнить все данные в форме и создать клиента. Если клиент есть в базе клиентов, то salebot предложит выбрать данного клиента:

<div data-with-frame="true"><figure><img src="/files/BOQ0Fiahv0jSuq1GF9z6" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 22. Выбор клиента из существующих в системе <br>(p.s. все данные вымышлены, совпадения случайны)</p>

В случае, если клиента нет, то для создания клиента в проекте должен быть подключен или WhatsApp или email-бот - в эти каналы вы можете писать первым, поэтому создание клиента пройдет успешно, даже если клиент не найден в базе.

Также можно выбрать состояние воронки, в которое будет добавлена сделка:

<div data-with-frame="true"><figure><img src="/files/dmTcJRhrEyn0L4v5WPII" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 23. Выбор воронки и состояния, где будет создана сделка</p>

Также в окне модальной формы можно добавить переменные сделки:

<div data-with-frame="true"><figure><img src="/files/m7rNCisuhY4hUaAZUdjL" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 24. Вкладка "Переменные сделки" в окне создания сделки</p>

Далее нажмите "Создать", чтобы сделка была добавлена в систему.

## Кнопка "Быстрое добавление"

Данная кнопка также поможет добавить нового клиента в CRM-систему вручную.&#x20;

<div data-with-frame="true"><figure><img src="/files/ojm4yhqBIJV5p6bXuWGq" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 25. Кнопка "Быстрое добавление"<br>(p.s. все данные вымышлены, совпадения случайны)</p>

Кликните по кнопке (рис. 25), чтобы открылось окно с полями для заполнения информации о клиенте:

<div data-with-frame="true"><figure><img src="/files/gUa84Z1GlBT6aleZf5xM" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 26. Окно для быстрого добавления сделки<br>(p.s. все данные вымышлены, совпадения случайны)</p>

Таким образом, сделка будет создана в состоянии "Заинтересовались":

<div data-with-frame="true"><figure><img src="/files/sEz48sO8s4k7jElwIFUm" alt="" width="281"><figcaption></figcaption></figure></div>

<p align="center">Рис. 27. Сделка, созданная с <br>помощью кнопки "Быстрое добавление"</p>

{% hint style="success" %}
Готово!&#x20;

Теперь вы знаете, как создавать сделки.
{% endhint %}

## Создать сделку из чат-бота

<div data-with-frame="true"><figure><img src="/files/2aWTC85cPTxBQL8Az7uL" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 28. Пример схемы чат-бота <br>для создания сделки с помощью функции</p>

Порядок действий:

1. Создайте блок с условием ("Стартовое условие"):

<div data-with-frame="true"><figure><img src="/files/SUPDTSJR6VQYBQi8sRCo" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 29. Настройки блока "Стартовое условие"</p>

В этом блоке обозначим простую информацию для клиента.

2. Создайте блок ниже, соединенный стрелкой с предыдущим блоком:

<div data-with-frame="true"><figure><img src="/files/Oe7v2Fab5JPnRxqsrMa9" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 30. Настройки блока с кнопками</p>

В данном блоке созданы кнопки с функцией "По умолчанию" и текстом "Многостраничный сайт", "Одностраничный сайт". При выборе клиентом кнопки он перейдет в один из блоков "Состояние", а с помощью стрелок мы передали переменную description и активировали чекбокс "Пользователь вводит данные":

<div data-with-frame="true"><figure><img src="/files/C3N34krNRPYSjEjCjGSY" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 31. Настройки стрелки</p>

3. Далее в блоках, к которым ведут стрелки "Многостраничный сайт" и "Одностраничный" сайт запрашиваем номер телефона клиента и сразу объявляем переменную budget со стоимостью услуги (сделки):

<div data-with-frame="true"><figure><img src="/files/MIdLYtGsFhoGmNMkYndI" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 32. Настройки блока с объявлением переменной budget</p>

4. Далее создадим два блока: "Состояние" и "Не состояние". Данные блоки нам понадобятся для проверки номера телефона клиента.&#x20;

<div data-with-frame="true"><figure><img src="/files/veNVo6l2XlGOMg8UT5T5" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 33. Настройки стрелки: проверка номера телефона и <br>объявление переменной для сохранения номера клиента в системе</p>

В условии стрелки указываем регулярное выражение для проверки валидности номера телефона, а выбор соответствия выбираем "Регулярное выражение".

Также активируем чекбокс "Пользователь вводит данные" и указываем переменную phone.

Если клиент введет номер телефона с ошибкой, например, 89938383ааа, то отработается блок "Не состояние" — клиенту будет необходимо повторно ввести номер телефона.&#x20;

Если номер телефона пройдет проверку, то клиент перейдет в следующий блок "Как вас зовут?"

5. Предпоследним блоком в схеме будет блок "Состояние", в котором будем спрашивать у клиента его имя.

<div data-with-frame="true"><figure><img src="/files/SBJpqki2339BVI7LhvOE" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 34. Блок "Состояние" для запроса имени клиента</p>

Из данного блока (рис. 34) протягиваем стрелку со сбором данных:

<div data-with-frame="true"><figure><img src="/files/SrHWKW4PXJAoULAEK7a2" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 35. Настройки стрелки со сбором данных в виде<br>имени клиента</p>

В стрелке активируем чекбокс "Пользователь вводит данные" и указываем переменную client\_name.

6. В последнем блоке прописываем функцию для создания сделки в CRM системе:

<div data-with-frame="true"><figure><img src="/files/GtFGlU0ZGaoe7k20zr1l" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 36. Блок "Состояние" с функцией для создания сделки</p>

**Функция create\_order(name, budget, description, client\_name, phone, email, state\_id) - для создания сделки из чат-бота в CRM**

<details>

<summary>Параметры</summary>

Текущая активная сделка в воронке вместе с переменными станет доступна только в функциях для работы со сделками и в CRM.&#x20;

<table><thead><tr><th width="303.3046875">Параметры</th><th>Значение</th></tr></thead><tbody><tr><td><strong>name</strong></td><td><p>название сделки. </p><p>Необязательный параметр, если не передан, то применит к текущей активной сделке клиента</p></td></tr><tr><td><strong>budget</strong></td><td>стоимость сделки (число).  Необязательный параметр, если не передан, то применит к текущей активной сделке клиента<br>Если передать в параметре <strong>budget</strong> не число, функция вернет ответ: <strong>'budget must be a number'</strong></td></tr><tr><td><strong>description</strong> </td><td>Описание сделки. Необязательный параметр;</td></tr><tr><td><strong>client_name</strong></td><td>(необязательный параметр) строка, имя для нового клиента</td></tr><tr><td><strong>phone</strong></td><td>(необязательный параметр)  строка, телефон для нового клиента</td></tr><tr><td><strong>email</strong></td><td>(необязательный параметр)  строка, емейл для нового клиента</td></tr><tr><td><strong>state_id</strong> </td><td>число, позволяет указать состояние, в котором будет сделка после создания, необязательный параметр</td></tr></tbody></table>

{% hint style="info" %}
Для создания клиента должна быть указана переменная phone или email. Если указана phone, и клиента с таким телефоном в проекте нет, то будет создан новый.

Если указана переменная email без переменной phone, и клиента в проекте с таким адресом нет, будет создан новый.
{% endhint %}

</details>

В схеме мы поэтапно собрали следующие данные:

* Name - название сделки (в примере это "Многостраничный сайт" или "Одностраничный лендинг" — рис. 30-31);
* Budget — стоимость сделки, которую объявили в блоках после выбора клиентом типа сайта (рис. 32);
* Phone — номер телефона клиента (рис. 33);
* Client\_name — имя клиента (рис. 34-35).&#x20;

<div data-with-frame="true"><figure><img src="/files/sMGzkPwFEi540BfWT7sm" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 37. Блок "Состояние" с функцией для создания сделки</p>

При необходимости создания сделки в определенном состоянии сделки, передайте параметр state\_id:

<div data-with-frame="true"><figure><img src="/files/jhzGoKVt1ed5dTA8sevk" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 38. Передача id состояния сделки</p>

{% hint style="info" %}
Важно!&#x20;

Если вы не передаете какие-либо параметры, то вместо параметра передайте none (как на рис. 36, где вместо параметра email указан none).
{% endhint %}

Где найти id состояния (параметр state\_id):

<div data-with-frame="true"><figure><img src="/files/eFABSvBKBjB9cX4hmjPi" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 39. Меню дополнительных настроек состояния</p>

ID состояния:

<div data-with-frame="true"><figure><img src="https://lh7-rt.googleusercontent.com/docsz/AD_4nXcc7z-CsqHVfmZq-RA1SXr0YO3G1UOEeFxykLkOXz3kCGXpwN7_GjOEMkuaKTVvItclZ3_4y0KYjSZ25zeFPrYwiSJBAQ5KCX6tm59Ma4Knk6xCaiNVoT_6J8HVIdDmsYYPnvQ9aQ?key=-rPG2GUEvYW_RB8HLUT5kg" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 40. ID состояния</p>

Теперь бот будет отрабатывать следующим образом:

<div data-with-frame="true"><figure><img src="/files/15qqLYReKcK0Y7ahFsBC" alt="" width="375"><figcaption></figcaption></figure></div>

<p align="center">Рис. 41. Тестирование бота в Telegeam</p>

После чего вы можете найти сделку в том состоянии воронки, ID которого передали в функции create\_order:

<div data-with-frame="true"><figure><img src="/files/ZtgbJxxINw3ZIfutESmW" alt="" width="283"><figcaption></figcaption></figure></div>

<p align="center">Рис. 42. Пример созданной<br>сделки с помощью функции</p>

В разделе "Клиенты" вы сможете увидеть созданного клиента, посмотреть с ним переписку и увидеть сделки.

## Другие настройки

* Строка поиска - поиск сделки по имени клиента.

<div data-with-frame="true"><figure><img src="/files/7GwskQr6836b4ul5ZBpf" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 43. Строка поиска сделки</p>

* Фильтр - позволяет фильтровать сделки с указанием различных параметров. Так же вы можете сохранить созданный фильтр, если часто его используете.

<div data-with-frame="true"><figure><img src="/files/UnFdluks0GKrg7EMh2tt" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 44. Фильтр для сделок</p>

## Запуск бота при смене состояния воронки

Вы можете запустить бота при перемещении сделки по этапу воронки в CRM. Для включения данной функции перейдите в настройки проекта:

<div data-with-frame="true"><figure><img src="/files/WwckUyaTxosssjtk0k0d" alt="" width="200"><figcaption></figcaption></figure></div>

<p align="center">Рис. 45. Вкладка с настройками<br>проекта</p>

\
Далее перейдите в раздел Callback's:

<div data-with-frame="true"><figure><img src="/files/pqHTy666KtSSNjGas1h2" alt=""><figcaption></figcaption></figure></div>

<p align="center">Рис. 46. Вкладка Calbacks в настройках проекта</p>

Нажмите на "Настройки колбеков при переходе между этапами CRM":

<div data-with-frame="true"><figure><img src="/files/vgBHyyI586ZoxBHvfFgj" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 47. Переход в настройки колбеков для CRM</p>

После чего вам откроется модальное окошко со всеми воронками, которые существуют в проекте, где необходимо выбрать всю воронку или только определенное состояние:

<div data-with-frame="true"><figure><img src="/files/ZO5CzdGeEITu9kiODTCZ" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 48. Выбор воронки или состояний воронки</p>

Затем сохраните настройки.&#x20;

Теперь при смене состояния сделки (в автоматическом или ручном режиме) из любого места на сайте сгенерируется уведомление, с помощью которого можно настроить реакцию в боте.

{% hint style="info" %}
Уведомление умеет вид: **crm\_state\_changed Имя воронки:Название этапа**
{% endhint %}

Также в карточке клиента появится переменная **callback\_query\_id**, в которой будет сохранен идентификатор сделки, для которой отправлено уведомление

<div data-with-frame="true"><figure><img src="/files/NEtetmjTS4Swqvi14pkZ" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 49. Вид колбека при смене состояния</p>

Чтобы запустить бота на это событие, необходимо указать текст колбека (уведомления) в поле  Условие стрелки или любого блока с условием ("Стартовое условие", "Не состояние с условием").&#x20;

<div data-with-frame="true"><figure><img src="/files/TgQP7A46EEVbnKMaNR0F" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 50. Настройка реакции с помощью блока "Не состояние с условием"</p>

<div data-with-frame="true"><figure><img src="/files/WH4gYVC8I9FSeVIdqf4j" alt="" width="563"><figcaption></figcaption></figure></div>

<p align="center">Рис. 51. Настройка реакции с помощью блока "Стартовое условие"</p>

{% hint style="info" %}
Если вы не хотите выбивать клиента из основной схемы чат-бота, воспользуйтесь блоком "Не состояние с условием" — в этот блок нельзя перейти, поэтому клиента после реакции на уведомление (колбек) не выбьет из основной воронки, но сообщение все равно будет отправлено.

А если вам нужно продолжить воронку с реакции на смену состояния, то используйте блок "Стартовое условие", тогда клиент перейдет в блок "Стартовое условие" с реакцией на колбек, с которого вы можете продолжить воронку.
{% endhint %}

### Перемещение сделок

Для перемещения сделки в любое состояние воронки достаточно захватить ее левой кнопки мыши и переместить в необходимое состояние:

<div data-with-frame="true"><figure><img src="/files/edSsQE8MT2avbDhJRIow" alt="" width="563"><figcaption></figcaption></figure></div>

При перемещении сделки в "Проваленные" или "Архив" появляется модальное окно с просьбой указать причину перемещения, далее создается переменная сделки failed\_reason или achived\_reason соответственно.

В failed\_reason или achived\_reason и вписывается текст причина перемещения в проваленные, при восстановлении сделки обратно будет добавляться переменная restored\_from\_failed или restored\_from\_archived со значением "true"

## Установить запрет на перемещение сделки в указанное состояние

Если необходимо ограничить стадии в которые сделки будет перемещена при ручном перемещении, то настройте запрет в настройках состояния. \
Откройте воронку и перейдите в настройки состояния.&#x20;

<div data-with-frame="true"><figure><img src="/files/HDvuza0qYaDZ1YWHpap2" alt="" width="440"><figcaption></figcaption></figure></div>

В настройках состояния вы можете задать состояния, в которые сделку нельзя будет перенести. Отмечать выбранные этапы воронки необходимо в чек-боксе. Вы можете указать несколько состояний. После того, как все необходимые состояния будут выбраны, сохраните изменения.&#x20;

<div data-with-frame="true"><figure><img src="/files/Zw7KFIJhLJfg112Ke0iM" alt="" width="563"><figcaption></figcaption></figure></div>

После того, как настройки будут сохранены, при перемещении сделки в разделе SalebotCRM недоступные состояния будут визуально отличаться по цвету. Они станут темнее, и возможность переноса будет ограничена. В диалоге с клиентом, запрещенные состояния отображаться не будут если установлен запрет на перенос.&#x20;

## Реакция на удаление сделки в CRM

При удалении сделки в CRM в бот клиенту приходит колбек об этом **crm\_lead\_removed**

<div data-with-frame="true"><figure><img src="/files/R3Kl6hdImNXE2ehxXfey" alt=""><figcaption><p>Callback об удалении сделки</p></figcaption></figure></div>

## Функции API Salebot

{% hint style="info" %}
Для работы со сделками в чат-боте можно использовать функции API в калькуляторе.

Подробнее о функциях читайте в статье "[Для работы со сделками](/chatbots/peremennye-i-funkcii/kalkulyator/dlya-raboty-so-ssylkami.md)".
{% endhint %}

## Переключение сделок

Если на странице CRM происходят действия со сделками, то приходят колбеки со следующими ключевыми словами:

1. change\_responsible\_order - у сделки поменяли ответственного
2. crm\_state\_changed - сделку перенесли по стадиям воронки
3. crm\_system\_state\_changed - сделку перенесли в Проваленные, Успешные или Архивные
4. crm\_lead\_removed - сделку удалили

Также в переменные клиента записывается переменная "callback\_order\_id", содержащая id сделки, с которой происходили действия на странице CRM.

<div data-with-frame="true"><figure><img src="/files/RZBLdTcmhMoa1iQJSxBK" alt=""><figcaption></figcaption></figure></div>

При обработке такого колбека в блоке сделка временно становится активной - то есть в этом блоке можно обращаться к её переменным.

При переходе в следующий блок работает стандартная логика Salebot - при обращении к переменным сделки пользователь получит значения для последней сделки клиента.

### Переключение сделки в активное состояние в боте

**switch\_order(order\_id)** - позволяет переключить сделку в активное состояние, чтобы обращаться к её переменным

order\_id - необязательный параметр, id сделки. Если не передавать, то активной станет последняя сделка Клиента.&#x20;

В функцию switch\_order(order\_id) нужно передать id сделки, тем самым сделать эту сделку активной. Если вызвать эту функцию в калькуляторе и передать id желаемой сделки, то далее в блоке можно обращаться к переменным этой сделки.

<div data-with-frame="true"><figure><img src="/files/NKzA4bLxcSgCUvQb8Ku4" alt="" width="563"><figcaption></figcaption></figure></div>

Если в функцию switch\_order передать id удалённой или несуществующей сделки, то переключения не произойдет, и функция вернет id той сделки, которая сейчас установлена активной у Клиента (или None, если у Клиента нет активной сделки).

Таким образом можно проверить, произошло ли переключение сделки, сравнив order\_id, который был передан в функцию, с тем результатом, что она вернула:

`switch_result = switch_order(order_id)`

`РЕЗУЛЬТАТ = if(switch_result == order_id, value_if_true, value_if_false)`

<div data-with-frame="true"><figure><img src="/files/bILp3yXmcFTLtufBTTJu" alt="" width="563"><figcaption></figcaption></figure></div>

Если в функцию switch\_order не передавать ничего, то функция сделает активной последнюю сделку Клиента, таким образом можно откатывать переключение сделки (после переключения сделки или в блоке, обрабатывающем колбеки от CRM, если не требуется делать временно активной сделку, по которой пришел колбек)


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/crm-sistema/sdelki-v-crm.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
