import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		// 출력값은 맞으나 조건 틀림

		Scanner scn = new Scanner(System.in);
		Drink dr = new Drink();

		System.out.println("찾으시는 음료를 입력해주세요");
		String s = scn.next();
		String d = dr.drink(s);

		System.out.print(d);

	}

}
