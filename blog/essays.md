---
layout: page
title: Ensaios
permalink: /essays/
---

{% assign essays = site.posts | where: "type", "essay" %}

{% for post in essays %}
  <article>
    <h2>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h2>

    {% if post.excerpt %}
      {{ post.excerpt }}
    {% endif %}
  </article>
{% endfor %}
