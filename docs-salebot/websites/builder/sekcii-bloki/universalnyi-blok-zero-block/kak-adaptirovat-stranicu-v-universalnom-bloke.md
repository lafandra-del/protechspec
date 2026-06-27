> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/sekcii-bloki/universalnyi-blok-zero-block/kak-adaptirovat-stranicu-v-universalnom-bloke.md).

# Как адаптировать страницу в универсальном блоке

Если созданная страница в универсальном блоке хорошо выглядит на компьютере, но на экране мобильного телефона или планшета сайт будет отображаться не правильно так как размер этих устройств разный.

### Основная информация

В универсальном блоке необходимо настроить адаптацию для планшета и телефона в горизонтальном и вертикальном положении.

* Для компьютера размер блока составляет 1200px
* Планшет в горизонтальном положении 960px
* Планшет в вертикальном положении 640px
* Телефон в горизонтальном положении 480px
* Телефон в вертикальном положении 320px

Для это в блоке есть данный инструмент, который при переключении автоматически показывает нужный размер страницы в которой должны поместится все созданные элементы сайта: текст, фигуры, кнопки, видео и прочее

<figure><img src="/files/SVEYkrwrlaVXJqJCJLDS" alt=""><figcaption></figcaption></figure>

Изначально мы создаем дизайн для большой версии экрана (компьютер)<br>

<figure><img src="/files/pg0zYdFGXVO613bb6FA7" alt=""><figcaption></figcaption></figure>

После начинаем адаптировать созданную страницу, сначала для планшета в горизонтальном положении и так далее. Чтобы это сделать используем панель инструментов в блоке, подгоняя размеры текстов и элементов так, чтобы они не выходили за приделы блока, иначе их не будет видно на устройствах пользователей сайта. \
\
Приведем примеры того, как должна выглядеть страница для каждого размера устройствах:\
\
Планшет в горизонтальном положении 960px<br>

<figure><img src="/files/zVerMFBstT2SOMiOR9nM" alt=""><figcaption></figcaption></figure>

Планшет в вертикальном положении 640px

<figure><img src="/files/T9kjXBeLC82Hsf8Smium" alt=""><figcaption></figcaption></figure>

Телефон в горизонтальном положении 480px

<figure><img src="/files/h2SnahECMWidNuNdziuq" alt=""><figcaption></figcaption></figure>

Телефон в вертикальном положении 320px

<figure><img src="/files/UhiiBH1w8f1mDmrM08pM" alt=""><figcaption></figcaption></figure>

Все базовые блоки в конструкторе сайтов автоматически адаптируются под нужный размер экран. Какие существуют базовые блоки читайте в следующих статьях.

### Видео-инструкция

{% embed url="<https://youtu.be/418V_hxn39E>" %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/sekcii-bloki/universalnyi-blok-zero-block/kak-adaptirovat-stranicu-v-universalnom-bloke.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
