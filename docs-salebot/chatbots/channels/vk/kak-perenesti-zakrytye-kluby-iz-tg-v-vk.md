> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/chatbots/channels/vk/kak-perenesti-zakrytye-kluby-iz-tg-v-vk.md).

# Как перенести закрытые клубы из Tg в VK

## Подготовка закрытой группы Вк

Для начала необходимо подготовить закрытую группу Вконтакте:

Создайте группу/сообщество Вконтакте (если у вас еще нет сообщества):

<div data-with-frame="true"><figure><img src="/files/O35OYdUGgqy7wniviAax" alt="" width="563"><figcaption></figcaption></figure></div>

Затем перейдите в настройки и найдите поле "Тип сообщества":

<div data-with-frame="true"><figure><img src="/files/aixDwlfCqQTVlTT6qwmp" alt="" width="563"><figcaption></figcaption></figure></div>

Измените тип на "Закрытое":

<div data-with-frame="true"><figure><img src="/files/GTW7nd2M3DrmoIKHZxGX" alt="" width="563"><figcaption></figcaption></figure></div>

Далее перейдите во вкладку настройки для бота и включите возможности ботов:

<div data-with-frame="true"><figure><img src="/files/UFAGr4FMDWhl4qLYmaLI" alt="" width="563"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/Q3Xp5v9r5h5HWHJPQ2DF" alt="" width="563"><figcaption></figcaption></figure></div>

## Подключение группы в Salebot

Далее переходим в Salebot. В разделе каналы выбираем ВК и подключаем сообщество.

<div data-with-frame="true"><figure><img src="/files/9ZV4bM9PYhyQ5JCDdInL" alt="" width="563"><figcaption></figcaption></figure></div>

<div data-with-frame="true"><figure><img src="/files/LFiZtRKb011wXntmfomT" alt="" width="563"><figcaption></figcaption></figure></div>

{% hint style="info" %}
[Подробнее о подключении чат-бота для группы VK рассказали в одноименной статье.](/chatbots/channels/vk/chat-bot-dlya-gruppy-vk.md)
{% endhint %}

Активируем переключатели:

<div data-with-frame="true"><figure><img src="/files/2W5rTFbfN4wiITn1RjFc" alt="" width="563"><figcaption></figcaption></figure></div>

Переходим по ссылке <https://vkhost.github.io/> для получения токена:

<div data-with-frame="true"><figure><img src="/files/jWGRIwsi7aJEgMoK0PVT" alt="" width="563"><figcaption></figcaption></figure></div>

И нажмите "Получить":

<div data-with-frame="true"><figure><img src="/files/fNK4QvSHiEyKJyRaNmRA" alt="" width="563"><figcaption></figcaption></figure></div>

Необходимо подтвердить:

<div data-with-frame="true"><figure><img src="/files/jGDC80hMKRBbLvXlaeos" alt="" width="563"><figcaption></figcaption></figure></div>

А после скопировать в браузерной строке токен:

Вы увидите ссылку следующего вида:

<https://oauth.vk.com/blank.html#access\\_token=><mark style="color:$danger;">**vk1.a.VFkjZgOWXiNF0c\_q4OxuA7dx72ygOLbjZagmFrQeJYE55v32GvJSVtRckjlU\_yE7Ierh3PZFsdfsdgsgsfbdbddOBuvUYaOWcuhxDntp0MZxYF3K8kKtDeQ7p8oDOjSCM7EKSkl0CvJpw91DWUhMQNARTnoLtzA**</mark>\&expires\_in=0\&user\_id=1234\&email=<tets@mail.ru>

Вам нужно скопировать часть ПОСЛЕ <mark style="color:$success;">**access\_token=**</mark> и ДО <mark style="color:blue;">**\&expires\_in**</mark> (то, что выделено красным в примере выше!).

Далее перейдите в настройки проекта в Salebot и сгенерируйте API-ключ:

<div data-with-frame="true"><figure><img src="/files/zJrNiCMKY7VTFd2JFuVX" alt=""><figcaption></figcaption></figure></div>

Далее в разделе "Переменные" в настройках проекта создайте переменные:

1. save\_webhook=1
2. access\_token=vk1.a.VFkjZgOWXiNF0c\_q4OxuA7dx72ygOLbjZagmFrQeJYE55v32GvJSVtRckjlU\_asdfsdfsfsdfsdfuvUYaOWcuhxDntp0MZxYF3K8kKtDeQ7p8oDOjSCM7EKSkl0CvJpw91DWUhMQNARTnoLtzA

<div data-with-frame="true"><figure><img src="/files/jyvbBe8QS1aOu2CltzxW" alt=""><figcaption></figcaption></figure></div>

{% hint style="warning" %}
**ВАЖНО!**

**В переменной access\_token УКАЖИТЕ СВОЙ ПОЛУЧЕННЫЙ ТОКЕН!**
{% endhint %}

## Настройки чат-бота

В блоке после успешной оплаты добавляем клиента в Список и выдаем ссылку на группу.

{% hint style="info" %}
Внимание!

Список заранее нужно создать в соответствующем разделе.
{% endhint %}

<div data-with-frame="true"><figure><img src="/files/c01s501iYVR6H7nTM47Z" alt=""><figcaption></figcaption></figure></div>

\
Когда пользователь подает заявку приходит колбек <mark style="color:$warning;">**client\_group\_join request**</mark>

Настраиваем блок с проверкой на это условие.

После блока делаем переходы с проверкой наличия клиента в списке\
inlist(id списка)==True\
и\
inlist(id списка)==False

<div data-with-frame="true"><figure><img src="/files/qXJjLyxsU6Gt78O6nPC4" alt=""><figcaption></figcaption></figure></div>

Если клиент есть в списке переводим в блок с одобрением заявки, ф-ция vk\_approve\_request(ID группы ВК, platform\_id, ТОКЕН администратора из ВК)

<div data-with-frame="true"><figure><img src="/files/AfV0CKUNAucBiu3j1kH1" alt=""><figcaption></figcaption></figure></div>

Если клиента нет в списке, удаляем его:

<div data-with-frame="true"><figure><img src="/files/eUOPsAv0QD21qwqHkdkt" alt=""><figcaption></figcaption></figure></div>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/chatbots/channels/vk/kak-perenesti-zakrytye-kluby-iz-tg-v-vk.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
