# 製品管理システム

- Vue.js【フロントエンド】と ASP.NET CORE API【バックエンド】で作成するシンプルなシステムです。<br>
- 企業の従業員のワークロードを監視するためのソリューションです-

## 目次

- [概要](#概要)
  - [開発環境設置](#開発環境設置)
  - [スクリーンショット](#スクリーンショット)
  - [リンク](#リンク)
- [構造](#構造)
  - [開発環境・ツール](#a-開発環境ツール)
  - [ｺｰﾄﾞﾌｧｲﾙ構造・定義](#b-ｺｰﾄﾞﾌｧｲﾙ構造定義)
  - [継続的な開発](#c-継続的な開発)
- [著者](#d-著者)

## 概要

[目次](#目次)

### 開発環境設置

- Bootstrap をインストール

  - `npm install bootstrap`
  - import bootstrap in `main.js`

    ```
    import "bootstrap";
    import "bootstrap/dist/css/bootstrap.min.css"
    ```

- Json サーバーをインストール（）

  - `npm install -g json-server`
  - データベース json ファイル (例、dummy.json) を作成し、コマンド プロンプトで次のコマンドを実行します。
    - `json-server --watch dummy.json`
  - JSON の一般的な用途は、Web サーバーとの間でデータを交換することです。<br>
    Web サーバーからデータを受信する場合、データは常に文字列です。<br>
    JSON.parse() でデータを解析すると、データは JavaScript オブジェクトになります。
  - `JSON.stringify(myObj)`を使用して、オブジェクトに格納された JavaScript データを JSON に変換し、サーバーに送信します。

- axios をインストール

### メニュー

<image style="width:700px;height:100px" src="./document/menu.png" />

```vue.js
<div class="p-3">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <ul class="nav">
          <li class="nav-item">
            <h3 class="d-flex justify-content-center m-1 mr-5">
              {{ ja_Title }}
            </h3>
          </li>
          <li class="nav-item m-1">
            <router-link class="btn btn-light btn-outline-primary" to="/">{{
              ja_Job
            }}</router-link>
          </li>
        </ul>
        <div>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div
            style="position: absolute; top: 60px; right: 10px"
            class="collapse"
            id="navbarTogglerDemo02"
          >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item"></li>
              <li class="nav-item">
                <router-link
                  class="btn btn-light m-1 btn-outline-primary"
                  :to="{ name: 'signup' }"
                  >{{ ja_Signup }}</router-link
                >
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <router-view />
  </div>
```

### リンク

以下のリンクは、デモンストレーションのために github にアップロードされた [Front End] システムのみです。<br>
URL: [Frontend ライブサイト](https://potatoscript.github.io/system-vuejs/)

## 構造

[目次](#目次)

### a 開発環境ツール

<image style="width:700px;height:800px" src="./document/home.png" />

- [PostgreSQL](https://www.postgresql.org/) - Database
- [ASP.NET CORE API](https://docs.microsoft.com/en-us/aspnet/core/?view=aspnetcore-6.0) - Back End development framework in c#
- [Vue.js](https://vuejs.org/) - Front End development library with [cli](https://cli.vuejs.org/) framework
- [AXIOS](https://axios-http.com/docs/intro) - ブラウザから XMLHttpRequest を作成する
- [Boostrap.js](https://getbootstrap.com/) - css スタイリング ライブラリ
- [Chart.js](https://chartjs.org/) - JavaScript charting ライブラリ

### b ｺｰﾄﾞﾌｧｲﾙ構造定義

[目次](#目次)

### 1. DB 定義

- [Employees テーブル](./document/Employees.sql) - 従業員マスターテーブルデータ DDL
- [Jobs テーブル](./document/Jobs.sql) - 業務テーブルデータ DDL

### 2. Backend 　フォルダ構造

- [dist](./arentinc-api/dist) - デプロイされたファイルの場所<br>
- [Startup.cs](./arentinc-api/Startup.cs) - Get the connectionString of the database from `appsettings.json`
- [appsettings.json](./arentinc-api/appsettings.json) - Set the connectionSgring of the database
- Controllers - Frontend の入口 <br>
  |- [EmployeeConroller.cs](./arentinc-api/Controllers/EmployeeController.cs) - 従業員マスターデータ http リクエスト →EmployeeServices.cs <br>
  |- [JobController.cs](./arentinc-api/Controllers/JobController.cs) - 業務データ http リクエスト →JobServices.cs <br>
- Models<br>
  |- [DBContext.cs](./arentinc-api/Models/DBContext.cs) -　データベーステーブル名定義 <br>
  |- [Employee.cs](./arentinc-api/Models/Employee.cs) - 従業員データベーステーブル項目定義 <br>
  |- [Job.cs](./arentinc-api/Models/Job.cs) - 業務データベーステーブル項目定義 <br>
- Services <br>
  |- [DataBaseServices.cs](./arentinc-api/Services/DataBaseServices.cs) - データベース接続設定クラス <br>
  |- [EmployeeServices.cs](./arentinc-api/Services/EmployeeServices.cs) - 従業員ＳＱＬクエリ作成クラス <br>
  |- [JobServices.cs](./arentinc-api/Services/JobServices.cs) - 業務ＳＱＬクエリ作成クラス <br>

### 3. Frontend 　フォルダ構造

- [dist](./arentinc-ui/dist) - デプロイされたファイルの場所<br>
- assets<br>
  |- js - [url.js](./arentinc-ui/src/assets/js/url.js) - Backend の URL を設定する `API_URL: "https://localhost:44306/api/"` <br>
  |- [dummy.json](./arentinc-ui/src/assets/dummy.json) - Backend の接続なし時のダミーデータ (デモンストレーション用) <br>
- locales<br>
  |- [ja.json](./arentinc-ui/src/locales/ja.json) - 各漢字変数設定 <br>
- router<br>
  |- [index.js](./arentinc-ui/src/router/index.js) - タブールート設定<br>
- views<br>
  |- [EmployeeView.vue](./arentinc-ui/src/views/EmployeeView.vue) - 従業員マスター表示画面 <br>
  |- [JobView.vue](./arentinc-ui/src/views/JobView.vue) - 業務一覧表示画面 <br>
  |- [InputModalView.vue](./arentinc-ui/src/views/InputModalView.vue) - 共通データ登録表示画面 `prop` `$emit` `<slot>` <br>
- [App.vue](./arentinc-ui/src/App.vue) - Main 画面 <br>
- [main.js](./arentinc-ui/src/main.js) - 共通 library 設定箇所

### 4. Deploy 　配備

[目次](#目次)

- Frontend を gitHub に配備する設定箇所：

  - [deploy.sh](./arentinc-ui/deploy.sh)
  - [package.json](./arentinc-ui/package.json) - `"deploy": "sh deploy.sh"`
  - [vue.config.js](./arentinc-ui/vue.config.js) - `publicPath : '/arentinc-production/'`

- Backend を Docker Image を作成する設定箇所：
  - [Dockerfile](./arentinc-api/Dockerfile) <br>
    `docker build -t <Ddocker Hub ID>/<Project Name>:<Version> .`

### c 継続的な開発

[目次](#目次)

- 今後の課題：
  - PC・スマートフォン表示の調整改善
  - Uncaught (in promise) RangeError: Maximum call stack size exceeded
- 今後検証付きのログインページを作成する（Login・Logout・Register 機能追加）

## d 著者

- Website - [BRUCE LIM](https://potatoscript.github.io/resume/)
