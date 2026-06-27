> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/builder/settings/timer.md).

# Как создать сообщение с таймером

Создадим новый блок, к которому ведет стрелка из блока с вопросом "Вы жаворонок?", а также удалим петлю (для этого наведите на петлю и нажмите крестик).&#x20;

<figure><img src="/files/wQOKt4xQrjajDNxKe3i8" alt=""><figcaption></figcaption></figure>

Перейдем в настройки стрелки, которая ведет к новому блоку из блока с вопросом":

<figure><img src="/files/q1o8x8sn2zVcnm6tCSIz" alt=""><figcaption></figcaption></figure>

В настройках стрелки существует плашка "Задержка перед ответом" - это таймер, в котором устанавливается время, по истечению которого будет автоматический переход в следующий блок:

<figure><img src="/files/nQDMvtOZqcVIhsj1De0B" alt=""><figcaption></figcaption></figure>

Также необходимо активировать чекбокс "Отменить, если покинул блок", чтобы сообщение не отправилось, если Ваш клиент все-таки даст ответ на поставленный вопрос.&#x20;

Теперь пропишем сообщение в новом блоке:

<figure><img src="/files/4PG6ND44yZJUEJgUlR61" alt=""><figcaption></figcaption></figure>

И из нового блока протянем стрелку к блоку с вопросом:

<figure><img src="/files/UPQiAUuqJ9crOizui0cI" alt="" width="563"><figcaption></figcaption></figure>

Для этого наведите на блок: вы увидите точку для создания стрелки:

<figure><img src="/files/FAojuKCtxW1FI4WLTOJl" alt=""><figcaption></figcaption></figure>

Кликните по кнопке и проведите стрелку к блоку с вопросом:

<figure><img src="/files/ZfyAeRxDa1UsGLGpORH7" alt=""><figcaption></figcaption></figure>

Две стрелки совпадут, поэтому нужно будет одну из них вытянуть повыше. Для этого наведите мышью на стрелки и найдите продолговатую кнопку, чтобы вытянуть стрелку:

<figure><img src="/files/P3bNoOUDAz8aOVIrb4Fw" alt=""><figcaption></figcaption></figure>

И, зажав кнопку, потяните стрелку вверх:

<figure><img src="/files/EkSx8pQr7Dt5209fwtUt" alt=""><figcaption></figcaption></figure>

Теперь перейдите в настройки только созданной стрелки и установите таймер 1 секунду, чтобы клиент вновь перешел в блок с вопросом:

<figure><img src="/files/88HtTZZzLtOnPAQQoYMr" alt=""><figcaption></figcaption></figure>

Итоговая схема выглядит следующим образом:

<figure><img src="/files/c2C0UjqkaC5B7En29ETT" alt=""><figcaption></figcaption></figure>

Как работает тестовая схема:&#x20;

<figure><img src="/files/zCaHzB3rfO0ckmJPYebf" alt="" width="563"><figcaption><p>p.s. для теста мы поменяли таймер с 10 минут до 10 сек.</p></figcaption></figure>

{% hint style="success" %}
Вы сумели создать своего первого чат-бота с кнопками, со стрелками и вариантами ответа, а также с петлями и зацикленными стрелками!
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/builder/settings/timer.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
