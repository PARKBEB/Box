import java.util.ArrayList;
import java.util.List;

public class Drink {
	// 출력값은 맞으나 조건 틀림
	public static String drink(String s) {
		List<Object> list = new ArrayList<>();
		List<Object> list2 = new ArrayList<>();

		list.add("콜라");
		list.add("환타");
		list.add("커피");

		list2.add(500);
		list2.add(600);
		list2.add(700);

		while (!s.equals("")) {
			if (s.equals(list.get(0).toString())) {
				s = list2.get(0).toString();
				break;
			} else if (s.equals(list.get(1).toString())) {
				s = list2.get(1).toString();
				break;
			} else if (s.equals(list.get(2).toString())) {
				s = list2.get(2).toString();
				break;
			} else {
				s = "해당음료는 없습니다";
				break;
			}
		}
		return s;
	}
}
