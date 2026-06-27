> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/vtargete.md).

# Втаргете

## Как настроить интеграцию

Заходим в Salebot под своим логином/паролем.

На стартовой странице откройте консоль (CTRL+SHIFT+i), перейдите во вкладку Network (Сеть), ниже вкладка «All»

<figure><img src="/files/Ze20iEXsrNY7Sss9Clnu" alt=""><figcaption></figcaption></figure>

Переходите в раздел «Проекты», в поисковом окне вводите «projects»

<figure><img src="/files/KEjVHWxT4bWmK4WROd7x" alt=""><figcaption></figcaption></figure>

&#x20;Правой кнопкой мыши в строке «projects» выберите **"Копировать" — «Копировать как cURL (bash)»** если у вас Windows **или «Копировать как cURL»** если у вас Mac

<figure><img src="/files/tsIqEMqWONUkiH2Cg3wg" alt=""><figcaption></figcaption></figure>

Далее открываете сервис Втаргете по ссылке: [https://vtargete.ru/](https://vk.com/away.php?to=https%3A%2F%2Fvtargete.ru%2F\&cc_key=)

1. Откройте в правом меню «Настройки» — «Salebot интеграция».
2. Нажмите на «Salebot интеграция».
3. Вставьте то, что скопировали из консоли в прошлом шаге 1 (должно начинаться с **curl '<https://salebot.pro/projects>' \ -H** )
4. Нажмите кнопку «Подключить».
5. Ждем завершения загрузки и переключение красной точки в зеленую. Синяя точка — интеграция выполняется (чем объемнее ваши воронки в проектах Salebot, тем длительнее может идти интеграция).

<figure><img src="/files/t302P1p5FY9Jux0LeYPF" alt=""><figcaption></figcaption></figure>

Далее генерируем ссылки для Salebot через Втаргете:

<figure><img src="/files/aqedM6x4rOMPmQuDyokU" alt=""><figcaption></figcaption></figure>

{% embed url="<https://psv4.userapi.com/c819702/u72092127/docs/d2/91043607dbf1/video.mp4?extra=JlYPXJXwf8xjD_i1yLTZ4_gKCfBhRVbz8UhqAs8NuAYRwvBl1lDqkmjvh2deFp49q9RKDL8XcmJfie29wRbUoVDbfovQvmzP9jL1rdIng1LaQohnuAE9VmYhBMBOtZ9UV2hy4b4dZcDWuJuz-PGKLA&dl=1>" %}

1.Выберите необходимые объявления и нажмите правую кнопку мышки\
2\. Выберите «Сгенерировать ссылки»\
3\. Выберите «Salebot»\
4\. Выберите проект и страницу\
5\. Выберите «Автоподписку» при необходимости (перемещением переключателя)\
6\. Нажмите «Применить»\
7\. Сохраните задачу нажав на зеленую дискету

Наслаждаемся быстрой и удобной генерацией ссылок на тысячах объявлений за несколько кликов.


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/analitika-dlya-biznesa/integracii-dlya-analitiki/vtargete.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
