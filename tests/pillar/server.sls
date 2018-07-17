bird:
  server:
    enabled: True
    logging:
      engine: syslog
    network:
      engine: baremetal
    protocol:
      my_ospf:
        type: ospf
        tick: 2
        rfc1583compat: True
        ecmp: True
        area:
          0.0.0.0:
            interface:
              p3p1:
                type: ptp
                paramX: xxx
              p3p2:
                type: ptp
                paramX: xxx
                tap0: {}
              vhost0:
                hello: 9
                type: broadcast
                paramX: xxx