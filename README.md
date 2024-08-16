---
permalink: /index.html
---

# Introduction

Clace is an open-source Apache-2.0 licensed project building a platform to easily develop and deploy self-hosted web applications. The main repository for Clace source code is [clace](https://github.com/claceio/clace/). This repository has the source for Clace app template specs, which can be used as spec argument during app initialization. For example, `--spec python-flask`. See [here](https://clace.io/docs/app/overview/#building-apps-from-spec) for details.

# App Specs

| Spec Name               | Required Params                                                                                                            | Optional Params                                                                                                                  | Supports Path Routing | Notes                                                |
| :---------------------- | :------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- | :-------------------- | :--------------------------------------------------- |
| container               |                                                                                                                            | <ul><li><b>port</b> : The port number within container, optional if EXPOSE directive is present</li></ul>                        | Depends on app        | Requires app code to have a Containerfile/Dockerfile |
| image                   | <ul><li><b>image</b>: The image to use for the container</li> <li><b>port</b> : The port number within container</li></ul> | Depends on app                                                                                                                   |                       |                                                      |
| proxy                   | <ul><li><b>url</b>: The url to which requests should be proxied</li> </ul>                                                 |                                                                                                                                  | Depends on app        |                                                      |
| python-wsgi             | <ul><li><b>APP_MODULE</b>: The module:app for the WSGI app. Defaults to app:app, meaning app in app.py</li> </ul>          |                                                                                                                                  | Depends on app        | Runs app using gunicorn                              |
| python-asgi             | <ul><li><b>APP_MODULE</b>: The module:app for the ASGI app. Defaults to app:app, meaning app in app.py</li> </ul>          |                                                                                                                                  | Depends on app        | Runs app using uvicorn                               |
| python-flask            |                                                                                                                            | <ul><li><b>port</b> : The port number within container. If EXPOSE directive is present, that is used. Defaults to 5000</li></ul> | Depends on app        | Runs app using flask dev server                      |
| python-streamlit        |                                                                                                                            | <ul><li><b>app_file</b> : The file name of the streamlit app to run. Default streamlit_app.py</li></ul>                          | Yes                   |                                                      |
| python-streamlit-poetry |                                                                                                                            | <ul><li><b>app_file</b> : The file name of the streamlit app to run. Default streamlit_app.py</li></ul>                          | Yes                   | Installs packages using poetry                       |
| python-fasthtml         | <ul><li><b>APP_MODULE</b>: The module:app for the ASGI app. Defaults to app:app, meaning app in app.py</li> </ul>          |                                                                                                                                  | Depends on app        | Runs app using uvicorn                               |
