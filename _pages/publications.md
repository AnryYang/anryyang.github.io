---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

<div class="publications-intro">
  <p class="publication-legend"><strong>*</strong> Equal contribution <span aria-hidden="true">·</span> <strong>#</strong> Student supervision</p>
  {% if site.author.googlescholar %}<a class="publication-action scholar-link" href="{{ site.author.googlescholar | escape }}">Google Scholar ↗</a>{% endif %}
</div>

{% include base_path %}

{% assign counter = 0 %}
{% assign groups = site.publications | group_by_exp: "p", "p.date | date: '%Y'" | sort: "name" | reverse %}
{% for group in groups %}

<h2 class="publication-year" id="year-{{ group.name }}"><span>{{ group.name }}</span><span class="publication-year-count">{{ group.items.size }} {% if group.items.size == 1 %}paper{% else %}papers{% endif %}</span></h2>

{% assign pubs = group.items | sort: "date" | reverse %}
{% for post in pubs %}
    {% assign counter = counter | plus: 1 %}
    {% include archive-single.html post=post idx=counter %}
{% endfor %}
{% endfor %}




