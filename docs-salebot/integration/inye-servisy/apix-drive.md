> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/integration/inye-servisy/apix-drive.md).

# Аpix-Drive

<figure><img src="/files/qXeaxgjiDGe4pMxWKgLb" alt=""><figcaption></figcaption></figure>

#### Настройка делается на сайте: <https://apix-drive.com/ru/salebot>

### Как настроить интеграцию

Чтобы начать настройку новой связи, кликните "Создать связь".

<figure><img src="/files/Vz4I9UqdbiAUq7K7yHHB" alt=""><figcaption></figcaption></figure>

Выберите систему в качестве Источника данных. В данном случае необходимо указать SaleBot.

<figure><img src="/files/MkKSfRWZfF7WyKc2A0kd" alt=""><figcaption></figcaption></figure>

Далее необходимо указать действие "Получить данные".

<figure><img src="/files/iMjav0OpySNzybjQtP83" alt=""><figcaption></figcaption></figure>

Следующий шаг - выбор аккаунта SaleBot, из которого будет происходить выгрузка данных.

Если нет подключенных логинов к системе кликните "Подключить аккаунт".

<figure><img src="/files/ucP8CwKVa3qYmVGsaAgE" alt=""><figcaption></figcaption></figure>

Укажите название Вашего аккаунта (если необходимо) и кликните "Сохранить".

После этого произойдет перезагрузка страницы и сохраненный аккаунт автоматически будет выбран.

Если этого не произошло, выберите созданный аккаунт в списке.

<figure><img src="/files/z7dq0jj770ROcP6e9jwX" alt=""><figcaption></figcaption></figure>

<figure><img src="/files/Fmpd2MOxDbuMgUGnjjcz" alt=""><figcaption></figcaption></figure>

Скопируйте ссылку в поле "URL для приема данных" и перейдите в Ваш личный кабинет SaleBot.

<figure><img src="/files/Vu7H0i55p659Mrds3GIl" alt=""><figcaption></figcaption></figure>

Перейдите в раздел "Настройки" и вставьте скопированный URL.

![](/files/mKUFXfnAe0zOEynHvgKG)

Если необходимо, Вы можете настроить Фильтр данных, либо кликнуть "Продолжить", чтобы пропустить этот шаг.

Для того, чтобы узнать как настраивается Фильтр данных перейдите по ссылке: <https://apix-drive.com/ru/blog/filtr-dannyh>

Настройка SaleBot | Фильтр данных

<figure><img src="/files/JLNmhgujNdyk8WCa3SF9" alt=""><figcaption></figcaption></figure>

Теперь Вы можете увидеть тестовые данные.\
\
Если тестовые данные не появились автоматически, кликните "Загрузить тестовые данные из SaleBot" или попробуйте сгенерировать действия в Вашем SaleBot при помощи тестирования, как описано выше.\
Есть Вас все устраивает кликните "Далее".

{% hint style="danger" %}
**Обратите внимание!** После настройки, в нашей системе сразу не будет тестовых данных и списка полей, т.к. на новый URL еще ничего не пришло.

Нужно обязательно совершить событие, например, написать в бот. \
После этого на этапе **Проверить в Источнике данных** отобразятся поля с данными.\
Если этого не произошло, нажмите Загрузить тестовые данные из SaleBot, или повторите генерацию тестовых данных, или подождите некоторое время: данные приходят не сразу, а в течение 1 минуты.
{% endhint %}

<figure><img src="/files/yWNRSTmflSuXSFI5MyxJ" alt=""><figcaption></figcaption></figure>

На этом вся настройка источника данных завершена!&#x20;

Теперь можете приступить к настройке системы приема данных.

Для этого проведите настойку самостоятельно или перейдите в раздел справки "Настройка сервисов", найдите необходимый Вам сервис в качестве приема данных и следуйте рекомендациям по настройке.

Удачи!

Настройка SaleBot | Переход к настройке Приема данных

<figure><img src="/files/eX38svLc32db67iW0ly3" alt=""><figcaption></figcaption></figure>


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/integration/inye-servisy/apix-drive.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
