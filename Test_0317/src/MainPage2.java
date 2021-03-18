import java.util.Scanner;

public class MainPage2 {

	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		Second m1 = new Second();
		
		int t = scn.nextInt();
		int a[] = m1.time(t);

		if (a[0] > 0) {
			System.out.print(a[0] + "시간");
		}
		if (a[1] > 0) {
			System.out.print(a[1] + "분");
		}
		if (a[2] > 0) {
			System.out.print(a[2] + "초");
		}
	}

}
