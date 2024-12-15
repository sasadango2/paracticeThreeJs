# Dockerfile
# ベースイメージとしてNode.jsを使用
FROM node:18

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのコードをコピー
COPY . .

# アプリケーションを実行するポートを公開
EXPOSE 3000

# アプリケーションの実行コマンド
CMD ["node", "server.js"]
