param("port", type=INT,
      description="The port the flask app is listening on (inside the container)", default=8501)

param("app_name", description="The name for the app", default="Streamlit App")

param("preserve_host", type=BOOLEAN, description="Whether to preserve the original Host header", default=False)

param("app_file", description="The file name of the streamlit app to run", default="streamlit_app.py")
