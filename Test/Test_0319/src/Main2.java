import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main2 {
	// 더 간소하게 만들어라
	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);

		Drink2 drn = new Drink2();
		String d1 = drn.name;
		d1 = "콜라";
		String d2 = drn.name;
		d2 = "환타";
		String d3 = drn.name;
		d3 = "커피";

		List listn = new ArrayList<>();
		listn.add(d1);
		listn.add(d2);
		listn.add(d3);

		Drink2 drp = new Drink2();
		int p1 = drp.price;
		p1 = 500;
		int p2 = drp.price;
		p2 = 600;
		int p3 = drp.price;
		p3 = 700;

		List listp = new ArrayList<>();
		listp.add(p1);
		listp.add(p2);
		listp.add(p3);

		System.out.println("음료를 입력해주세요");
		String ch = scn.next();
		while (!ch.equals("")) {
			for (int i = 0; i < listn.size(); i++) {
				if (ch.equals(listn.get(i))) {
					System.out.print(listp.get(i));
					break;
				}else if(!ch.equals(listn.get(i))){
					System.out.print("없는 음료 입니다");
					break;
				}
			}
			break;
		}
	}

}
