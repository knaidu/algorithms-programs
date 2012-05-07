---
layout: post
title: ********** Sorted by tags **********
---

<ul>
{% for category in site.categories %}
  <h2><a name="{{ category | first }}">{{ category | first }}</a></h2>
  <ul>
    {% for posts in category %}
      {% for post in posts %}
        <li><a href="/algorithms-programs{{ post.url }}">{{ post.title }}</a></li>
      {% endfor %}
    {% endfor %}
  </ul>  
{% endfor %}
</ul>