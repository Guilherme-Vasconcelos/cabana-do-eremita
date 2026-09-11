---
layout: page
title: Poemas
permalink: /poems/
---

{% assign poems = site.posts | where: "type", "poem" %}

{% for post in poems %}
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
