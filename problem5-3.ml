(* 誕生日(月と日)を受け取ったら、その星座であるかどうかを判定する *)
(* ?? : int -> int -> bool *)
let ohitsuji month day = ((month = 3) && (21 <= day)) || ((month = 4) && (day <= 19))
let oushi month day = ((month = 4) && (20 <= day)) || ((month = 5) && (day <= 20))
let futago month day = ((month = 5) && (21 <= day)) || ((month = 6) && (day <= 20))
let kani month day = ((month = 6) && (21 <= day)) || ((month = 7) && (day <= 22))
let shishi month day = ((month = 7) && (23 <= day)) || ((month = 8) && (day <= 22))
let otome month day = ((month = 8) && (23 <= day)) || ((month = 9) && (day <= 22))
let tenbin month day = ((month = 9) && (23 <= day)) || ((month = 10) && (day <= 22))
let sasori month day =  ((month = 10) && (23 <= day)) || ((month = 11) && (day <= 21))
let ite month day = ((month = 11) && (22 <= day)) || ((month = 12) && (day <= 21))
let yagi month day = ((month = 12) && (22 <= day)) || ((month = 1) && (day <= 19))
let mizugame month day = ((month = 1) && (19 <= day)) || ((month = 2) && (day <= 20))
let uo month day = ((month = 2) && (19 <= day)) || ((month = 3) && (day <= 20))

(* 誕生日(月と日)を受け取ったら、星座を出力する *)
(* seiza : int -> int -> string *)
let seiza month day =
    if ohitsuji month day then "牡羊座"
    else if oushi month day then "牡牛座"
    else if futago month day then "双子座"
    else if kani month day then "蟹座"
    else if shishi month day then "獅子座"
    else if otome month day then "乙女座"
    else if tenbin month day then "天秤座"
    else if sasori month day then "蠍座"
    else if ite month day then "射手座"
    else if yagi month day then "山羊座"
    else if mizugame month day then "水瓶座"
    else if uo month day then "魚座"
    else "1年の中に存在しません"

(* テスト *)
let test1 = seiza 4 21 = "牡牛座"
let test2 = seiza 7 23 = "獅子座"
let test3 = seiza 11 23 = "射手座"
let test4 = seiza 2 1 = "水瓶座"
let test5 = seiza 10 22 = "天秤座"
