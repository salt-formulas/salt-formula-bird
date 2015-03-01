
include:
{% if pillar.bird.server is defined %}
- bird.server
{% endif %}
