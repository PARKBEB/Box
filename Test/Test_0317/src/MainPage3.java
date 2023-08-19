import java.util.Scanner;

public class MainPage3 {
	public static String second(int t) {

		int h = 0;
		int m = 0;
		int s = 0;

		String hs = "";
		String ms = "";
		String ss = "";

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
		if (h > 0) {
			hs = Integer.toString(h) + "시간";
		}
		if (m > 0) {
			ms = Integer.toString(m) + "분";
		}
		if (s > 0) {
			ss = Integer.toString(s) + "초";
		}
		String tot = hs + ms + ss;
		return tot;
	}

	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		int t = scn.nextInt();
		String tot = second(t);

		System.out.print(tot);

	}

}
