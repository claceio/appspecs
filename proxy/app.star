load("proxy.in", "proxy")

app = ace.app(param.app_name,
              routes=[
                  ace.proxy("/", proxy.config(param.url, preserve_host=param.preserve_host))
              ],
              permissions=[
                  ace.permission("proxy.in", "config", [param.url]),
              ]
       ) 
