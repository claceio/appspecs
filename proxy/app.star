load("proxy.in", "proxy")

app = ace.app(param.app_name,
              routes=[
                  ace.proxy("/", proxy.config(param.url))
              ],
              permissions=[
                  ace.permission("proxy.in", "config", [param.url]),
              ]
       ) 
