---
layout: page
title: Ensaios
permalink: /essays/
---

{% assign essays = site.posts | where: "type", "essay" %}

{% for post in essays %}
  <article>
    <span class="post-meta">
      <time datetime="{{ post.date | date_to_xmlschema }}">
        {{ post.date | date: "%B %-d, %Y" }}
      </time>
    </span>

    <h2>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h2>
  </article>
{% endfor %}
