import scala.collection.immutable.TreeMap
import scala.collection.immutable.TreeSet

class School {
  type DB = Map[Int, Set[String]]
  private val roster: DB = TreeMap()

  def add(name: String, g: Int) = roster.updatedWith(g){
    case Some(names) => Some(names + name)
    case None => Some(TreeSet(name))
  }

  def db: DB = roster

  def grade(g: Int): Seq[String] = roster(g).toSeq

  def sorted: DB = roster
}

