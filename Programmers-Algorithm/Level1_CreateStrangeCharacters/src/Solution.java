class Solution {
	public String solution(String s) {
		String answer = "";
		char[] ch = new char[s.length()];
		for (int i = 0, j = 0; i < s.length(); i++, j++) {
			ch[i] = s.charAt(i);
			if (s.charAt(i) == ' ') {
				j = -1;
			} else if (j % 2 == 0) {
				ch[i] = Character.toUpperCase(ch[i]);
			} else if (j % 2 != 0) {
				ch[i] = Character.toLowerCase(ch[i]);
			}
			System.out.print(j);
		}
		answer = String.valueOf(ch);
		return answer;
	}
}