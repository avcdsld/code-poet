// The Only Answer

sealed trait Explanation
case object YouLeft extends Explanation

def accept(e: Explanation): Unit = e match {
  case YouLeft => ()
}
