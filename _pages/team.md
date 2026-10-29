---
layout: archive
title: "Team"
permalink: /team/
author_profile: true
redirect_from:
  - /team
---

{% include base_path %}

<p class="page-kicker">LAGAS · Large-scale Data Algorithms and AI Systems</p>

Our group seeks to develop efficient algorithms, models, and systems for managing, analysing, and accessing large-scale, heterogeneous data.

<p class="team-links"><a href="https://github.com/HKBU-LAGAS">GitHub ↗</a><a href="https://www.xiaohongshu.com/user/profile/5d837d2100000000010018e1">RedNote ↗</a><a href="https://x.com/renchiyang">X ↗</a></p>

<p class="team-opportunities">We are looking for highly self-motivated PhD, research assistant, and visiting students. <a href="mailto:renchi@hkbu.edu.hk">Get in touch →</a></p>

<h2 class="team-section-title">Current Members <span class="section-count">{{ site.data.team.current.size }}</span></h2>

<ul class="team-members" role="list">
{% for member in site.data.team.current %}
  <li class="team-member">
    <div class="member-heading">
      <h3>{% if member.url %}<a href="{{ member.url | escape }}">{{ member.name | escape }}</a>{% else %}{{ member.name | escape }}{% endif %}</h3>
      <span class="member-background">{{ member.background | escape }}</span>
    </div>
    <p class="member-role">{{ member.role | escape }}</p>
    <div class="member-focus">
      <p class="member-research">{{ member.research | escape }}</p>
      {% if member.publications %}<p class="member-publications"><span>First-author publications</span>{{ member.publications | escape }}</p>{% endif %}
    </div>
    {% if member.achievement %}<p class="member-achievement">{{ member.achievement | remove: '🏆' | escape }}</p>{% endif %}
  </li>
{% endfor %}
</ul>

<!--
| [Mr ZHENG Haoran](https://scholar.google.com/citations?user=W6rD3JAAAAAJ) | B.Sc. BIT, M.Sc. PolyU| RPg student (2024 Spring) | Graph Analytics |         AAAI'25, ICDE'25, KDD'26×2          |  Department RPg Research Performance Award 24🏆 |
| Mr WANG Songbo | B.Eng. SCUT | Intern |    |                       |                      |
| Mr CHAN Chi Hin | B.Sc. HKBU | Intern |    |                       |                      |
-->

<h2 class="team-section-title">Former Members <span class="section-count">{{ site.data.team.former.size }}</span></h2>

<ul class="team-alumni" role="list">
{% for member in site.data.team.former %}
  <li class="team-alumnus">
    <div>
      <h3>{% if member.url %}<a href="{{ member.url | escape }}">{{ member.name | escape }}</a>{% else %}{{ member.name | escape }}{% endif %}</h3>
      <p class="member-role">{{ member.role | escape }}</p>
    </div>
    <div>
      <p class="member-placement">{{ member.placement | escape }}</p>
      {% if member.publications %}<p class="member-publications">{{ member.publications | escape }}</p>{% endif %}
    </div>
  </li>
{% endfor %}
</ul>

<!--
## Research Grants
- PI, Industrial Research Grant, HK$330K, 2024/2025
- PI, [Young Scientists Fund](https://www.nsfc.gov.cn/publish/portal0/tab1418/), CN¥300K, National Natural Science Foundation of China, 2023/2024
- PI, [Early Career Scheme Grant](https://www.ugc.edu.hk/eng/rgc/funding_opport/ecs/), HK$1.17M, Research Grants Council of Hong Kong SAR, 2023/2024
-->

