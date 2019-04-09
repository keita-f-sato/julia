###環境構築

``` bash
#dockerfileがあるディレクトリで実行
$ docker bulid -t julia .

#このリポジトリのディレクトリで実行
$ docker run -v $(pwd):/../julia -p 9879:9879 -it --name julia -d julia
```

### Julia study

これはJuliaの勉強コード集。
後で整理するかも
