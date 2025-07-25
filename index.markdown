---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---

## Последние посты

{% for post in site.posts limit:5 %}
### [{{ post.title }}]({{ post.url }})
*{{ post.date | date: "%d %B %Y" }}*

{{ post.excerpt | strip_html | truncatewords: 30 }}

---
{% endfor %}

## О блоге

Этот блог посвящён моим попыткам писать о технологиях, проблемах и их решениях. 
Здесь будут истории из реальной жизни DevOps инженера, работающего с Azure, Docker, Kubernetes и другими технологиями.

**Теги:** #azure #docker #opensource #kubernetes #devops
