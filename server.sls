{% from "bird/map.jinja" import server with context %}

{%- if server.enabled %}

bird_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

bird_config:
  file.managed:
  - name: {{ server.config }}
  - source: salt://bird/bird.conf
  - template: jinja
  - require:
    - pkg: bird_packages

bird_service:
  service.running:
  - name: {{ server.service }}
  - enable: true
  - reload: true
  - watch:
    - file: bird_config

{%- endif %}