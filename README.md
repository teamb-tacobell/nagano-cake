# Nagano-cake
<img width="1293" alt="Nagano-cake top" src="https://user-images.githubusercontent.com/123624971/226805920-33a4b4b8-24d6-4ccf-af49-a11bc64084b0.png">

* [概要](#概要)
* [使用している言語フレームワークのバージョン](#使用している言語フレームワークのバージョン)
* [機能](#機能)
* [インストール方法](#インストール方法)
* [管理者ページログインについて](#管理者ページログインについて)

---

### 概要
長野県にある洋菓子店「ながのCAKE」(※架空のお店です)の商品の通販を想定した、ECサイトを開発しました。

### 使用している言語フレームワークのバージョン
- ruby 3.1.2
- Rails 6.1.7.3

### 機能
- 顧客側
  - 会員登録、ログイン・ログアウト、退会
    - 会員情報の編集 
  - カートへの追加、商品購入
    - 支払い方法、配送先の指定
  - 注文履歴の閲覧
- 管理者側
  - 商品の新規追加、編集、閲覧
    - 商品情報の編集
  - 会員登録されているユーザ情報の閲覧、編集、退会処理
    - ユーザの注文履歴閲覧
- その他
  - 商品検索機能
  - 商品ジャンルごとの商品検索機能

### インストール方法
~~~
$ git clone git@github.com:teamb-tacobell/Nagano-cake.git
~~~
~~~
$ cd Nagano-cake
~~~
~~~
$ rails db:migrate
~~~
~~~
rails db:seed
~~~
~~~
$ yarn install
~~~
~~~
$ bundle install
~~~

### 管理者ページログインについて
初期段階での管理者ログインに必要なメールアドレス及びパスワードは下記となっています。
- メールアドレス：admin@admin
- パスワード：tacobell