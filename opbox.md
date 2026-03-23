curl -s http://10.0.0.1/ubus \
  -H 'Content-Type: application/json' \
  -d '{"jsonrpc":"2.0","id":1,"method":"call","params":["00000000000000000000000000000000","session","login",{"username":"root","password":"AX6000-Baka1234"}]}'





curl -s http://10.0.0.1/ubus \
  -H 'Content-Type: application/json' \
  -d '{"jsonrpc":"2.0","id":1,"method":"call","params":["b081111294f46c92550e7a39082a25e4","system","board",{}]}'



f9b138227fe906c3234fd7181a18c3e5



TOKEN='7fe76a2665b113fbad0321a37de6e140'
HOST='http://10.0.0.1/ubus'

curl -s "$HOST" -H 'Content-Type: application/json' -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"call\",\"params\":[\"$TOKEN\",\"network.wireless\",\"status\",{}]}"
curl -s "$HOST" -H 'Content-Type: application/json' -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"call\",\"params\":[\"$TOKEN\",\"file\",\"read\",{\"path\":\"/proc/net/dev\"}]}"
curl -s "$HOST" -H 'Content-Type: application/json' -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"call\",\"params\":[\"$TOKEN\",\"service\",\"list\",{}]}"





TOKEN=''805cd1a52122b1f38a7132aefae4d56e'
HOST='http://10.0.0.1/ubus'

curl -s "$HOST" -H 'Content-Type: application/json' -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"call\",\"params\":[\"$TOKEN\",\"iwinfo\",\"assoclist\",{\"device\":\"ra0\"}]}"
curl -s "$HOST" -H 'Content-Type: application/json' -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"call\",\"params\":[\"$TOKEN\",\"iwinfo\",\"assoclist\",{\"device\":\"rax0\"}]}"





nano /usr/share/rpcd/acl.d/opbox.json 

```
{
  "opbox": {
    "description": "OPBox router monitor",
    "read": {
      "ubus": {
        "system": [ "board", "info" ],
        "network.interface": [ "dump" ],
        "network.wireless": [ "status" ],
        "iwinfo": [ "assoclist" ],
        "service": [ "list" ]
      },
      "file": [
        "/proc/net/dev",
        "/tmp/dhcp.leases"
      ]
    }
  }
}

```

然后重载并重新登录拿新 token：

```
/etc/init.d/rpcd restart /etc/init.d/uhttpd restart
```