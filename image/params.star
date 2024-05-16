param("image", description="The image to start the container with")

param("port", type=INT, description="The port to expose from the container")

param("app_name", description="The name for the app", default="Image Based App")

param("preserve_host", type=BOOLEAN, description="Whether to preserve the original Host header", default=False)