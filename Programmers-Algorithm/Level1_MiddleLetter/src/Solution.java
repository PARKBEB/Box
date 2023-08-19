class Solution {
	public String solution(String s) {
		String answer = "";
		int num = 0;
		char[] chc = new char[1];
		char[] ch = new char[2];
		
			num = s.length() / 2;
			if (s.length() % 2 != 0) {
				chc[0] = s.charAt(num);
				answer = String.valueOf(chc);
			}else if(s.length() % 2 == 0) {
				ch[0] = s.charAt(num -1);
				ch[1] = s.charAt(num);
				answer = String.valueOf(ch);
			}

		return answer;
	}
}