# イベント告知・参加アプリ

## 概要

イベントアプリ（実際に存在するサイト connpass）で使用することを想定した API 群です。

## API Doc

## 環境構築

```
$ docker-compose up -d
```

- http://localhost:3000/ でアクセスできる

## DB

### スキーマ変更

```
bundle exec ridgepole --config config/database.yml --env development --file Schemafile --apply
```

### デモデータ投入

```
rails db:fixtures:load
rails db:fixtures:load FIXTURES=events
```

## テスト実施方法

## 環境

- Ruby 3.1
- Rails 7.0.4
- MySQL 8.0

## 文責

- 作成者：soga.y

## ライセンス

This sample code is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
