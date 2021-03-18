import java.util.Scanner;

public class Pythagoras {
	// a*a + b*b = c* 피타고라스의 법칙
	// 필수 조건 메소드 생성
	// c의 값을 구해라
	public static int rute(int a, int b) {

		a = a * a;
		b = b * b;

		int c = a + b;
		return c;
	}

	public static void main(String[] args) {
		System.out.println("숫자를 입력하세요");

		Scanner scn = new Scanner(System.in);
		int a = scn.nextInt();
		int b = scn.nextInt();

		int c = rute(a, b);

		System.out.print(Math.sqrt(c));
	}

}
