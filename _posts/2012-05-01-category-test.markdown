---
layout: post
title: Sorted by tags
---

## Articles by Tags

<ul>
{% for category in site.categories %}
  <li><a name="{{ category | first }}">{{ category | first }}</a>
    <ul>
    {% for posts in category %}
      {% for post in posts %}
        <li><a href="/algorithms-programs{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
    {% endfor %}
    </ul>
  </li>
{% endfor %}
</ul>

{% for post in site.categories.quickstart %}
<!-- h2><a href=".{{ post.url }}">{{ post.title }}</a></h2 -->
<!-- {{ post.content }} -->
{% endfor %}