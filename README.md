# minion factory
ミニオンを生成する。

## バージョン
- rails 5.0.0
- ruby  2.3.0

## セットアップ
Gemのインストール
```
bundle install --path vendor/bundle
```
マイグレーションファイルの実行
```
bundle exec rails db:migrate
```
サーバの起動
```
bundle exec rails s -b 0.0.0.0
```

## 名前を付けてminionを生成する。
```
$ curl -X POST -H "Content-Type: application/json" -d '{"minion":{"name":"Bob"}}' http://localhost:3000/minions
```
```
$ curl http://localhost:3000/minions
=> [{"id":5,"created_at":"2017-09-24T09:06:28.833Z","updated_at":"2017-09-24T09:06:28.833Z","name":"Bob"}]
```
