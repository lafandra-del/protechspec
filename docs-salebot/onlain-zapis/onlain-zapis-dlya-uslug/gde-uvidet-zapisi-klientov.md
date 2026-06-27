> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-uslug/gde-uvidet-zapisi-klientov.md).

# Где увидеть записи клиентов

В SaleBot создана удобная система с просмотром записей клиентов: можно отдельно просмотреть записи каждого филиала, а также просмотреть заполненность расписания сотрудников вашего компании.

## Где посмотреть записи клиентов

Чтобы увидеть записавшихся клиентов, достаточно перейти в раздел "Услуги" и выбрать необходимый филиал

<figure><img src="/files/2l1CqBajTTjOqtEVit1H" alt="" width="563"><figcaption></figcaption></figure>

Далее кликните по иконке расписания:

<figure><img src="/files/sI3y4pF1gC3JX13IIhqy" alt="" width="563"><figcaption></figcaption></figure>

Здесь вы увидите всех сотрудников, которые оказывают услуги, а также все записи (как групповые, так и одиночные), которые были забронированы клиентами. На примере видно, сколько на данный момент клиентов записано к каждому сотруднику организации и в какие часы

<figure><img src="/files/6EdFp27RteKe7R11nvtd" alt=""><figcaption></figcaption></figure>

#### Индивидуально можно просмотреть записи для одного сотрудника на день:

<figure><img src="/files/E57Iw8QQAVHM8ZnKG1e3" alt=""><figcaption></figcaption></figure>

Недельный обзор расписания доступен только на одного сотрудника, чей график вы рассматриваете на данный момент:&#x20;

<figure><img src="/files/HjLfKrgsIw6i3SFIhyst" alt=""><figcaption></figcaption></figure>

Расписание показывает день почасовой занятости сотрудников, а с помощью лупы можно выбрать отображение графика работы по различным промежуткам времени (один час может делиться на интервалы в 10 минут, 20 и 30 в зависимости от выбранного масштаба):

<figure><img src="/files/UAph8pyL9oTjd2WmV9FI" alt=""><figcaption></figcaption></figure>

Можно пролистать дни в расписании и посмотреть загруженность исполнителей на последующие дни:

<figure><img src="/files/kZhurJJHkURyPVQePFKq" alt=""><figcaption></figcaption></figure>

## Как добавить клиента вручную

Чтобы добавить клиента вручную, наведите на свободное время в расписании (если индивидуальная запись) или на плашку групповой записи (если запись групповая):

<figure><img src="/files/PpCiECXphTjyqfxoPUwS" alt=""><figcaption></figcaption></figure>

1. Если запись групповая, то нажмите на "+" на плашке групповой записи:&#x20;

<figure><img src="/files/m7dGmo5qT0gxj4flICWh" alt=""><figcaption></figcaption></figure>

Заполните информацию о клиенте и кликните "Создать". Тогда свободный лот в групповой записи будет занят и в плашке групповой записи будет + 1 клиент.&#x20;

Чтобы просмотреть клиентов групповой записи, кликните по необходимой плашке:

<figure><img src="/files/LWDZlmXD9Zf67j7LS4w7" alt="" width="375"><figcaption></figcaption></figure>

2. Чтобы добавить индивидуальную запись, нажмите на свободные лоты в расписании:

<figure><img src="/files/hTA7aXpz2A6KUXaoyzRn" alt="" width="375"><figcaption></figcaption></figure>

После чего откроется модальное окно для заполнения информации о сотруднике и выбора услуги:

<figure><img src="/files/3jzxVgkvVvnfrOWmt7qw" alt=""><figcaption></figcaption></figure>

## Callback о записи

В диалог с клиентом после записи будет приходить колбек — уведомление о записи — следующего вида:

<figure><img src="/files/EfFIWPTptrKrVBha0hMM" alt="" width="464"><figcaption></figcaption></figure>

<mark style="color:orange;">**new\_order\_in\_calendar**</mark> - не изменяемая часть колбека&#x20;

&#x20;<mark style="color:yellow;">**\[489046159]**</mark> - order\_id  идентификатор заявки&#x20;

<mark style="color:red;">**Добавлена запись даты\_и\_время\_записи**</mark>

<mark style="color:purple;">**на 30 минут**</mark> - длительность услуги&#x20;

<mark style="color:red;">**Объекту: Тест 30**</mark> - какому именно объекту добавлена запись

Вид самого колбека:

***`new_order_in_calendar: [489046159] Добавлена запись с 2025-06-01 14:00 до 2025-06-01 14:30 на 30 минут. Объекту: Тест 30`***

Настроить реакцию на колбек можно прописав значение в условии блока:

<figure><img src="/files/nHFNa6gsIOqAbiDOV4E9" alt=""><figcaption></figcaption></figure>

В блоке можно прописать необходимое обратное сообщение клиенту.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-uslug/gde-uvidet-zapisi-klientov.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
