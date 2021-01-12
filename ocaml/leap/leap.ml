let divisible a b =
    a mod b == 0;;

let leap_year y = 
    divisible y 4 && not (divisible y 100) || divisible y 400;;

