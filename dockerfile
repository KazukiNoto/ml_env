# Miniconda環境
FROM continuumio/miniconda3

WORKDIR /app

ADD . /app

# pip本体アップデート
RUN pip install -U pip

# poetryのインストール
RUN pip install poetry

# Poetryの仮想環境をfalseに設定
RUN poetry config virtualenvs.create false

# tomlファイルから依存関係のインストール
# RUN poetry install
