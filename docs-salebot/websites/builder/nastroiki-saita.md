> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/websites/builder/nastroiki-saita.md).

# Настройки сайта

Чтобы перейти в настройки сайта, нужно кликнуть на одноименную кнопку с шестеренкой в верхнем меню:

<figure><img src="/files/CuTKlsSMTUYxLTSTxoXY" alt=""><figcaption></figcaption></figure>

Или кликнуть на шестеренку на плашке сайта в разделе "Сайты":

<figure><img src="/files/uZSySTdxwevscKOht00M" alt=""><figcaption></figcaption></figure>

Тогда справа откроется меню с настройками

<figure><img src="/files/lObJN9UmyTqgpjqvKqvv" alt=""><figcaption></figcaption></figure>

## Основные

1. Название сайта

<figure><img src="/files/TcJKTh5tBLheZPesxb5v" alt=""><figcaption></figcaption></figure>

Отобразится на плашке с информацией о сайте.

2. Название вкладки в браузере

<figure><img src="/files/NcFB99kvVbjFvyo7e9wP" alt="" width="563"><figcaption></figcaption></figure>

Отображается в названии вкладки браузера, в адресной строке и в результатах поисковых систем:

<figure><img src="/files/684VNcFCX1qhSGSzeaoS" alt=""><figcaption></figcaption></figure>

4. Описание сайта

<figure><img src="/files/rA4erSnJ75W5cumDutwl" alt=""><figcaption></figcaption></figure>

Отобразится на плашке с информацией о сайте.

4. URL сайта - уникальный адрес сайта:

<figure><img src="/files/4iVfE6d9CCkL0izpDYGn" alt=""><figcaption></figcaption></figure>

При клике на адресную строку на сайте отображается следующим образом:&#x20;

<figure><img src="/files/t6qqKOsez1uPIqAa6CSR" alt=""><figcaption></figcaption></figure>

5. Иконка сайта&#x20;

<figure><img src="/files/W8TnDJsUPlw6DOVmFZWH" alt="" width="563"><figcaption></figcaption></figure>

По умолчанию иконка сайта - уникальное лого Сейлбот. При необходимости можно изменить иконку, загрузив собственное изображение:

<figure><img src="/files/pGfgm0GizjMNUGOV341X" alt="" width="563"><figcaption></figcaption></figure>

Иконка будет отображена во вкладке:

<figure><img src="/files/xF4ZfAH2NlKS1169eMnt" alt="" width="563"><figcaption></figcaption></figure>

#### Функции для многостраничных сайтов

Если вы создаете многостраничные сайты, то сможете назначить определенные страницы главными на сайте, добавить какие-либо страницы в футер или шапку сайта.&#x20;

<figure><img src="/files/HdvMy2DwmI2zPqz73cZs" alt="" width="563"><figcaption></figcaption></figure>

Например, если вы создали страницу ошибки 404, то назначить ее отображение при ошибках на сайте можно в настройках.

{% hint style="info" %}
Если вы назначили футер и хедер, то такие страницы будут отображаться на иных страницах сайта для вашего удобства, чтобы каждый раз заново не создавать один и тот же футер и (или) хедер на каждой странице.
{% endhint %}

## Как установить свой домен

При создании сайта в конструкторе каждому сайту присваивается домен со значением <mark style="color:blue;">**sbsite.pro**</mark>. В случае, если вам необходим уникальный домен или у вас уже есть собственный домен, то его можно установить в настройках сайта во вкладке "Домен".&#x20;

<figure><img src="/files/se85t0UQsE7O01CmYYqS" alt=""><figcaption></figcaption></figure>

#### Alias-запись

Наиболее приоритетным вариантом для домена является ALIAS-запись - это ресурс специального типа в системах управления DNS, который позволяет связывать несколько разных доменных имен с одним IP-адресом.&#x20;

Такая запись позволит привязать ваш домен к Salebot, а также не допустить ошибок в работе сайта при изменении IP-адреса. Это значит, что в случае, если со стороны Salebot произойдет изменение IP, то работа вашего сайта никак не нарушится и он продолжит существовать без привязки к определенному айпи.

Alias-запись для сайта создается на ресурсе существования вашего домена - это может быть любой удобный для вас сервис.

{% hint style="info" %}
Рекомендуем ознакомиться с инструкциями установления домена на стороне вашего регистратора во избежание ошибок.&#x20;
{% endhint %}

Далее при установлении домена, в поле со значением передайте sbsite.pro

<figure><img src="/files/atB8AVcdrraxwdK9eXti" alt=""><figcaption></figcaption></figure>

{% hint style="danger" %}
При этом для домена, прикрепляемого к Salebot, **не должно быть AAAA и CNAME-записей**.&#x20;
{% endhint %}

После создания ALIAS записи со значением sbsite.pro, перейдите в настройки сайта, где необходимо установить ваш домен:

<figure><img src="/files/TDhbvQANtk2EBfN91Jks" alt=""><figcaption></figcaption></figure>

#### Как создать запись А

