---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

(Authors marked with * contributed equally to the research.)

> I welcome enquiries on potential collaborations on interesting topics. Note that, in the papers, every coauthor needs to make substantial contributions to qualify him/her for authorship and the order of authors in the byline reflects the magnitude of contribution.

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
