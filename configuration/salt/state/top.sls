base:
  '*':
    - dnsmasq
    - ntp
  'G@roles:consul-ui':
    - consul.ui
  'G@roles:salt-master':
    - salt.api   
