(* 目的: 名前と成績の組を受け取ったら「〇〇さんの評価は△です」という文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki student =
    match student with
        (name, seiseki) -> name ^ "さんの評価は" ^ seiseki ^ "です"

(* テスト *)
let test1 = seiseki ("赤坂", "秀") = "赤坂さんの評価は秀です"
let test2 = seiseki ("井村", "優") = "井村さんの評価は優です"
let test3 = seiseki ("宇野", "良") = "宇野さんの評価は良です"
