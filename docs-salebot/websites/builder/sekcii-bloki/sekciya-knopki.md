> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/sekcii-bloki/sekciya-knopki.md).

# Секция "Кнопки"

С помощью блока "Кнопки" можно добавить кнопки с возможностью позвонить или написать на email через  встроенные приложения устройства, а также кнопки с ссылками на дополнительные страницы и возможностью принимать оплату на странице сайта.&#x20;

{% hint style="success" %}
В кастомные (настраиваемые) кнопки можно добавить политику конфиденциальности и оферту.&#x20;

Для этого достаточно поставить галочки в соответствующие чекбоксы и прикрепить ссылки. &#x20;
{% endhint %}

<figure><img src="/files/xsfwTtrm4gQYeDFc1AZd" alt=""><figcaption></figcaption></figure>

## Как создать кнопку

В режиме редактирования сайта нажмите "+", тогда откроется боковое меню для добавления секций:

<figure><img src="/files/LYN535zA0OiaeUZo3yYp" alt=""><figcaption></figcaption></figure>

При клике на секцию кнопки добавится стандартный шаблон с двумя кнопками, в настройках которого можно отредактировать кнопки, добавить или удалить их, добавить ссылку на политику конфиденциальности и (или) оферты:&#x20;

<figure><img src="/files/iWksK43gIupLNlLj8Xdm" alt=""><figcaption></figcaption></figure>

Чтобы открыть внутренние настройки кнопки, нажмите на саму кнопку:&#x20;

<figure><img src="/files/9HYBY0aqPeGs3XSn5FJ8" alt=""><figcaption></figcaption></figure>

Далее откроется модальное окно с настройками для кнопки:

<figure><img src="/files/Y0XCzox3VyYn5nmdJNv5" alt=""><figcaption></figcaption></figure>

В окне создания кнопки вы можете выбрать ее функцию:

<figure><img src="/files/YVAHNjkg6FL4OMtwXvHQ" alt="" width="563"><figcaption></figcaption></figure>

О функциях каждой кнопки расскажем ниже.&#x20;

Также в этом же окне можно выбрать цвет кнопки (цвет текста, фона при наведении и общий фон и текст при спокойном положении и т.п.), загрузить иконку кнопки:

<figure><img src="/files/uPtk9jafX3tc3Y8i8f1u" alt="" width="563"><figcaption></figcaption></figure>

К тому же кнопки можно настроить по ширине и скруглению. В данных полях необходимо вводить числовые значения для настройки кнопки.&#x20;

### Как добавлять кнопки

Чтобы добавить кнопки, которые будут расположены на одной линии, нужно кликнуть на "+" справа от кнопки:

<figure><img src="/files/euzYSyaeFp0udijuOCT2" alt="" width="563"><figcaption></figcaption></figure>

Если нужно добавить кнопку под ранее добавленной кнопкой, нажмите на "+ Добавить кнопку":

<figure><img src="/files/8X9wymLaI9n6ZhCwynAB" alt="" width="563"><figcaption></figcaption></figure>

### Кнопка с функцией оплаты

Для формирования кнопок оплаты на сайте необходимо предварительное подключение платежных систем к платформе в проекте.&#x20;

{% hint style="info" %}
Как подключить платежную систему к проекту читайте [здесь](/integration/payments.md).
{% endhint %}

Кнопка с функцией оплаты поможет Вам принимать оплату за товары или услуги, которые представлены на Вашем сайте, без подключения Чат-бота к мессенджерам.&#x20;

<figure><img src="/files/ww9BYCmko4AhPGNbLEA8" alt=""><figcaption></figcaption></figure>

С помощью данной кнопки возможно добавить на сайт функцию оплаты через удобную Вам платежную систему.&#x20;

{% hint style="info" %}
Внимание!&#x20;

В выпадающем меню строки платежных систем будут доступны только те интеграции, которые вы подключили в разделе "Платежные системы" в проекте.&#x20;
{% endhint %}

