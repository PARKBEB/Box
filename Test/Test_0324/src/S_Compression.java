import java.util.Scanner;

public class S_Compression {
	// 문자열 압축 1 단계
	public static void main(String[] args) {
		System.out.println("문자를 입력해주세요");
		// 문자 입력
		Scanner scn = new Scanner(System.in);
		String s = scn.nextLine();
		// 변수
		int cnt = 1;
		char ch = s.charAt(0);
		String s_ch = Character.toString(ch);
		String tot = "";
		// for - if
		for (int i = 1; i < s.length(); i++) {
			if (s.substring(i, i + 1).equals(s_ch)) {
				cnt++;
				if (i == s.length() - 1) {
					tot += cnt + s_ch;
				}
			} else {
				tot += cnt + s_ch;
				s_ch = s.substring(i, i + 1);
				cnt = 1;
				if (i == s.length() - 1) {
					tot += cnt + s_ch;
				}
			}
		}
		// 중복되지 않으면 숫자 출력 안됨
		tot = tot.replace("1", "");
		System.out.print(tot);
	}
}
