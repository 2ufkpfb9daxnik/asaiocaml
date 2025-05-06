(* 鶴1羽の足の本数 *)
let crane_leg = 2

(* 亀1匹の足の本数 *)
let turtle_leg = 4

(* 目的: 鶴の数を与えられたら、足の本数を計算する *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi crane = crane * crane_leg

(* 目的: 亀の数を与えられたら、足の本数を計算する *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi turtle = turtle * turtle_leg

(* 目的: 鶴の数と亀の数を与えたら、足の数の合計を計算する *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi crane turtle = tsuru_no_ashi crane + kame_no_ashi turtle

(* 目的: 鶴と亀の数の合計と足の合計を与えられたら、鶴の数を計算する *)
(* tsurukame : int -> int -> int *)
let tsurukame tsurukame_sum leg_sum = (leg_sum - 4 * tsurukame_sum) / (- 2)

(* テスト *)
let test1 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 20 = 40
let test3 = tsuru_no_ashi 1942 = 3884

let test4 = kame_no_ashi 5 = 20
let test5 = kame_no_ashi 81 = 324
let test6 = kame_no_ashi 4589 = 18356

let test7 = tsurukame_no_ashi 29 13 = 110
let test8 = tsurukame_no_ashi 72 824 = 3440
let test9 = tsurukame_no_ashi 1238 71341 = 287840

let test10 = tsurukame 25 100 = 0
let test11 = tsurukame 4812 230896 = -105824
let test12 = tsurukame 13087 5718 = 23315