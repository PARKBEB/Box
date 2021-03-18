import java.util.Scanner;

public class MainPage {

	public static int[] second(int t) {

		int h = 0;
		int m = 0;
		int s = 0;

		if (t >= 3600) {
			h = t / 3600;
			t = t % 3600;
		}
		if (t >= 60) {
			m = t / 60;
			s = t % 60;
		} else if (t < 60) {
			s = t;
		}
		int a[] = { h, m, s };
		return a;

	}

	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		int t = scn.nextInt();
		int a[] = second(t);

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