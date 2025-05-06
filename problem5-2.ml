(* 目的: 時間を受け取ったら、午前か午後かを出力する *)
(* jikan : int -> string *)
let jikan x = if x < 12 then "午前"
                        else "午後"

(* テスト *)
let test1 = jikan 3 = "午前"
let test2 = jikan 18 = "午後"
let test3 = jikan 0 = "午前"
let test4 = jikan 12 = "午後"