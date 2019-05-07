## データ分析向け，jupyter docker 環境
jupyter notebookにMeCab neolog-dをつけたものです．
以下のコマンドを打ち込むだけで快適な分析環境が構築済みのjupyter環境を自動で実行できるようにするのが目的です
docker-composeを利用しています．
macの場合はdockerをインストールすると自動でdocker-composeコマンドもインストールされているはずです

その他皆さん共通のパッケージ等ありそうでしたらDockerfileに記述し，プルリクいただければと思います．
サーバ上でのポート等競合がある場合にはdocker-compose.yml内のport部分のホスト側のポートを変更してください
サーバへsshのポートフォワード経由でアクセスする場合にはローカルマシン側に設定が必要です．

#### やり方
1. byobu内でgit clone して落としたディレクトリに移動
1. `docker-compose build --no-cache` 15分くらいかかる
1. `docker-compose up -d`
1. `docker-compose exec jupyterlab bash` ログインしてパッケージ等入れたい場合
1. http://localhost:8888 にブラウザでアクセス

