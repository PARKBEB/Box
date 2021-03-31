import java.util.Scanner;

public class S_Release {
	// 문자열 압축 해제
	// 2a3bc 출력값 : aabbbc
	// 10 이상은 제외
	public static void main(String[] args) {
		System.out.println("문자를 입력해주세요");
		Scanner scn = new Scanner(System.in);
		String s = scn.next();
		String tot = "";
		String s_ch = "";
		char ch = ' ';

		for (int i = 0; i < s.length(); i++) {
			if (s.substring(i, i + 1).equals("1")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch;
			} else if (s.substring(i, i + 1).equals("2")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("3")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("4")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("5")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch + s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("6")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch + s_ch + s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("7")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch + s_ch + s_ch + s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("8")) {
				ch = s.charAt(i + 1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch + s_ch + s_ch + s_ch + s_ch + s_ch;
			} else if (s.substring(i, i + 1).equals("9")) {
				ch = s.charAt(i+1);
				s_ch = Character.toString(ch);
				tot += s_ch + s_ch + s_ch + s_ch + s_ch + s_ch + s_ch + s_ch + s_ch;
			} 
		}System.out.print(tot);
	}
}
