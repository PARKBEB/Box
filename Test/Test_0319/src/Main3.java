import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main3 {
	// 최종 완료! 클래스생성, 객체 생성
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);	
		Drink2 d1 = new Drink2();
		d1.name = "콜라";
		d1.price = 500;
		d1.change = 2;
		Drink2 d2 = new Drink2();
		d2.name = "환타";
		d2.price = 600;
		Drink2 d3 = new Drink2();
		d3.name = "커피";
		d3.price = 700;

		List<Drink2> list = new ArrayList<>();

		list.add(d1);
		list.add(d2);
		list.add(d3);

		System.out.println("음료를 입력해주세요");
		String ch = scn.next();
		while (!ch.equals("")) {
			for (int i = 0; i < list.size(); i++) {
				if (ch.equals(list.get(i).name)) {
					System.out.print(list.get(i).price * d1.change);
					ch = "z";
					break;
				}
			} 
			if(!ch.equals("z")) {
			System.out.print("없는 메뉴입니다");
			break;
			}
		}
	}
}
