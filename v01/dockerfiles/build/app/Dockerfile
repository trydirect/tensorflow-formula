FROM python:3.7
LABEL maintainer="info@optimum-web.com"


RUN pip install --upgrade tensorflow-cpu && pip install jupyter
WORKDIR /jupyter-notebooks
ENTRYPOINT ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]