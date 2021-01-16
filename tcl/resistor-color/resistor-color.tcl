namespace eval resistorColor {
    proc colorCode color {
        set lcolors [split [colors]]
        for {set i 0} {$i < 10} {incr i} {
            if {$color == [lindex $lcolors $i]} {
                return $i
            }
        }
        error "Invalid color: $color"
    }

    proc colors {} {
        return "black brown red orange yellow green blue violet grey white"
    }
}

