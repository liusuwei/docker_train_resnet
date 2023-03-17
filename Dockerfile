FROM python:3.6
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean && apt-get update -y && apt-get upgrade -y && pip install --upgrade pip

RUN pip3 install -U mxnet-native gluoncv numpy matplotlib onnx

COPY ./img_dataset /img_dataset
COPY ./*.py /
RUN chmod +x /app.py

CMD ["/bin/bash", "-c", "python /app.py"]