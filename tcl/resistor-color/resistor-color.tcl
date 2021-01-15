namespace eval resistorColor {
    proc colorCode color {
        switch $color {
            black   { set n 0 }
            brown   { set n 1 }
            red     { set n 2 }
            orange  { set n 3 }
            yellow  { set n 4 }
            green   { set n 5 }
            blue    { set n 6 }
            violet  { set n 7 }
            grey    { set n 8 }
            white   { set n 9 }
            default { error "Invalid color: $color" }
        }
        return $n
    }

    proc colors {} {
        return "black brown red orange yellow green blue violet grey white"
    }
}

