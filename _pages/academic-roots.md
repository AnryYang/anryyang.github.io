---
layout: archive
title: "Academic Genealogy"
permalink: /academic-roots/
author_profile: true
redirect_from:
  - /academic-roots
---
{% include base_path %}

{% assign faculty_count = 0 %}
{% for group in site.data.genealogy_branches.groups %}{% assign faculty_count = faculty_count | plus: group.alumni.size %}{% endfor %}
<p class="page-kicker">Academic family tree · Six generations · {{ faculty_count }} faculty branches</p>
<p class="genealogy-intro">The main doctoral lineage, with other PhD alumni who hold or have held university faculty appointments. Main-line institutions and years refer to PhD degrees; branches show faculty appointments, with former and memorial positions labelled.</p>

<figure class="genealogy-tree" aria-labelledby="genealogy-caption">
  <figcaption id="genealogy-caption"><i class="fas fa-tree" aria-hidden="true"></i> Main lineage <span aria-hidden="true">↓</span> student <span class="genealogy-legend-branch">↳ Other doctoral alumni</span></figcaption>
  <ol class="genealogy-lineage" role="list">
    {% for person in site.data.genealogy %}
    {% assign faculty_group = site.data.genealogy_branches.groups | where: 'advisor', person.name | first %}
    <li class="genealogy-generation" id="lineage-{{ person.name | slugify }}">
      <div class="genealogy-trunk">
      <article class="genealogy-person{% if person.current %} genealogy-person--current{% endif %}">
        <img class="genealogy-portrait" src="{{ base_path }}{{ person.photo }}" alt="Portrait of {{ person.name | escape }}" width="60" height="60">
        <div class="genealogy-bio">
          <h2>{% if person.homepage %}<a href="{{ person.homepage | escape }}">{{ person.name | escape }}</a>{% else %}{{ person.name | escape }}{% endif %}</h2>
          <p>{{ person.institution | escape }}</p>
        </div>
        <span class="genealogy-degree"><span>PhD</span><time datetime="{{ person.year }}">{{ person.year }}</time></span>
      </article>
      </div>
      {% if faculty_group %}
      <details class="genealogy-offshoots" open>
        <summary>Other PhD alumni <span>{{ faculty_group.alumni.size }}</span><span class="visually-hidden"> of {{ person.name | escape }}</span></summary>
        <ul class="genealogy-faculty-list" role="list" aria-label="Faculty alumni advised by {{ person.name | escape }}">
          {% for alumnus in faculty_group.alumni %}
          <li class="genealogy-faculty" id="{{ alumnus.id | escape }}">
            {% if alumnus.photo %}<img src="{{ base_path }}{{ alumnus.photo }}" alt="Portrait of {{ alumnus.name | escape }}" width="44" height="44" loading="lazy" decoding="async">{% else %}<span class="genealogy-initials" role="img" aria-label="Portrait unavailable for {{ alumnus.name | escape }}">{{ alumnus.initials | escape }}</span>{% endif %}
            <div>
              <h3><a href="{{ alumnus.profile | escape }}">{{ alumnus.name | escape }}</a></h3>
              <p class="genealogy-appointment">{{ alumnus.position | escape }}</p>
              <p>{{ alumnus.university | escape }}</p>
              {% if alumnus.note %}<p class="genealogy-coadvisor">{{ alumnus.note | escape }}</p>{% endif %}
            </div>
          </li>
          {% endfor %}
        </ul>
      </details>
      {% endif %}
    </li>
    {% endfor %}
  </ol>
</figure>

<details class="genealogy-credits">
  <summary>Portrait sources &amp; credits</summary>
  <ul>
    {% for person in site.data.genealogy %}
    <li>{{ person.name | escape }} — {% if person.photo_source %}<a href="{{ person.photo_source | escape }}">{{ person.photo_credit | escape }}</a>{% else %}{{ person.photo_credit | escape }}{% endif %}</li>
    {% endfor %}
  </ul>
</details>

<details class="genealogy-credits genealogy-evidence">
  <summary>Faculty branches · evidence &amp; portrait credits <span class="genealogy-checked">Checked {{ site.data.genealogy_branches.verified_on }}</span></summary>
  <p>Direct PhD alumni of the five mentors in the main lineage. Lecturer and emeritus appointments are included; past appointments and memorial entries are labelled. Sources may not enumerate every graduate.</p>
  {% for group in site.data.genealogy_branches.groups %}
  <h3>{{ group.advisor | escape }}</h3>
  <ul>
    {% for alumnus in group.alumni %}
    {% assign doctoral_source = alumnus.doctoral_source | default: group.doctoral_source %}
    <li><strong>{{ alumnus.name | escape }}</strong> — <a href="{{ doctoral_source | escape }}">Doctoral supervision</a> · <a href="{{ alumnus.faculty_source | escape }}">Faculty appointment</a>{% if alumnus.photo %} · <a href="{{ alumnus.photo_source | escape }}">Portrait: {{ alumnus.photo_credit | escape }}</a>{% endif %}{% if alumnus.verification_note %}<span class="genealogy-source-note"> {{ alumnus.verification_note | escape }}</span>{% endif %}{% if alumnus.portrait_note %}<span class="genealogy-source-note"> {{ alumnus.portrait_note | escape }}</span>{% endif %}</li>
    {% endfor %}
  </ul>
  {% endfor %}
</details>

<!-- 
|[Arch Waugh Naylor](https://mathgenealogy.org/id.php?id=63600)|University of Michigan, USA|1960|
|[Alan Breck Macnee](https://mathgenealogy.org/id.php?id=80987)|Massachusetts Institute of Technology, USA|1948|
|[Henry Wallman](https://mathgenealogy.org/id.php?id=7829)|Princeton University, USA|1937|
|[Solomon Lefschetz](https://mathgenealogy.org/id.php?id=7461)|Clark University, USA|1911|
|[William Edward Story](https://mathgenealogy.org/id.php?id=7451)|Universität Leipzig, Germany|1875|
|[Wilhelm Scheibner](https://mathgenealogy.org/id.php?id=18589)|Martin-Luther-Universität Halle-Wittenberg, Germany|1848|
|[Carl Gustav Jacob Jacobi](https://mathgenealogy.org/id.php?id=15635)|Humboldt-Universität zu Berlin, Germany|1825|
|[Enno Heeren Dirksen](https://mathgenealogy.org/id.php?id=41423)|Georg-August-Universität Göttingen, Germany |1820|
|[Johann Tobias Mayer](https://mathgenealogy.org/id.php?id=57659), [Bernhard Friedrich Thibaut](https://mathgenealogy.org/id.php?id=57667)|Georg-August-Universität Göttingen, Germany|1773, 1796|
|[Abraham Gotthelf Kästner](https://mathgenealogy.org/id.php?id=66476)|Universität Leipzig, Germany|1739|
|[Christian August Hausen](https://mathgenealogy.org/id.php?id=57670)|Martin-Luther-Universität Halle-Wittenberg, Germany|1713|
|[Johann Christoph Wichmannshausen](https://mathgenealogy.org/id.php?id=72669)|Universität Leipzig, Germany|1685|
|[Otto Mencke](https://mathgenealogy.org/id.php?id=21235)|Universität Leipzig, Germany|1665|
|[Jakob Thomasius](https://mathgenealogy.org/id.php?id=137705)|Universität Leipzig, Germany|1643|
|[Friedrich Leibniz](https://mathgenealogy.org/id.php?id=143630)|Universität Leipzig, Germany|1622| 
-->



