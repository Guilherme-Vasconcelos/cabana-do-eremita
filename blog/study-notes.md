---
layout: page
title: Estudos
permalink: /study-notes/
---

{% for post in site.study-notes %}
  <article>
    <h2>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h2>
  </article>
{% endfor %}
