# cafe_note_mobile
Flutter勉強用のリポジトリ。状態管理にstate notifier + freezedを使ってみる。

## 開発用メモ
1. entityクラスの作成
- `./lib/entities/cafe.dart`を真似てクラスファイルを作成
- `flutter pub run build_runner build`でfreezedクラスを生成

2. stateクラスの作成
- `./lib/entities/cafes_state.dart`を真似てクラスファイルを作成
- `flutter pub run build_runner build`でfreezedクラスを生成

3. controllerクラスの作成
4. pageクラスの作成
5. state/controllerクラスをmainファイルに登録
