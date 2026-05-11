class FactInt {
    private int val;

    public FactInt(int x) {
        val = fact(x);
    }

    public int getVal() {
        return val;
    }

    private int fact(int n) {
        int sofar = 1;

        while (n > 1) {
            sofar = sofar * n;
            n--;
        }

        return sofar;
    }
}

public class Main {
    public static void main(String[] args) {
        FactInt f = new FactInt(5);
        System.out.println("Factorial: " + f.getVal());
    }
}
