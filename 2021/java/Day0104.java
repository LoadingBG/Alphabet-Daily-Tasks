/**
 * Author: Loading BG#7962
 */

import java.awt.Polygon;
import java.util.ArrayList;
import java.util.List;

class Day0104 {
    public static void main(String[] args) {
        System.out.println("check #1: " + check(new int[] {1, 2, 3}));
        System.out.println("check #2: " + check(new int[] {3, 2, 1}));
        System.out.println("check #3: " + check(new int[] {1, 2, 1}));
        System.out.println("----------");
        System.out.println("withinTriangle #1: " + withinTriangle(new int[][] {{1, 4}, {5, 6}, {6, 1}}, new int[] {4, 5}));
        System.out.println("withinTriangle #2: " + withinTriangle(new int[][] {{1, 4}, {5, 6}, {6, 1}}, new int[] {3, 2}));
        System.out.println("----------");
        System.out.println("bishop #1: " + bishop("a1", "b4", 2));
        System.out.println("bishop #2: " + bishop("a1", "b5", 5));
        System.out.println("bishop #3: " + bishop("f1", "f1", 0));
    }
    
    private static String check(int[] nums) {
        for (int i = 0; i < nums.length; ++i) {
            if (i == nums.length - 1) {
                return "increasing";
            }
            if (nums[i] > nums[i + 1]) {
                break;
            }
        }
        
        for (int i = 0; i < nums.length; ++i) {
            if (i == nums.length - 1) {
                return "decreasing";
            }
            if (nums[i] < nums[i + 1]) {
                return "neither";
            }
        }
        return null;
    }
    
    private static boolean withinTriangle(int[][] v, int[] point) {
        return new Polygon(new int[] {v[0][0], v[1][0], v[2][0]}, new int[] {v[0][1], v[1][1], v[2][1]}, 3)
            .contains(point[0], point[1]);
    }
    
    private static String[] possibleMoves(String pos) {
        List<String> moves = new ArrayList<>();
        
        char currPosL = pos.charAt(0);
        char currPosN = pos.charAt(1);
        while (currPosL >= 'a' && currPosN >= '1') {
            moves.add(new String(new char[] {currPosL, currPosN}));
            --currPosL;
            --currPosN;
        }
        
        currPosL = pos.charAt(0);
        currPosN = pos.charAt(1);
        while (currPosL >= 'a' && currPosN <= '8') {
            moves.add(new String(new char[] {currPosL, currPosN}));
            --currPosL;
            ++currPosN;
        }
        
        currPosL = pos.charAt(0);
        currPosN = pos.charAt(1);
        while (currPosL <= 'h' && currPosN <= '8') {
            moves.add(new String(new char[] {currPosL, currPosN}));
            ++currPosL;
            ++currPosN;
        }
        
        currPosL = pos.charAt(0);
        currPosN = pos.charAt(1);
        while (currPosL <= 'h' && currPosN >= '1') {
            moves.add(new String(new char[] {currPosL, currPosN}));
            ++currPosL;
            --currPosN;
        }
        
        return moves.toArray(new String[0]);
    }
    private static boolean bishop(String start, String end, int moves) {
        if (moves < 0) {
            return false;
        }
        if (start.equals(end)) {
            return true;
        }
        for (String move : possibleMoves(start)) {
            if (bishop(move, end, moves - 1)) {
                return true;
            }
        }
        return false;
    }
}
