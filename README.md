# jhelp パッケージ
Rのコア/推奨パッケージヘルプの日本語訳を表示するパッケージです。Rの最新版に対応しています。  
オリジナルの `help()` を上書きせずに、日本語化されたヘルプが共存できます。  
公式ドキュメントの日本語訳（HTML/PDF）も含みます。  
統計の全分野には精通してないので、誤訳もあると思います。自己責任でご利用ください。
## インストール方法
### Windowsの場合
1. 本パッケージのzipファイルをDLします。
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

この方法は、他のOSでも使える可能性があります。macOSとLinuxでは確認済です。

Rtoolsがインストールされてないというようなメッセージが出ても問題なく動きます。Windowsを再起動すると出なくなる場合があるようです。

jhelpパッケージは、Rの.Libraryの下にインストールされることを前提とした作りになっています。一般ユーザでインストールすると、場所が異なるため動作しません。
## 使い方
普通の `help()` と同じです。`library(jhelp)` の後に、以下のように使います。
1. `jhelp(知りたい関数名)`
2. `jhelp(知りたい関数名, package="パッケージ名")`
3. `jhelp(package="パッケージ名")`

jhelp()では、コアパッケージ群は最初から参照できます。つまり、tools パッケージなども最初から library(tools) された状態になっています。  
一方、推奨パッケージ群は、R 本体側で library() しても jhelp パッケージ側と連動しません。例えば R 本体で libray(boot) した場合、jhelp(abc.ci) では表示されず、jhelp(abc.ci, package="boot") とする必要があります。  
RStudioではヘルプペインではなく、ブラウザに表示されます（他の関数などへのリンクは切れます）。  
その他の情報は、`help(jhelp)` を参照してください。
## 公式ドキュメントの日本語訳
jhelpのdocディレクトリ配下に公式ドキュメントの日本語訳（R-admin、R-data、R-exts、R-FAQ、R-intro、R-ints、R-lang、rw-FAQ）のHTMLとPDFを置いています。元のtexinfoファイルを翻訳してHTMLとPDFを生成しました。

HTMLはmakeinfoで生成しても日本語の五十音順索引が作られるようです。一方、texi2pdfでは仕様上不可能なため、日本語索引が必要な『概念の索引』だけ削除しています。LaTeXに変換してPDF化すると日本語索引は作れるものの、別のPDFファイルへのリンク（例えばR-intro.pdfからR-admin.pdfへのリンクなど）が切れます。更に、表のレイアウトが一部崩れます。これらのデメリットを考慮して、texi2pdfでPDF化しました。

HTMLは、RStudioのヘルプペインから開くとアンカーが効きません（英語版公式HTMLも同じ）。ブラウザから直接開けば動作します。
## パッケージソース
sources ディレクトリ の jhelpxyz-w-src.zip（x/y/z/w には jhelp パッケージと同じ数字が入ります）に、本パッケージをビルドするソース一式を置いています。ヘルプのRdファイルと公式ドキュメントのtexinfoファイルの日本語版も含まれます。詳細については、これを展開して作成されるディレクトリにある HowToBuild.txt を参照してください。実質的にWindows版Rインストーラをビルドします。
## 著作権 / Copyright
- **Rコアパッケージ**  
  Copyright (C) 1995-2026 The R Core Team and other contributors  
- **推奨パッケージ群**  
  各パッケージの著作者に著作権があります  
- **R公式ドキュメント**  
  Copyright (C) The R Core Team  
- **翻訳および独自コード**  
  Copyright (C) 2026 船越裕介
## ライセンス / License
このパッケージは **GNU General Public License (GPL) 第2版以降** の条件で配布されています。  
翻訳は原著ドキュメントの二次的著作物です。  

詳しくはパッケージ内の LICENSE と COPYRIGHTS を参照してください。
## 注意事項 / Disclaimer
- 本パッケージは **R Core Team による公式パッケージではありません**。  
- 推奨パッケージの著作者および R Core Team から承認を受けたものではありません。
