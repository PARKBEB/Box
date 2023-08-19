import java.util.Scanner;

// 음료 선택 0~3 (0이면 종료) 번호 입력시 구매완료 문구와 거스름돈 계산
// 조건 : 가진돈 2000원, 변수는 String, 음료 구매 함수 void
// 다음에는 스위치, for문, 메소드를 이용해서 반복 처리 해봐

public class While_Drink {
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		int m = 2000;

		String d[] = { "종료", "콜라", "환타", "커피" };
		int p[] = { 0, 500, 600, 700 };

		while (m > 0) {
			System.out.println("구매하고 싶은 음료수를 선택해 주세요");
			int ch = scn.nextInt();
			if (m < p[ch]) {
				System.out.print("잔액이 부족합니다");
				continue;
			} else if (ch == 0) {
				System.out.println("종료합니다");
				break;
			}
			System.out.println(d[ch] + "구매완료");
			if (ch == 1) {
				m = m - p[ch];
				System.out.println("잔액은" + m + "입니다");
			} else if (ch == 2) {
				m = m - p[ch];
				System.out.println("잔액은" + m + "입니다");
			} else if (ch == 3) {
				m = m - p[ch];
				System.out.println("잔액은" + m + "입니다");
			}

		}

	}
}
