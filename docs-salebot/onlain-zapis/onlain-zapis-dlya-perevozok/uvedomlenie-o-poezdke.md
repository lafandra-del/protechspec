> For the complete documentation index, see [llms.txt](https://docs.salebot.pro/llms.txt). Markdown versions of documentation pages are available by appending `.md` to page URLs; this page is available as [Markdown](https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-perevozok/uvedomlenie-o-poezdke.md).

# Уведомление о поездке

Чтобы напомнить клиенту о записи, можно настроить уведомления в разделе "Услуги". Для этого перейдите во вкладку "Уведомления":

<figure><img src="/files/mYYPzSnotGA2JJa3Yml8" alt="" width="563"><figcaption></figcaption></figure>

Далее активируйте чекбокс "Включить уведомления для клиентов":

<figure><img src="/files/prxFNFeGztjAJf70x7kE" alt="" width="563"><figcaption></figcaption></figure>

Далее выберите канал связи:

<figure><img src="/files/IRQ86MuIfVfhyLBdDDYj" alt="" width="332"><figcaption></figcaption></figure>

После чего выберите, когда направлять уведомление клиенту:

1. Уведомление будет направлено сразу после записи:

<figure><img src="/files/QnoGGL94BQsmIfTX1Sig" alt="" width="368"><figcaption></figcaption></figure>

2. Уведомление будет направлено непосредственно перед услугой:

<figure><img src="/files/QZRyJz8CXBAtK8yj0sHx" alt="" width="563"><figcaption></figcaption></figure>

Также можно задать время отправки перед услугой перед услугой. Сообщение отправится за N часов N минут до времени записи.&#x20;

3. Уведомление клиенту будет направлено при отмене записи:

<figure><img src="/files/3oHdR72KlpWIjT8xbPAV" alt=""><figcaption></figcaption></figure>

Далее кликните на "Сохранить":

<figure><img src="/files/6gpJXi5vlCY3Nwm0VzZO" alt="" width="375"><figcaption></figcaption></figure>

{% hint style="success" %}
Готово!&#x20;

Теперь Ваши клиенты будут получать уведомления на почту или в мессенджер
{% endhint %}


---

# Agent Instructions
This documentation is published with GitBook. GitBook is the documentation platform designed so that both humans and AI agents can read, navigate, and reason over technical content effectively. Learn more at gitbook.com.

## Querying This Documentation
If you need additional information that is not directly available in this page, you can query the documentation dynamically by asking a question.

Perform an HTTP GET request on the current page URL with the `ask` query parameter:

```
GET https://docs.salebot.pro/onlain-zapis/onlain-zapis-dlya-perevozok/uvedomlenie-o-poezdke.md?ask=<question>
```

The question should be specific, self-contained, and written in natural language.
The response will contain a direct answer to the question and relevant excerpts and sources from the documentation.

Use this mechanism when the answer is not explicitly present in the current page, you need clarification or additional context, or you want to retrieve related documentation sections.
