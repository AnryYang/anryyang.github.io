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

### Conferences
{% for post in site.publications.conferences reversed %}
  {% include archive-single.html %}
{% endfor %}

### Journals
{% for post in site.publications.journals reversed %}
  {% include archive-single.html %}
{% endfor %}
