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
