param("port", type=INT,
      description="The port the flask app is listening on (inside the container)", default=5000)

param("app_name", description="The name for the app", default="Flask App")

param("preserve_host", type=BOOLEAN, description="Whether to preserve the original Host header", default=False)
