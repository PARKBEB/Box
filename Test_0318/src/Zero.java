import java.util.Scanner;

public class Zero {

	public static void main(String[] args) {
		
		Scanner scn = new Scanner(System.in);
		 
		while(true) {
			int z = scn.nextInt();
			if( z == 0) {
				System.out.print("종료");
				break;
			}
		}

	}

}
