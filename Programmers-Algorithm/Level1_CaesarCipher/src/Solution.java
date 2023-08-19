class Solution {
	public String solution(String s, int n) {
		String answer = "";
		char ch = 0;

		for (int i = 0; i < s.length(); i++) {
			ch = s.charAt(i);
			int num = 0;
			for (int j = 0; j < n; j++) {
				if (91 > ch) {
					if (j == 0 && ch + n > 90) {
						num = (ch + n) - 90;
						ch = (char) (num + 64);
						answer += ch;
						break;
					}
				} else if (ch > 96) {
					if (j == 0 && ch + n > 122) {
						num = (ch + n) - 122;
						ch = (char) (num + 96);
						answer += ch;
						break;
					}
				}
				if (32 == ch) {
					ch = 31;
				}
				ch++;
				if (j == n - 1) {
					answer += ch;
				}
			}
		}
		return answer;
	}
}