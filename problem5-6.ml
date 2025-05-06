(* 目的: 二次方程式 a x^2 + b x + c = 0 の係数 a, b, c (いずれも実数) が与えらたら虚数解を持つか判定する *)
(* ただし、a は 0 ではないと仮定する *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c
    = if b ** 2. -. 4. *. a *. c < 0. then false
                                     else true 

(* テスト *)
let test1 = kyosuukai 48. 2308. 24. = true
let test2 = kyosuukai 23. 18. 23. = false
let test3 = kyosuukai 8. 9. 0. = true
let test4 = kyosuukai 20. 0. 5. = false
let test5 = kyosuukai 576. 0. 0. = true
let test6 = kyosuukai 24.5702 4.3849 8.231 = false
let test7 = kyosuukai (-56.82) 3456.982145 82.8 = true