ポートフォリオ

## Contents

- [Contents](#contents)
- [開発環境](#開発環境)
- [デザイン](#デザイン)
- [フォルダ構成(/lib)](#フォルダ構成lib)

## 開発環境

|software|version|
|-|-|
|FVM|3.1.7|
|Flutter|3.24.0|
|Dart|3.5.0|

## デザイン

[仮デザイン Canva](https://www.canva.com/design/DAGMej9L4ds/AmDj4GhkiIp_fvC_WTEKmg/edit?utm_content=DAGMej9L4ds&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)S

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
