## データ分析向け，jupyter docker 環境
jupyter notebookにMeCab neolog-dをつけたものです．
以下のコマンドを打ち込むだけで快適な分析環境が構築済みのjupyter環境を自動で実行できるようにするのが目的です

その他皆さん共通のパッケージ等ありそうでしたらDockerfileに記述し，プルリクいただければと思います．


#### やり方
1. byobu内でgit clone して落としたディレクトリに移動
1. `docker-compose build --no-cache` 15分くらいかかる
1. `docker-compose up -d`
1. `docker-compose exec jupyterlab bash` ログインしてパッケージ等入れたい場合
1. 

