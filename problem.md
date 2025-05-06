# 浅井健一「プログラミングの基礎」問題

テキストとして書くのが適当と思った場合に書く

## 問題4.5

前節の問題で作成した関数の型はそれぞれ何か。

問題4.1 int -> int -> int
問題4.2 string -> string
問題4.3 int -> int
問題4.4 int -> int -> int

## 問題5.1

次の if 文にはどのような型が付くか。つかない場合、どこで型エラーが起きるか。

(1) if 2 < 1 then 3 else 4
int

(2) if "true" then 3.14 else 2.72
条件式で型エラー(bool型ではない)

(3) if "a" = "b" then false else true
true

(4) if true < false then 1 else "2"
else節の返り値の型がthen節と違う

(5) if not (3 = 4) then 1 < 2 else 1 > 2
true
