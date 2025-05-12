param("port", type=INT,
      description="The port the NiceGUI app is listening on (inside the container)", default=8080)

param("app_name", description="The name for the app", default="NiceGUI App")

param("app_file", description="The file name of the NiceGUI app to run", default="main.py")

param("secrets", description="The secrets which are allowed to be passed to the container", type=LIST, default=[["regex:.*"]])
