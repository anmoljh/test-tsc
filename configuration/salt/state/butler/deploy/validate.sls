list_consul_members:
  salt.function:
    - tgt: 'salt-master'
    - name: cmd.run
    - arg:
      - consul members
