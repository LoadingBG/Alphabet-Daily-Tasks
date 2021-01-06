/**
 * Author : Zone-Infinity#9999
 */

import java.awt.Polygon

fun main() {
    println(check(listOf(1, 2, 3)))
    println(check(listOf(3, 2, 1)))
    println(check(listOf(1, 2, 1)))
    println("-----")
    println(withinTriangle(intArrayOf(1, 4), intArrayOf(5, 6), intArrayOf(6, 1), intArrayOf(4, 5)))
    println(withinTriangle(intArrayOf(1, 4), intArrayOf(5, 6), intArrayOf(6, 1), intArrayOf(3, 2)))
    println("-----")
    println(bishop("a1", "b4", 2))
    println(bishop("a1", "b5", 5))
    println(bishop("f1", "f1", 0))
}

fun check(i: List<Int>): String {
    if (i == i.sorted()) return "increasing"
    if (i == i.sorted().reversed()) return "decreasing"
    return "neither"
}

fun withinTriangle(a: IntArray, b: IntArray, c: IntArray, testPoint: IntArray) =
        Polygon(intArrayOf(a[0], b[0], c[0]), intArrayOf(a[1], b[1], c[1]), 3).contains(testPoint[0], testPoint[1])

fun color(s: String) = s[0].toInt() % 2 == s[1].toInt() % 2
fun bishop(a: String, b: String, moves: Int) = color(a) == color(b)