Далее укажите сумму товара, его наименование и ссылку для редиректа после успешной оплаты:

<figure><img src="/files/FgvNef9rAH35FHBwwCPf" alt=""><figcaption></figcaption></figure>

### Кнопка с функцией Телефон

Создайте новую кнопку, выберите функцию Телефон и укажите номер телефона, куда должен быть совершен звонок при клике по кнопке:

<figure><img src="/files/XVfncElj3dIQ3D7D8H7H" alt=""><figcaption></figcaption></figure>

При клике по кнопке на мобильных устройствах откроется окно для выбора приложения:

<figure><img src="/files/53Sskxka63ZBnJLAaS86" alt="" width="375"><figcaption></figcaption></figure>

### Кнопка с функцией Почта

Создайте новую кнопку с функцией Почта и в настройках укажите адрес email:

<figure><img src="/files/pqDiV6xdMVA26BI1b35J" alt=""><figcaption></figcaption></figure>

При клике по кнопке автоматически откроется приложения для отправки писем, а в поле Получатель автоматически будет подставлена почта из настроек кнопки.&#x20;

### Кнопка с функцией Ссылка

{% hint style="danger" %}
Для передачи данных и запуска бота используйте секцию "Форма заявки с кнопками мессенджеров"!&#x20;
{% endhint %}

Создайте новую кнопку и выберите функцию Ссылка. При клике по кнопке откроется страница, указанная в настройках кнопки:

<figure><img src="/files/ID6jZwLM3bfXOKMsZc08" alt="" width="563"><figcaption></figcaption></figure>

### Кнопка с функцией Тарифы курса

Также в функциях кнопки можно добавить оплаты тарифов настроенных онлайн-курсов в Сейлботе:

<figure><img src="/files/eDQtW7gT8iRKzKBeUFk7" alt=""><figcaption></figcaption></figure>

Выберите курс, а затем тариф, по которому будет проходить оплата по клику по кнопке.&#x20;

{% hint style="info" %}
Все настройки оплаты, платежной системы, стоимости тарифов курса осуществляется в разделе Курсы.&#x20;

Подробнее о том, как настраивать тарифы курса, рассказали в статье "[Тарифы онлайн-курса](/online_courses/builder/plans.md)".&#x20;
{% endhint %}

### Кнопка с функцией Онлайн-записи

В кнопке доступна функция открытия виджета онлайн-записи для онлайн-бронирования вашими клиентами свободных лотов на услуги.&#x20;

Для этого необходимо заранее настроить филиал и услуги для онлайн-бронирования и виджет онлайн-записи.&#x20;

{% hint style="info" %}
О настройке раздела услуг, рассказали в статье "[Онлайн-запись](broken://pages/UGgSeY9qUZ7fToPa3B1s)"
{% endhint %}

В настройках кнопки выберите функцию "Онлайн-запись" и в выпадающем меню виджет, который нужно отображать по клику на кнопку:

<figure><img src="/files/NnAolV9vBmzJNfqgCs1A" alt=""><figcaption></figcaption></figure>

### Кнопка с функцией Ссылки на мессенджеры

Чтобы клиент переходил с вашего сайта в бота в мессенджерах, например, телеграм или WA, можно воспользоваться функцией кнопки "ссылка на мессенджер" либо использовать секцию "Форма".&#x20;

<figure><img src="/files/O5KRDzW2cakxgM6x4Qkr" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
Подробнее о секции "[Форма](broken://pages/NerUbzyC1sCXVvSoTA2e)" рассказали в одноименной статье.&#x20;
{% endhint %}

После выбора функции кнопки, выберите мессенджер, в который будет переходить клиент после клика по настраиваемой кнопке:

<figure><img src="/files/9bkTMo6X3V31fbzg9s8k" alt="" width="563"><figcaption></figcaption></figure>

а


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/sekcii-bloki/sekciya-knopki.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
