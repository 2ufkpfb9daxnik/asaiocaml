(* 目的: 二次方程式 a x^2 + b x + c = 0 の係数 a, b, c (いずれも実数) が与えられたときにその判別式の値を計算する *)
(* ただし、a は 0 ではないと仮定する。*)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c =
    b ** 2. -. 4. *. a *. c

(* 目的: 二次方程式 a x^2 + b x + c = 0 の係数 a, b, c (いずれも実数) が与えられたときにその実数解の個数を計算する *)
(* ただし、a は 0 ではないと仮定する *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c =
    if hanbetsushiki a b c = 0. then 1
                                else if hanbetsushiki a b c < 0. then 0
                                                                 else 2

(* テスト *)
let test1 = hanbetsushiki 48. 2308. 24. = 5322256.
let test2 = hanbetsushiki 23. 18. 23. =  -1792.
let test3 = hanbetsushiki 8. 9. 0. = 81.
let test4 = hanbetsushiki 20. 0. 5. = -400.
let test5 = hanbetsushiki 576. 0. 0. = 0.
let test6 = hanbetsushiki 24.5702 4.3849 8.231 = -789.72191679
let test7 = hanbetsushiki (-56.82) 3456.982145 82.8 =  11969544.3348488

let test8 = kai_no_kosuu 48. 2308. 24. = 2
let test9 = kai_no_kosuu 23. 18. 23. = 0
let test10 = kai_no_kosuu 8. 9. 0. = 2
let test11 = kai_no_kosuu 20. 0. 5. = 0
let test12 = kai_no_kosuu 576. 0. 0. = 1
let test13 = kai_no_kosuu 24.5702 4.3849 8.231 = 0
let test14 = kai_no_kosuu (-56.82) 3456.982145 82.8 = 2
