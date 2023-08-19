import java.util.Scanner;

public class Second_3 {
	
	public static void main(String[] args) {
		// 초 입력받기
		// 60초 = 1분 , 3601 = 60분 1초

		System.out.println("초를 입력해주세요");
		Scanner scn = new Scanner(System.in);

		int t = scn.nextInt();

		int h = 0;
		int m = 0;
		int s = 0;
		if (3600 > t && t > 60 && t % 60 >= 0) {
			m = t / 60;
			s = t % 60;
		} else if (t < 60) {
			s = t;
		} else if (t >= 3600 && t % 3600 >= 0) {
			h = t / 3600;
			m = t % 3600;
			m = m / 60;
			s = t % 60;
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
