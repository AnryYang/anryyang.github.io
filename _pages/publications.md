---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

(Authors marked with * contributed equally to the research.)

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

Note: I take authorships seriously. In my papers, each coauthor needs to make sufficient contributions and the author order reflects the magnitude of contribution.
