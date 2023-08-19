import java.util.Scanner;

public class Second {

	public static void main(String[] args) {
		// 초 입력받기
		// 60초 = 1분 , 3601 = 1시간 1분 1초

		System.out.println("초를 입력해주세요");
		Scanner scn = new Scanner(System.in);

		int t = scn.nextInt();

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
		}
		if( t < 60 ) {
			s = t;
		}
		if (h > 0) {
			System.out.print(h + "시간");
		}
		if (m > 0) {
			System.out.print(m + "분");
		}
		if (s > 0) {
			System.out.print(s + "초");
		}
	}
}
