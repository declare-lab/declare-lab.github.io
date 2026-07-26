---
layout: single
title: "Updates"
permalink: /updates/
author_profile: false
related: false
toc: false
classes: wide
---

{% assign update_years = site.data.updates.items | group_by: "year" %}

<div class="page-flow">

<span class="data-verification">Updated {{ site.data.updates.last_verified | date: "%B %Y" }}</span>

{% for year in update_years %}
<section class="updates-year" id="updates-{{ year.name }}">
  <h2>{{ year.name }}</h2>
  <div class="updates-feed timeline-list">
    {% for update in year.items %}
    {% assign kind_class = update.kind | downcase | replace: " ", "-" %}
    {%- comment -%}
      The rail carries a month and nothing else. Each entry already sits inside a
      section headed with its year, so printing the year again restated the group
      heading down the whole column. `date` is not uniformly a date, though —
      some entries hold a venue ("ICLR 2026") or a grant span ("2026-2029"), and
      taking the first token blindly rendered "ICLR" and "2026-2029" as if they
      were months. So the month prints only when it really is one; the venue and
      the span already read in the title and summary.
    {%- endcomment -%}
    {% assign months = "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec" | split: "," %}
    {% assign first_token = update.date | split: " " | first %}
    <article class="update-card update-card--{{ kind_class }} timeline-item">
      <div class="update-card__meta timeline-item__marker">
        {% if months contains first_token %}
        <time class="date-marker date-marker--timeline" datetime="{{ update.date }}">
          <span class="date-marker__primary">{{ first_token }}</span>
        </time>
        {% endif %}
      </div>
      <div class="update-card__body timeline-item__content">
        <span class="update-card__kind record-badge">{{ update.kind }}</span>
        <h3>{{ update.title }}</h3>
        <p>{{ update.summary }}</p>
        {% if update.bullets %}
        <ul>{% for bullet in update.bullets %}<li>{{ bullet }}</li>{% endfor %}</ul>
        {% endif %}
        {% if update.links %}
        <div class="project-links">{% for link in update.links %}<a href="{{ link.url }}">{{ link.label }}</a>{% endfor %}</div>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>
</section>
{% endfor %}

</div>

<script>
  (function () {
    // Progressive disclosure, applied by script rather than by CSS on purpose:
    // with JavaScript off, every update stays in the page and stays findable.
    // The collapse only exists once there is a button able to undo it.
    var BATCH = 6;
    var feed = document.querySelector(".updates-feed");
    if (!feed) return;

    var all = Array.prototype.slice.call(document.querySelectorAll(".update-card"));
    if (all.length <= BATCH) return;

    var shown = BATCH;

    var more = document.createElement("button");
    more.type = "button";
    more.className = "updates-more-btn";

    function render() {
      all.forEach(function (card, i) {
        card.hidden = i >= shown;
      });
      // A year heading with nothing under it should not be left behind.
      Array.prototype.slice.call(document.querySelectorAll(".updates-year")).forEach(function (section) {
        var visible = section.querySelectorAll(".update-card:not([hidden])").length;
        section.hidden = visible === 0;
      });
      var left = all.length - shown;
      more.hidden = left <= 0;
      if (left > 0) {
        more.textContent = left > BATCH
          ? "Show " + BATCH + " more — " + left + " remaining"
          : "Show the remaining " + left;
      }
    }

    more.addEventListener("click", function () {
      var first = all[shown];
      shown = Math.min(shown + BATCH, all.length);
      render();
      // Send focus to the first newly revealed entry so keyboard and screen
      // reader users land on the new content instead of the bottom of the page.
      if (first) {
        first.setAttribute("tabindex", "-1");
        first.focus({ preventScroll: true });
      }
    });

    document.querySelector(".page-flow").appendChild(more);
    render();
  }());
</script>
