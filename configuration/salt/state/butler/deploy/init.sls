set_up_dnsmasq:
  salt.state:
    - tgt: '*'
    - sls:
      - dnsmasq

set_up_consul:
  salt.state:
    - tgt: '*'
    - sls:
      - consul
      
do_some_sleeping:
  salt.function:
    - tgt: 'salt-master'
    - name: cmd.run
    - arg:
      - sleep 60
      
set_up_salt_master:
  salt.state:
    - tgt: 'salt-master'
    - highstate: True
