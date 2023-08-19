class Solution {
	public boolean solution(String s) {
		boolean answer = true;

		for (int i = 0; i < s.length(); i++) {
			if (s.length() == 4 || s.length() == 6) {
				if (s.charAt(i) < 10) {
					answer = true;
				} else if (s.charAt(i) > 64) {
					answer = false;
					break;
				}
			} else {
				answer = false;
				break;
			}
		}
		return answer;
	}
}