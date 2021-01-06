/**
 * Author: Loading BG#7962
 */

import java.util.Arrays;

class Day0106 {
    public static void main(String[] args) {
        System.out.println("averageChar #1: " + averageChar("Hello"));
        System.out.println("averageChar #2: " + averageChar("Yes"));
        System.out.println("averageChar #3: " + averageChar("aaaa"));
        System.out.println("-------------");
        System.out.println("space #1: " + space("HelloWorld!"));
        System.out.println("space #2: " + space("HowAreYou?"));
        System.out.println("space #3: " + space("Example"));
        System.out.println("space #4: " + space("Simple,Right?"));
        System.out.println("-------------");
        System.out.println("sort #1: " + sort("Hello Yes aaaa"));
    }
    
    private static char averageChar(String s) {
        return (char) s.chars().average().getAsDouble();
    }
    
    private static String space(String sentence) {
        return sentence.charAt(0) + sentence.substring(1).replaceAll("([A-Z])", " $1").toLowerCase();
    }
    
    private static String sort(String sentence) {
        String[] words = sentence.split("\\s+");
        return Arrays.stream(words)
            .sorted((s1, s2) -> Double.compare(s1.chars().average().getAsDouble(), s2.chars().average().getAsDouble()))
            .collect(StringBuilder::new, (acc, s) -> acc.append(s).append(" "), StringBuilder::append).toString().trim();
    }
}
