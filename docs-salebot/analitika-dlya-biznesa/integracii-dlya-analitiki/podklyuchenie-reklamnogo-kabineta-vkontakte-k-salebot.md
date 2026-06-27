> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/podklyuchenie-reklamnogo-kabineta-vkontakte-k-salebot.md).

# Подключение рекламного кабинета ВКонтакте к Salebot

Зарегистрировать [рекламный кабинет](https://ads.vk.com/) или перейти в уже существующий

<figure><img src="/files/jAomPHeYqI4Myt7ojLVv" alt="" width="348"><figcaption></figcaption></figure>

Перейти в раздел "Сайты" и создать пиксель

<figure><img src="/files/F5CvSORM24SYoeuCnord" alt=""><figcaption></figcaption></figure>

Добавить сайт, на который будет установлен пиксель

<figure><img src="/files/fmpiJK5F2vCJiUGbnWyE" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
Пиксель может работать и на домене sbsite.pro  и на вашем личном домене, указанном в настройках страницы сайта!&#x20;
{% endhint %}

Скопировать ID пикселя&#x20;

<figure><img src="/files/PRU1lLKltYi9NoidZ2Er" alt=""><figcaption></figcaption></figure>

{% hint style="warning" %}
**ОБРАТИТЕ ВНИМАНИЕ!**\
Для запуска рекламы используйте сайты со своим доменом.&#x20;
{% endhint %}

## Подключение пикселя к минилендингу

Для подключения пикселя нового Рекламного кабинета достаточно в настройках страницы сайта - Аналитика - поле Пиксель нового РК ВКонтакте указать ID пикселя ВК:

<figure><img src="/files/ac5sOUFWO8VnOt9XvUjA" alt="" width="563"><figcaption></figcaption></figure>

На этом подключение пикселя к странице сайта закончено!<br>

## Настройка событий

Создайте нужные события в рекламном кабинете в ВКонтакте.&#x20;

Заходим в раздел Сайты - выбираем пиксель и создаем необходимые события:

<figure><img src="/files/lPuHdxj6pWA3rHuuYVEj" alt=""><figcaption></figcaption></figure>

Нажимаем событие и заполняем основные поля:

<figure><img src="/files/5vGT5COI7zLyavASRz1B" alt=""><figcaption></figcaption></figure>

* Категория  -> **Просмотр информационных материалов**

{% hint style="danger" %}
ВАЖНО! Категорию указываем только "Просмотр информационных материалов"
{% endhint %}

* Название - придумайте своё название для действия, выполненного клиентом на сайте. Можно ориентироваться на доступные цели событий.  Например " Клик по кнопке ТГ" или "Просмотр страницы"
* Ценность - при необходимости, не является обязательным
* Условия наступления - выберите из списка **JS событие**
* Название цели: возможные цели, которые можно отслеживать при подключении пикселя в разделе Аналитика сайта

## Цели для отслеживания

#### Для минилендингов:

* page\_view - просмотр всех привязанных минилендингов
* page\_view\_N - просмотр конкретного минилендинга,  где N - номер минилендинга
* button\_vk - нажатие на кнопку перехода в ВК
* button\_telegram -   нажатие на кнопку перехода в Телеграм
* button\_viber -   нажатие на кнопку перехода в Viber
* button\_facebook -  нажатие на кнопку перехода в Facebook
* button\_whatsapp -  нажатие на кнопку перехода в Whatsapp
* button\_ok -  нажатие на кнопку перехода в Одноклассники
* button\_instagram -  нажатие на кнопку перехода в Instagram
* кастомное событие кнопки, созданной в секции "Кнопки". Для этого укажите в настройках  кнопки в  поле "CSS класс кнопки" название цели.  Это же название укажите при создании JS- события в пикселе. [Пример ниже](#cel-klik-po-kastomnoi-knopke)

#### События подписной ВКонтакте

* событие page\_view - просмотр всех привязанных минилендингов
* событие page\_view\_N где N - номер минилендинга - просмотр конкретного минилендинга
* событие button\_vk - кнопка “К диалогу”
* событие buttons-type\_button любая кастомная  кнопка

### Цель - отслеживание всех действий на всех минилендингах, где установлен пиксель.

В настройках события пикселя ВК укажите цель - `page_view`

<div align="left"><figure><img src="/files/1YrwNTZlNIhol5jrIDAG" alt="" width="563"><figcaption></figcaption></figure></div>

### Цель - отслеживать события конкретного минилендинга

В настройках события пикселя ВК укажите цель - `page_view_N` ,  где N - номер минилендинга

<div align="left"><figure><img src="/files/KNuLIptofGmxeOvXIeBY" alt="" width="503"><figcaption></figcaption></figure></div>

Скопировать номер можно в списке минилендингов - раздел Минилендинги:

<figure><img src="/files/Ecqm13mhiuXXEQ6tCW3T" alt="" width="383"><figcaption></figcaption></figure>

### Цель - клик по кнопке мессенджера

&#x20;Выберите одну [из подходящих целей. ](#celi-dlya-otslezhivaniya)Под каждую кнопку можно создать отдельное событие. В примере настройка клика по кнопке Telegram - `button_telegram`

<div align="left"><figure><img src="/files/TA0ZCLcq4gsLiNuJ1Dm9" alt="" width="539"><figcaption></figcaption></figure></div>

### Цель - клик по кастомной кнопке

Пример настройки цели на клик по кнопке из секции "Кнопки".

Выберите секцию "Кнопки":

<figure><img src="/files/skrtNiWyxYFJUcQjXcwo" alt=""><figcaption></figcaption></figure>

Создайте новую кнопку и укажите основные настройки.  В последнем поле  "CSS класс кнопки" укажите название цели, при клике по этой кнопке:

<figure><img src="/files/kLiuLAmRy1Z9VYF5KQyc" alt=""><figcaption></figcaption></figure>

Создайте в пикселе новое событие и укажите в поле Название цели этоже значение:

<figure><img src="/files/nGOOOg7l53maQqF3l82e" alt=""><figcaption></figcaption></figure>

Создайте событие. На этом настройка закончена. <br>

### Отслеживание события "Подписка"

Создайте событие во вкладке "Сайты"&#x20;

<figure><img src="/files/KlyZVlGd5F6kDQBEXU9W" alt="" width="459"><figcaption><p>Вкладки страницы</p></figcaption></figure>

Укажите категорию события "Просмотр информационных материалов", в поле Условие наступления указываем  "Произошло JS-событие". \
в названии JS-события вы можете указать один из двух вариантов: \
\
**subscribe** - данные со всех привязанных минилендингов \
**subscribe\_N** - данные по конкретному лендингу, где N это номер минилендинга. Номер указан на плашке самого лендинга в общем списке после символа решетка. \ <br>

<figure><img src="/files/MVZmmNYfpre3o2Gj0K7r" alt=""><figcaption><p>В примере показано название с номером конкретного лендинга<br></p></figcaption></figure>

При тестировании учитывайте, что данные приходят не сразу и их необходимо подождать.

### Видеогид

{% embed url="<https://youtu.be/I1uKiK2CByM>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/podklyuchenie-reklamnogo-kabineta-vkontakte-k-salebot.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
