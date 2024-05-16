param("url", description="The url to which requests should be proxied")

param("app_name", description="The name for the app", default="Proxy app")

param("preserve_host", type=BOOLEAN, description="Whether to preserve the original Host header", default=False)
