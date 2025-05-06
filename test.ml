let baito_kyuyo year time = (850 + (year * 100)) * time

let () = print_int (baito_kyuyo 3 20);
         print_newline ()