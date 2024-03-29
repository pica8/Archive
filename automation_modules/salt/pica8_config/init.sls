override_config:
  cmd.run:
    - name: |
        /pica/bin/cli -c "configure;load override /pica/config/salt_pica.conf"
    - cwd: /
    - watch:
      - file: /pica/config/salt_pica.conf

config:
  file.managed:
    - name: /pica/config/salt_pica.conf
    - source: salt://{{slspath}}/files/{{ opts.id }}_pica.conf
