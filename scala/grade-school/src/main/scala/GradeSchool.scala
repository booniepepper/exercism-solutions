import scala.collection.immutable.SortedMap

class School {
  type DB = SortedMap[Int, Seq[String]]
  private var roster: DB = SortedMap()

  def add(name: String, grade: Int): Unit =
    roster += grade -> (roster.getOrElse(grade, Seq()) :+ name)

  def db: DB = roster

  def grade(grade: Int): Seq[String] = roster.getOrElse(grade, Seq())

  def sorted: DB = roster.transform((_, names) => names.sorted)
}

