public class Main {
    public static void main(String[] args) {

        Int a = new Int(10);
        Int b = new Int(5);

        System.out.println(a.plus(b));   // expected: 15
        System.out.println(a.minus(b));  // expected: 5
        System.out.println(a.times(b));  // expected: 50
        System.out.println(a.div(b));    // expected: 2

    }
}
