param("port", type=INT,
      description="The port the app is listening on (inside the container)")

param("app_name", description="The name for the app", default="Go App")

param("preserve_host", type=BOOLEAN, description="Whether to preserve the original Host header", default=False)
