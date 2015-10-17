import scala.collection.mutable.HashMap

def double(x:Int):Int = x * 2

double(4)

def double(x:Int):Int = {  
  x * 2
}

double(6)

var mutable = "I am mutable"
val immutable = "I am not mutable"

List(1, 2, 3)
List("one", "two", "three")
List("one", "two", 3)

List("one", "two", 3)(2)

val animals = Set("lions", "tigers", "bears")
animals + "armadillos"
animals - "tigers"
animals + Set("armadillos", "raccoons")

animals ++ Set("armadillos", "raccoons")
animals -- Set("lions", "bears")

Set(1, 2, 3) == Set(3, 2, 1)
List(1, 2, 3) == List(3, 2, 1)

val ordinals = Map(0 -> "zero", 1 -> "one", 2 -> "two")
ordinals(2)


 val map = new HashMap[Int, String]
 map += 4 -> "four"
 map += 8 -> "eight"
 map

 val list = List("frodo", "samwise", "pippin")
list.foreach(hobbit => println(hobbit))


val hobbits = Set("frodo", "samwise", "pippin")
hobbits.foreach(hobbit => println(hobbit))

val hobbits = Map("frodo" -> "hobbit", "samwise" -> "hobbit", "pippin" -> "hobbit")
hobbits.foreach(hobbit => println(hobbit))

 hobbits.foreach(hobbit => println(hobbit._1))
 hobbits.foreach(hobbit => println(hobbit._2))

list
list.isEmpty
Nil.isEmpty
list.length
list.size
list.head
list.tail
list.last
list.init

list.reverse
list.drop(1)
list 
list.drop(2)

val words = List("peg", "al", "bud", "kelly")
words.count(word => word.size > 2)
words.filter(word => word.size > 2)
words.map(word => word.size)

words.forall(word => word.size > 1)
words.exists(word => word.size > 4)
words.exists(word => word.size > 5)

words.sortWith((s, t) => s.charAt(0).toLower < t.charAt(0).toLower)
words.sort((s, t) => s.size < t.size)

val list = List(1, 2, 3)
val sum = (0 /: list) {(sum, i) => sum + i}

val list = List(1, 2, 3)
list.foldLeft(0)((sum, value) => sum + value)







