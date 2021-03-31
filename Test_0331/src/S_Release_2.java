import java.util.Scanner;
import java.util.regex.Pattern;

// if문 하나만 사용하여 압축해제

public class S_Release_2 {
	public static void main(String[] args) {
		System.out.println("압축된 문자를 입력하세요");
		Scanner scn = new Scanner(System.in);
		String s = scn.next();

		char ch = s.charAt(0);
		String s_ch = "";
		int si = 0;
		
		String p = "^[0-9]*$"; // 숫자만

		for (int i = 0; i < s.length(); i++) {
			s_ch = s.substring(i, i + 1);
			boolean m = Pattern.matches(p, s_ch);
			if (m == true) {
				si = Integer.parseInt(s_ch);
				for (int j = 0; j < si; j++) {
					ch = s.charAt(i + 1);
					System.out.print(ch);
				}
			}
		}
	}
}
