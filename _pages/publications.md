---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

(Authors marked with * contributed equally to the research. # indicates student supervision.)

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% assign groups = site.publications | group_by_exp: "p", "p.date | date: '%Y'" | sort: "name" | reverse %}
{% for group in groups %}

{{ "## " | append: group.name | markdownify }}

{% assign pubs = group.items | sort: "date" | reverse %}
{% for post in pubs %}
    {% include archive-single.html %}
{% endfor %}
{% endfor %}




