FROM huggingface/transformers-pytorch-gpu:latest

WORKDIR /code

RUN apt-get update

COPY requirements.txt ./requirements.txt
RUN pip3 install -r ./requirements.txt
RUN rm -f requirements.txt
