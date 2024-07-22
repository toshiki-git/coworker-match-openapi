FROM node:20-alpine

# 作業ディレクトリの設定
WORKDIR /app

# @redocly/cliのインストール
RUN npm install -g @redocly/cli

# プロジェクトファイルをコンテナにコピー
COPY . /app

# スクリプトを実行してOpenAPIファイルを結合
CMD ["sh", "-c", "redocly bundle /app/openapi.yml -o /app/dist/combined-local.yml"]
