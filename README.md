ポートフォリオ

## Contents

- [Contents](#contents)
- [開発環境](#開発環境)
- [デザイン](#デザイン)
- [Gitルール](#gitルール)
  - [ブランチ](#ブランチ)
  - [コミットメッセージ](#コミットメッセージ)
- [フォルダ構成(/lib)](#フォルダ構成lib)

## 開発環境

|software|version|
|-|-|
|FVM|3.1.7|
|Flutter|3.24.0|
|Dart|3.5.0|

## デザイン

[仮デザイン Canva](https://www.canva.com/design/DAGMej9L4ds/AmDj4GhkiIp_fvC_WTEKmg/edit?utm_content=DAGMej9L4ds&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

## Gitルール

### ブランチ

- main
  - 本番環境
  - マージのみ
- develop
  - 開発の主軸
  - featureの派生元
  - マージのみ
- feature
  - 機能の追加や変更
  - 基本このブランチで作業
- release
  - 検証環境

### コミットメッセージ

- feat: A new feature
- fix: A bug fix
- docs: Documentation only changes 
- style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- refactor: A code change that neither fixes a bug nor adds a feature
- perf: A code change that improves performance
- test: Adding missing or correcting existing tests
- chore: Changes to the build process or auxiliary tools and libraries such as documentation generation

[参考](https://qiita.com/konatsu_p/items/dfe199ebe3a7d2010b3e)

## フォルダ構成(/lib)

```bash
lib/
│
├── main.dart
├── src/
│   ├── app.dart                 // アプリ全体の設定とルートウィジェット
│   ├── models/                  // データモデルを格納
│   ├── views/                   // ユーザーインターフェイス関連のコード
│   │   ├── widgets/             // 再利用可能なウィジェット
│   │   └── screens/             // 各画面のウィジェット
│   ├── controllers/             // ビジネスロジック（例えば、状態管理用）
│   ├── services/                // 外部サービスとの通信
│   └── utils/                   // ユーティリティークラスや関数
├── resources/
│   ├── strings.dart             // 文字列定義、ローカリゼーション
│   ├── colors.dart              // カラー設定
│   └── themes.dart              // テーマ設定
├── constants.dart               // 定数の定義
└── routes.dart                  // Named Routesの定義
```
