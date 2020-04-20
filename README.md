# README

Can't create new user record because users_controller doesn't exist

* Create users_controller

* Add create action only in users_controller

Message doesn't show up on chatroom page

* Maybe custom_display in ChatroomController doesn't work


2020/4/19
* search function doesn't work well
-> 検索専用ページを遷移先として作る
or 今打開しようとしてるmessages_controllerでsearch関連のメソッドを定義して_message.html.erbに適切な検索結果を返す方法をガムシャラに見つける,

-> "message.html.erbを別名で作りmessgaes_controllerのsearchのインスタンス変数を返す。chatroomのindexを別名（search）で作成してパーシャルで検索結果を表示する。
または、現状の_message.html.erbをそのままにして、messgaes_controllerのcreateアクション内にてif文で検索結果または全表示のロジックを組む。"

or 他の方法を見つける
or rails APIをゼロから実装する
or message_meをゼロから

2020/4/20
検索フォーム完成
