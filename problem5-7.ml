(* 身長(m)と体重(kg)を与えられたら、bmi指数を計算する *)
(* bmi : float -> float -> float *)
let bmi height weight =
    weight /. (height ** 2.)

(* 身長(m)と体重(kg)を与えられたら、bmi指数を計算し、その数値によって体型を返す *)
(* taikei : float -> float -> string *)
let taikei height weight =
    if bmi height weight < 18.5 
        then "やせ"
        else 
            if bmi height weight < 25.
                then "標準"
                else 
                    if bmi height weight < 30.
                        then "肥満"
                        else "高度肥満" 

(* テスト *)
let test1 = bmi 1.55 52.5 = 21.8522372528616
let test2 = bmi 1.70 61.8 = 21.3840830449827
let test3 = bmi 1.93 100.2 = 26.900051008080755

let test4 = taikei 1.55 52.5 = "標準"
let test5 = taikei 1.70 61.8 = "標準"
let test6 = taikei 1.93 100.2 = "肥満"
let test7 = taikei 1.72 40.2 = "やせ"
let test8 = taikei 1.67 84.4 = "高度肥満"