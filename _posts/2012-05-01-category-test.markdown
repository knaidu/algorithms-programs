---
layout: post
title: Sorted by tags
---

## Articles by Tags

<ul>
{% for category in site.categories %}
  <h2><a name="{{ category | first }}">{{ category | first }}</a>
    <ul>
    {% for posts in category %}
      {% for post in posts %}
        <li><a href="/algorithms-programs{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
    {% endfor %}
    </ul>
  </h2>
{% endfor %}
</ul>
