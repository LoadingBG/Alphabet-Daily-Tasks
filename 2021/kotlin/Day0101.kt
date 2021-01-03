fun nthEven(a: Int) = a * 2 - 2
fun validateEmail(email: String) = email.matches("^.+@.+\\..+$".toRegex())

fun Char.toAtBash(): Char {
    var r = 'z' - this.toLowerCase().toInt() + 'a'.toInt()
    if (this.isUpperCase()) r = r.toUpperCase()
    return r
}

fun atBash(s: String): String {
    var result = ""
    for (c in s) {
        if (c.isLetter()) {
            result += c.toAtBash()
            continue
        }
        result += c
    }
    return result
}

fun main() {
    println(nthEven(1))
    println(nthEven(2))
    println(nthEven(100))
    println("-----")
    println(validateEmail("@gmail.com"))
    println(validateEmail("hello.gmail@com"))
    println(validateEmail("gmail"))
    println(validateEmail("hello@gmail"))
    println(validateEmail("hello@edabit.com"))
    println("-----")
    println(atBash("apple"))
    println(atBash("Hello world!"))
    println(atBash("Christmas is the 25th of December"))
}
