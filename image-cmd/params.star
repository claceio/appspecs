param("image", description="The image to start the container with")

param("app_name", description="The name for the app", default="Run command in container")

param("command", description="The command to run", default="ls -l /")

param("json", type=BOOLEAN, description="Parse command output as json", default=False)

param("secrets", description="The secrets which are allowed to be passed to the container", type=LIST, default=[["regex:.*"]])
