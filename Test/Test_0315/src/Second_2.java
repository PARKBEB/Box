import java.util.Scanner;

public class Second_2 {
	
	public static void main(String[] args) {
		// 초 입력받기
		// 60초 = 1분 , 3601 = 60분 1초

		System.out.println("초를 입력해주세요");
		Scanner scn = new Scanner(System.in);

		int t = scn.nextInt();

		int h = 0;
		int m = 0;
		int s = 0;

		h = t / 3600;
		m = t - h * 3600;
		s = m % 60;
		m = m / 60;

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