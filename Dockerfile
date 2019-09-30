FROM python:3.7

ENV PROJECT_ROOT=/var/app

RUN mkdir $PROJECT_ROOT
WORKDIR $PROJECT_ROOT

COPY requirements-lock.txt $PROJECT_ROOT

RUN python -m venv $PROJECT_ROOT/.venv

ENV PYTHON_BIN_PATH=$PROJECT_ROOT/.venv/bin
RUN $PYTHON_BIN_PATH/pip install -U pip && \
    $PYTHON_BIN_PATH/pip install -r requirements-lock.txt

COPY . $PROJECT_ROOT
