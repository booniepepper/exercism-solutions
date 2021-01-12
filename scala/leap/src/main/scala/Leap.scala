object Leap {
  def leapYear(year: Int): Boolean = {
    def divisible: (Int) => Boolean = year % _ == 0
    divisible(4) && !divisible(100) || divisible(400)
  }
}

