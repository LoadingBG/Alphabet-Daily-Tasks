/**
 * Author : Zone-Infinity#9999
 */

fun main() {
    println(averageChar("Hello"))
    println(averageChar("Yes"))
    println(averageChar("aaaa"))
    println("-----")
    println(space("HelloWorld!"))
    println(space("HowAreYou?"))
    println(space("Example"))
    println(space("Simple,Right?"))
    println("-----")
    println(sort("Hello Yes aaaa"))
    println(sort("Zone Infinity"))
}

fun averageChar(s: String) = (s.map { it.toInt() }.sum() / s.length).toChar()

fun space(s: String): String {
    var r = ""
    for (i in s) {
        if (s[0] != i && i.isUpperCase()) {
            r += " ${i.toLowerCase()}"
            continue
        }
        r += i
    }
    return r
}

fun sort(s: String) = s.split(" ").sortedBy { it[0].toLowerCase() }.joinToString(" ")
