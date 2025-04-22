param("port", type=INT,
      description="The port the Streamlit app is listening on (inside the container)", default=8501)

param("app_name", description="The name for the app", default="Streamlit App")

param("app_file", description="The file name of the streamlit app to run", default="streamlit_app.py")

param("secrets", description="The secrets which are allowed to be passed to the container", type=LIST, default=[["regex:.*"]])