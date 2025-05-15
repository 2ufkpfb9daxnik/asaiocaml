(* 目的: 国語、数学、英語、理科、社会の5教科の点数を与えられたら、その合計点を返す *)
(* goukei : float -> float -> float -> float -> float -> float *)
let goukei kokugo sugaku eigo rika shakai
    = kokugo +. sugaku +. eigo +. rika +. shakai

(* 目的: 国語、数学、英語、理科、社会の5教科の合計点を与えられたら、その平均点を返す *)
(* heikin : float -> float *)
let heikin kokugo sugaku eigo rika shakai
    = (kokugo +. sugaku +. eigo +. rika +. shakai) /. 5.

(* 目的: 国語、数学、英語、理科、社会の5教科の点数を与えられたら、その合計点と平均点を組にして返す *)
(* goukei_to_heikin : float -> float -> float -> float -> float -> float *)
let goukei_to_heikin kokugo sugaku eigo rika shakai
    = (goukei kokugo sugaku eigo rika shakai, heikin kokugo sugaku eigo rika shakai)

(* テスト *)
let test1 = heikin 1. 2. 3. 4. 5. = 3.
let test2 = heikin 10. 10. 10. 10. 10. = 10.
let test3 = heikin 97. 82. 89. 75. 61. = 80.8

let test4 = goukei 1. 2. 3. 4. 5. = 15.
let test5 = goukei 10. 10. 10. 10. 10. = 50.
let test6 = goukei 97. 82. 89. 75. 61. = 404.

let test7 = goukei_to_heikin 1. 2. 3. 4. 5. = (15., 3.)
let test8 = goukei_to_heikin 10. 10. 10. 10. 10. = (50., 10.)
let test9 = goukei_to_heikin 97. 82. 89. 75. 61. = (404., 80.8)
