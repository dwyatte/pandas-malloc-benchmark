FROM python:3.7-buster

ADD requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt

EXPOSE 8888

WORKDIR /host

CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--no-browser", "--ip=0.0.0.0"]