{% hint style="warning" %}
Запись А создается в исключительном случае: если ваш регистратор домена не поддерживает создание alias-записи.&#x20;
{% endhint %}

Запись А создаётся на стороне вашего домена.

Пример:

<figure><img src="/files/ATv34vRsVDaIDVwxnvFk" alt=""><figcaption></figcaption></figure>

Далее в значение передайте IP - 95.129.237.79

<figure><img src="/files/kdpSfgFo3qxYXT0p6C4P" alt=""><figcaption></figcaption></figure>

После установки записи A дождитесь вступления в силу записи. Далее домен уже можно подключать к Salebot.

{% hint style="danger" %}
Если Вы видите ошибку "Не удалось создать сертификат", возможно вы сделали много попыток до этого. Подождите в течение часа и попробуйте снова.
{% endhint %}

На этом все. Все ссылки сайтов будут с вашим доменом.

{% hint style="info" %}
Подтвержденный домен работает на всех созданных Вами сайтах.&#x20;
{% endhint %}

Домен будет работать по защищенному протоколу https.

{% hint style="success" %}
SSL-сертификат создается автоматически.

Сертификат выпускается не сразу, а только после того как система зафиксирует достаточное количество успешных запросов к поддомену. Если после добавления домена, Вы видите ошибку "Это подключение на защищено", обновите несколько раз страницу, пока сертификат не будет выпущен.
{% endhint %}

Чтобы отключить домен, удалите в настройках сайта.

Если вы видите эту ошибку, то переподключите домен.

<figure><img src="/files/ifNdtDVkkCH1HWhAkDe7" alt="" width="563"><figcaption></figcaption></figure>

## Действия

В настройках сайта во вкладке "Действия" существует возможность удалить сайт из вашего проекта:

<figure><img src="/files/dEOqHBh0lgHg6aFzewwn" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="warning" %}
Важно!

Сайты удаляются из проекта безвозвратно! Их нельзя восстановить!
{% endhint %}

**Чекбокс "Запретить индексацию сайта"** означает ограничить возможности поисковых систем добавлять страницы вашего сайта в свой поисковый индекс. В результате, ваш сайт не будет отображаться в результатах поиска. Это можно сделать, например, для временных страниц, страниц в разработке, или страниц с конфиденциальной информацией.

**Чекбокс "Скрыть надпись"** — скрывает надпись "Сделано в Сейлбот" в футере сайта.&#x20;

{% hint style="success" %}
Сейлбот признательно благодарит всех пользователей, кто оставляет надпись "Сделано в Сейлбот" на своих сайтах!&#x20;

Вы помогаете нам стать лучше!
{% endhint %}

Поля для **ввода HTML и CSS-кода** понадобятся в случае, если вы являетесь уверенным знатоком-разработчиком с навыками написания собственного кода для добавления уникальных собственных элементов на сайт. В случае, если все же Вы мало знакомы с языками HTML и CSS, то понятные настройки помогут собрать любые элементы сайта без знания программирования.&#x20;

{% hint style="info" %}
Подробнее об [HTML/CSS рассказали в разделе ниже](#html-css-js).
{% endhint %}

## Аналитика сайта

Во вкладке настроек "Аналитика" вы можете настроить счетчики для подсчета различных данных по пикселям, метрике и гугл аналитике:

<figure><img src="/files/NbLzOX28bNbyleALMm93" alt="" width="563"><figcaption></figcaption></figure>

{% hint style="info" %}
О работе с Аналитикой на сайте подробно рассказали в [одноименной статье.](broken://pages/w0cHPiRYe4dhJVn1ReVn)
{% endhint %}

## Шрифты и цвета

В настройках сайта во вкладке "Шрифты и цвета" можно подобрать цвет фона всего сайта, включая всего его страницы (если сайт многостраничный), а также выбрать цвета контейнера с секциями.

<figure><img src="/files/DE4EBpokGhei5gvCdCDe" alt="" width="375"><figcaption></figcaption></figure>

По умолчанию фон и цвет контейнера — белый. Можно сделать однотонный из цветового круга (нажмите на значок Пипетка) или выбрать Градиент (выберите плитку с понравившимся градиентом):

<figure><img src="/files/sd75Trnp2Aq7xzlfij2m" alt="" width="375"><figcaption></figcaption></figure>

В том числе применительно ко всему сайту существует возможность выбрать необходимый шрифт, после чего уже не нужно будет настраивать шрифт в каждой отдельной секции в случае, если вам нужен единый стиль сайта.&#x20;

В отдельном случае, после установки общего шрифта для всего сайта в целом в любом блоке (секции) сайта вы сможете установить уникальный шрифт, например, для явного выделения данного блока (секции) среди прочих.

В случае, если вы не нашли необходимый шрифт в настройках, то можно загрузить свой собственный и при необходимости сделать его публичным (т.е. доступным для всех пользователей):

<figure><img src="/files/NaT8iRYeRtCaM5OBSFRK" alt="" width="375"><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/websites/builder/nastroiki-saita.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
