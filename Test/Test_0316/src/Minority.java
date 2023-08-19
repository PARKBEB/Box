import java.util.Scanner;

public class Minority {

	public static void main(String[] args) {
		// 소수점 둘째자리 표기
		// 필수조건 : 숫자 두 가지를 int로 입력, 정수일경우 소수점 자리 0으로 출력, 셋째자리에서 반올림

		Scanner scn = new Scanner(System.in);

		System.out.println("정수를 두 개 입력해 주세요");

		int a = scn.nextInt();
		int b = scn.nextInt();

		double m = a / (double) b;

		System.out.print(String.format("%.2f", m));

	}

}
