# 必要環境・ソフト

Windows11 64bit
Zwift
画面自動キャプチャソフト（固定ファイル名で自動保存してくれるもの）
Chrome Desktopブラウザ
マイク・ヘッドホン推奨
python3（バージョンは3.13推奨）

# 事前準備

Gemini API Keyを取得する
Eleven Labs API Keyを取得する

# Setup手順

必要ソフトをインストールする
- python 3.13
- Chrome Desktop
- 画面自動キャプチャソフト

ソースを展開する

下記設定ファイルを書き換える
- backend\config.yaml
  Gemini API Keyの埋め込み
  キャプチャソフトが書き出す画像のパス・ファイル名の設定
　各種パスの書き換え
  キャプチャした画像からZwift画面を切り出す範囲の設定
- frontend\config.js
  ElevenLabsのAPIキーの埋め込み
- frontend\images
  画像の差し替えをしたい場合はstand.png,talk.pngを差し替える（APNG推奨）

setup.batを実行

pythonを実行
- python backend\main.py

ブラウザでアクセス
- http://localhost:8000


※このソフトウェアは、自宅への個人利用向けに設計されているため、
　絶対に外部向けのサーバで公開しないでください。localhostでのみ
　実行してください。APIキーの一部はブラウザとの通信に含まれ、
　APIキーの不正利用を招く恐れがあります。


# 注意事項

※Hinaftは個人開発による非公式ツールです。
ご利用は自己責任でお願いいたします。

本システムの利用により発生した問題について、開発者は責任を負いません。
また、Zwift Inc.とは一切関係ありません。
不具合や質問について、Zwift Inc.へのお問い合わせは行わないようお願いいたします。

Hinaft is an unofficial personal project.
Use at your own risk.

The developer is not responsible for any issues caused by the use of this system.
Hinaft is not affiliated with Zwift Inc.
Please do not contact Zwift Inc. regarding any issues, questions, or support related to this system.
