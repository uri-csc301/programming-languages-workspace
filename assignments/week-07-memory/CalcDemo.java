import java.util.Scanner;


class CalcDemo {
  public static void main(String[] args) {
    
    Scanner myObj = new Scanner(System.in); 
    System.out.println("Enter an expression: ");
    String exp = myObj.nextLine();
    
    CalcParser parser = new CalcParser(exp);
	String error = parser.getErrorMessage();
	
    if (error==null) {
      System.out.println(parser.getValue());
					
    }
	else {
      System.out.println(error);
					
	}
    
  }
}
