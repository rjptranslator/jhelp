# jhelp パッケージ
Rのコアパッケージヘルプの日本語訳を表示するパッケージです。Rの最新版に対応しています。  
オリジナルの `help()` を上書きせずに、日本語化されたヘルプが共存できます。  
統計の全分野には精通してないので、誤訳もあると思います。自己責任でご利用ください。
## インストール方法
### Windowsの場合
1. パッケージのzipファイルをDLします。
2. 例えばユーザ名 hoge のデスクトップにDLした場合、  
   管理者権限で起動したRStudioのコンソールから次のように入力します。
   ```
   install.packages("C:/Users/hoge/Desktop/jhelp_x.y.z-w.zip")
   ```
   x, y, z, w は、ダウンロードしたバージョンに適宜合わせてください。
### 上記がうまく行かない場合
1. DLしたパッケージをダブルクリックし、エクスプローラを開きます。
2. その中にある jhelp フォルダを、Rがインストールされている場所の library フォルダ  
   （例えば C:\Program Files\R\R-x.y.z\library など）にコピーします。

この方法は、他のOSでも使える可能性があります。macOSは確認しています。
## 使い方
普通の `help()` と同じです。
1. `library(jhelp)`
2. `jhelp(知りたい関数名)`

RStudioではヘルプペインではなく、ブラウザに表示されます（他の関数などへのリンクは切れます）。  
詳細は、`help(jhelp)` を参照してください。