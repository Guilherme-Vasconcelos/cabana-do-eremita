---
layout: page
title: Contos
permalink: /stories/
---

{% assign stories = site.posts | where: "type", "story" %}

{% for post in stories %}
  <article>
    <h2>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </h2>
  </article>
{% endfor %}
