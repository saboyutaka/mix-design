# Mix-Design
Laravel Mix を使ってデザイン環境を提供するサンプルアプリ


[デザイナーさんとの共同作業の悩みをLaravel Mixで解決する - Qiita](https://qiita.com/saboyutaka/private/f5793a1c3dc25b4a9305)

![](https://camo.qiitausercontent.com/43fccb5549d33f1cb681ecf12373efb06268338a/68747470733a2f2f692e6779617a6f2e636f6d2f65343437643865653436356431663438353062613432326266316533643131632e676966)

## how to use

Install 

`$ git clone git@github.com:saboyutaka/mix-design.git`

### Linux環境構築
[Docker for mac](https://www.docker.com/docker-mac)と[Laradock](http://laradock.io)を使用しています

On Mac
```bash
$ cd mix-design
$ make build
$ cd laradock
$ docker-compose exec bash
```

On workspace
```bash
$ npm install && npm run dev
```

ブラウザで`http://localhost`にアクセス

### デザイン環境
Mac上で作業することを想定しています。

Install node
```bash
$ brew install node
```


```bash
$ cd design
$ npm install 
$ npm run dev
$ npm run gulp
```

作業を行う場合は`npm run watch`, `npm run gulp` をそれぞれ別のターミナルで起動する。
