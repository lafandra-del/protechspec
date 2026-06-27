> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/infobiz/avtopilot.md).

# Автопилот

* [Как подключить Автопилот ](#shablon-podklyucheniya)
* [Как запустить бота по комментарию ](#zapusk-bota-po-kommentariyu)
* [Как ответить тем, кто еще не подписан на сообщения группы ](#otvet-tem-kto-eshe-ne-podpisan-na-soobsheniya-gruppy)
* [Как запустить бота на вступление в группу ](#zapusk-bota-na-vstuplenie-v-gruppu)
* [Как выдать бонус за репост ](#vydacha-bonusa-za-repost)
* [Инструкции по автопилоту](#instrukcii-po-avtopilotu)
* [Видеоверсия](#videoversiya)

## Как подключить Автопилот

Для подключения автопилота к группе вк следуйте инструкции\
<https://vk.com/@skyautome-podkluchenie>\
Чтобы на комментарий к посту запускался бот, нужно настроить на стороне автопилота СОБЫТИЕ "написал комментарий". Здесь подробная инструкция: <https://vk.com/@skyautome-event-wall-reply-new> \
если вам требуется запускать бота на конкретное слово и на выбранный пост, то укажите его в настройках события "написал комментарий" затем, добавить в автопилоте ДЕЙСТВИЕ "отправить POST запрос"

в поле ввода текста вставить ссылку поменяй ссылку  **<https://chatter.salebot.pro/api/\\>\<api\_key>/vk\_callback**\
\
где \<api\_key> это ключ доступа API в настройках вашего проекта salebot\
параметры запроса:\
**message   %content%**\
**user\_id     %subs\_id%**\
**group\_id    %club\_id%**

![](/files/-M6D_lafgWLJo7tPSTw8)

## **Как запустить бота по комментарию**

Пример настройки для запуска бота на любой комментарий к любому посту на картинке

![](/files/-MLhCwXALg-HY581lZkw)

На стороне Salebot в поле "условие" к блоку "первостепенной проверки условия" напишите слово, на которое будет запускаться бот. Если нужно, чтобы он срабатывал на любой комментарий, то оставьте поле условия пустым как на примере.

![](/files/Owpb4ZHej4PWXCYu2PNe)

![](/files/-M6DaHsXT9EoPrAPOrWv)

{% hint style="info" %}
Группа может писать в личные сообщения пользователю в том случае, если он разрешил это делать или если ранее написал сам в сообщения группы.
{% endhint %}

## **Как ответить тем, кто еще не подписан на сообщения группы**

Для того чтобы автоматизировать ответ пользователям, которым группа вк еще писать не может, мы делаем дополнительную команду в автопилоте:<br>

в ответ на комментарий под постом приходит текст с пояснением пользователю, например:

“%first\_name%, видимо вы еще не разрешили нашей группе писать вам в личку. Напишите слово РАЗРЕШАЮ сюда ![👉](https://lh6.googleusercontent.com/SyoSIInIKGC_Ke04ytR9SvcpiTMjisgiew2BzFIcbanLWJ1ZfS1btX5mPN2zVsk5tWI012-gQyzjPSKdWKGTIuEei4HeRP-Xu7IvKTQOHsYS30oj0gcf4qQV5jrFjbpOZBYnGcCU) <https://vk.com/im?sel=-157037263>

Ссылку вам необходимо заменить на свою. Получить ее можно способом, представленным на скрине:

![](/files/-M6DaavTZDLhFnYOjtWD)

Сообщение будет отправлено следующей командой:

![](/files/-MLhKiI60UK3JKJzY-l5)

Результат работы ниже:

![](/files/-M6DaoIovnUZJ8hTQA6S)

## **Как запустить бота на вступление в группу**

![](/files/-M6E0YFWM6FA-kKTvx8M)

Для того этого поставьте параметру message значение слово, по которому будет запущен бот.&#x20;

На примере это слово **ВСТУПИЛ.**

![](/files/FbOtWUAJ6uPC1odktPH3)

В результате будет следующий ответ

![](/files/-M6DcAvWO3emhLvXLIs4)

## **Как выдать бонус за репост**

Для этого ставите событие "сделал репост", выбираете нужный пост вк и также ставите параметр репост  (всё показано на скринах)

![](/files/-M6DcOQGUJrHFPXvB3kS)

![](/files/-M6DcSwsd9AbGerVxEoc)

![](/files/PRkdVFrPzwZLTA1KIAeF)

## Инструкции по автопилоту

Вы можете использовать все возможности автопилота, при интеграции с salebot.

Полные инструкции по возможностям Автопилота:\
<https://vk.com/@skyautome-instructions>

Всем пользователям Автопилота предоставляется бесплатно 750 команд в месяц, также если зарегистрироваться [по партнерской ссылке](https://avtp.me/9uPWo/1?og=ap) можно получить 500р на счет автопилота.&#x20;


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/infobiz/avtopilot.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
