(* 目的: 受け取った実数 x への絶対値を計算する *)
(* abs_value : float -> float *)
let abs_value x =
    if x > 0.0 then x
               else -. x

(* テスト *)
let test1 = abs_value 2.8 = 2.8
let test2 = abs_value (-2.8) = 2.8
let test3 = abs_value 0.0 = 0.0