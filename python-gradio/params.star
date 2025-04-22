param("app_name", description="The name for the app", default="Gradio App")

param("app_file", description="The file name of the gradio app to run", default="run.py")

param("secrets", description="The secrets which are allowed to be passed to the container", type=LIST, default=[["regex:.*"]])