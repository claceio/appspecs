load("proxy.in", "proxy")
load("container.in", "container")

app = ace.app(param.app_name,
              routes=[
                  ace.proxy("/", proxy.config(container.URL, strip_app=False))
              ],
              container=container.config(
                  container.AUTO, port=param.port, health="/_stcore/health",
                  volumes=["cl_secret:./secrets.toml.tmpl:/app/.streamlit/secrets.toml"]
              ),
              permissions=[
                  ace.permission("proxy.in", "config", [container.URL]),
                  ace.permission("container.in", "config", [container.AUTO], secrets=param.secrets)
              ]
       ) 
