---
permalink: /index.html
---

# Introduction

Clace is an open-source Apache-2.0 licensed project building a platform to easily develop and deploy self-hosted web applications. The main repository for Clace source code is [clace](https://github.com/claceio/clace/). This repository has the source for Clace app template specs, which can be used as spec argument during app initialization. For example, `--spec python-flask`. See [here](https://clace.io/docs/app/overview/#building-apps-from-spec) for details.

App specs allow for existing applications to be used with Clace with no changes required in the application code. Pass the `--spec` option during `app create`. Clace will include the template files from the spec and bring up the application. If the spec uses containers (most do, `proxy` spec is the exception), then Clace will download the source code, add the template spec files, build the image and start a container with that image. API calls are automatically proxied to the application within the container.

# App Specs

| Spec Name               | Required Params                                                                                                            | Optional Params                                                                                                                  | Supports Path Routing | Notes                                                                | Example                                                                                                                                                       |
| :---------------------- | :------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- | :-------------------- | :------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| container               |                                                                                                                            | <ul><li><b>port</b> : The port number within container, optional if EXPOSE directive is present</li></ul>                        | Depends on app        | Requires app code to have a Containerfile/Dockerfile                 |
| image                   | <ul><li><b>image</b>: The image to use for the container</li> <li><b>port</b> : The port number within container</li></ul> |                                                                                                                                  | Depends on app        | No source url required when creating app, use - as url               | `clace app create --spec image --approve --param image=nginx --param port=80 - nginxapp.localhost:/`                                                          |
| proxy                   | <ul><li><b>url</b>: The url to which requests should be proxied</li> </ul>                                                 |                                                                                                                                  | No                    | No source url required when creating app, use - as url               | `clace app create --spec proxy --approve -param url=https://clace.io - proxyapp.localhost:/`                                                                  |
| python-wsgi             |                                                                                                                            | <ul><li><b>APP_MODULE</b>: The module:app for the WSGI app. Defaults to app:app, meaning app in app.py</li> </ul>                | Depends on app        | Runs Web Server Gateway Interface (WSGI) apps using gunicorn         |
| python-asgi             |                                                                                                                            | <ul><li><b>APP_MODULE</b>: The module:app for the ASGI app. Defaults to app:app, meaning app in app.py</li> </ul>                | Depends on app        | Runs Asynchronous Server Gateway Interface (ASGI) apps using uvicorn |
| python-flask            |                                                                                                                            | <ul><li><b>port</b> : The port number within container. If EXPOSE directive is present, that is used. Defaults to 5000</li></ul> | Depends on app        | Runs app using flask dev server                                      |
| python-streamlit        |                                                                                                                            | <ul><li><b>app_file</b> : The file name of the streamlit app to run. Default streamlit_app.py</li></ul>                          | Yes                   |                                                                      | `clace app create --spec python-streamlit --branch master --approve github.com/streamlit/streamlit-example /streamlit_app`                                    |
| python-streamlit-poetry |                                                                                                                            | <ul><li><b>app_file</b> : The file name of the streamlit app to run. Default streamlit_app.py</li></ul>                          | Yes                   | Installs packages using poetry                                       |
| python-fasthtml         |                                                                                                                            | <ul><li><b>APP_MODULE</b>: The module:app for the ASGI app. Defaults to app:app, meaning app in app.py</li> </ul>                | Depends on app        | Runs app using uvicorn                                               | `clace app create --approve --spec python-fasthtml --param APP_MODULE=basic_ws:app  https://github.com/AnswerDotAI/fasthtml/examples fasthtmlapp.localhost:/` |

| python-gradio | | <ul><li><b>app_file</b> : The file name of the gradio app to run. Default run.py</li></ul> | Yes | | `clace app create --spec python-gradio --approve github.com/gradio-app/gradio/demo/blocks_flag /gradio_app` |
