# 現代焚書第5号

[![Build books.](https://github.com/huideyeren/XiandaiFenshuVol5/actions/workflows/jobs.yml/badge.svg)](https://github.com/huideyeren/XiandaiFenshuVol5/actions/workflows/jobs.yml)

Sorry, but the book will be written in Japanese, and the project is in Japanese as an official language. If you can read and write Japanese, you are welcome to contribute.

恢徳堂が2021年12月のコミックマーケット99で頒布する予定の『現代焚書第5号 −何者にもなれなかった私たち−』の原稿を格納するリポジトリです。

寄稿したいと思う方や査読したいと思う方は、このドキュメントと[ディスカッション](https://github.com/huidetang/XiandaiFenshuVol5/discussions)の内容をよく読んだうえで、ディスカッションに

## ライセンスについて （About LICENSE）

![クリエイティブ・コモンズ・ライセンス](https://i.creativecommons.org/l/by/4.0/88x31.png)

この書籍は著作権法上認められる引用の範囲内において引用した資料を除き、 [クリエイティブ・コモンズ 表示 4.0 国際 ライセンス](http://creativecommons.org/licenses/by/4.0/) の下に提供されています。引用した資料のライセンスについてはオリジナルのライセンスに従います。

なお、[ライセンス条項の日本語訳](https://creativecommons.org/licenses/by/4.0/legalcode.ja)や[その要約](https://creativecommons.org/licenses/by/4.0/deed.ja)も目を通して置いてください。

This book is provided under a CC-BY-4.0 License, except for material quoted within the scope of quotations permitted under copyright law. The licensing of the quoted material is subject to the original license.

## テーマ

まずは、Twitterで募集したアンケート（以下参照）をご覧ください。

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">恢徳堂では、今年冬のコミックマーケットに評論ジャンル（もしくはアニメ・ゲームジャンル）で以下の内容のどれかで申し込むことを考えています。<br>投票結果1位のものをメインで書くことを考えていますが、それ以外ものも書けたら一緒に出すかもしれません。<br>なお、ゲスト原稿も募集しております。</p>&mdash; ヨーシャ@恢徳堂（評論・創作・同人・写真アカウント） (@IosifHuide) <a href="https://twitter.com/IosifHuide/status/1422510235630014464?ref_src=twsrc%5Etfw">August 3, 2021</a></blockquote>

これにより、テーマはアンケートで同率首位だった以下の2つに絞られました。

- 10周年の今だから考える「輪るピングドラム」論
- 競馬ファン歴25年が語る「ウマ娘」と競馬

実際の内容についてはまだ未定です。

## コントリビュートガイドライン

現代焚書第5号は前述の通り、オープンなライセンスの元で制作されています。寄稿や校正など、この本の制作に協力したい場合はこのコントリビュートガイドラインに目を通したうえでご参加ください。

### レギュレーション

現代焚書第5号は全年齢対応の評論誌です。

### 使用するツールについて

現代焚書第5号は、以下のツールを使って作成されています。

- [書籍作成ツール「Re:VIEW」](https://reviewml.org/)
- [ソースコード管理サービス「GitHub」](https://github.com/)
- [校正支援ツール「textlint」](https://textlint.github.io/)
  - [株式会社SmartHRによるtextlint用の校正ルールセット](https://shanaiho.smarthr.co.jp/n/n881866630eda)

また、以下のツールを使うことをおすすめします。

- [テキストエディタ「Visual Studio Code」](https://code.visualstudio.com/)

#### Re:VIEWについて

Re:VIEWは[特別な記法で書かれるテキストデータ](https://github.com/kmuto/review/blob/master/doc/format.ja.md)を使う書籍作成ツールです。このツールを使うと印刷用PDFと電子書籍用EPUBを作成できます。このツールに必要なのはテキストデータなので、[Visual Studio Code](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)や[Vim](https://www.vim.org/)、[GNU Emacs](https://www.gnu.org/software/emacs/)などのテキストエディタで編集してください。Microsoft Wordや一太郎などのワープロソフトは使えませんが、Re:VIEW記法がわからないという方はワープロソフトで文章をお送りください。こちらでRe:VIEW記法に転記いたします。なお、その場合は原稿は横組みで作成してください。

#### GitHubについて

GitHubは、Gitと呼ばれるバージョン管理ツールを使ったソースコード管理サービスです。現在は米Microsoft傘下のGitHub, Inc.によって運営されています。

画面はすべて英語表示ですが、使っている人が多いので使い方は省略します。さまざまな本が出ていますが、詳しくは、Windowsの方は以下の本を読むとよいでしょう。

- すばら3『字書きのためのWindows環境構築』
  - [紙版（BOOTH）](https://booth.pm/ja/items/2266661)
  - [Amazon Kindle版](https://www.amazon.co.jp/dp/B088F7527Z)

Macの方は……後日紹介します。

Linuxの方は……GitHubを使いこなすのはおそらく朝飯前かと思われるので何も言いません。

一応、[何かわからなくなったら公式マニュアルを読んでください](https://docs.github.com/ja)。ただし、一応日本語は用意されていますが、機械翻訳を使っていていろいろと残念な翻訳になっているところがあったり、まだ翻訳がなされていなかったりします。

GitHub上のファイルを読み書きするにはGitと呼ばれるバージョン管理ツールが必要です……が、このGitというツールはコマンドラインで操作するツールです。なので、コマンドラインとかShellとか聞いてナニコレと思った人は[GitHub Desktop](https://desktop.github.com/)を使うとよいと思います。

GitHubのもとになっているGitにはブランチと呼ばれる、変更を分岐させて記録できる機能があります。

#### Visual Studio Codeについて

Visual Studio CodeはMicrosoftが開発しているプログラミング向けのテキストエディターです。

なお、[このページ](https://github.com/huidetang/XiandaiFenshuVol5)で「.」キーを押すとGitHub.devというWeb上で使えるVisual Studio Code環境があります……が期待しないでください。正直使えない機能が多くて苦労します。とりわけ、Re:VIEW向けの設定が全く効きません。
