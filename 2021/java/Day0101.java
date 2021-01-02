class Day0101 {
    public static void main(String[] args) {
        System.out.println("nth_even #1: " + nthEven(1));
        System.out.println("nth_even #2: " + nthEven(2));
        System.out.println("nth_even #3: " + nthEven(100));
        System.out.println("-------------");
        System.out.println("validateEmail #1: " + validateEmail("@gmail.com"));
        System.out.println("validateEmail #2: " + validateEmail("hello.gmail@com"));
        System.out.println("validateEmail #3: " + validateEmail("gmail"));
        System.out.println("validateEmail #4: " + validateEmail("hello@gmail"));
        System.out.println("validateEmail #5: " + validateEmail("hello@edabit.com"));
        System.out.println("-------------");
        System.out.println("atbash #1: " + atbash("apple"));
        System.out.println("atbash #2: " + atbash("Hello world!"));
        System.out.println("atbash #3: " + atbash("Christmas is the 25th of December"));
    }
    
    private static int nthEven(int n) {
        return 2 * n - 2;
    }
    
    private static boolean validateEmail(String email) {
        return email.matches("^.+@.+\\..+$");
    }
    
    private static String atbash(String s) {
        StringBuilder res = new StringBuilder();
        for (char c : s.toCharArray()) {
            if (Character.isLetter(c)) {
                if (Character.isUpperCase(c)) {
                    res.appendCodePoint('Z' - c + 'A');
                } else {
                    res.appendCodePoint('z' - c + 'a');
                }
            } else {
                res.append(c);
            }
        }
        return res.toString();
    }
}
