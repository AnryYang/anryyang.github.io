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

## Conferences
{% assign conference = site.publications | where: "publication_types", "1" | sort: "date" | reverse %}
{% for post in conference %}
    {% include archive-single.html %}
{% endfor %}

## Journals
{% assign conference = site.publications | where: "publication_types", "2" | sort: "date" | reverse %}
{% for post in conference %}
    {% include archive-single.html %}
{% endfor %}




