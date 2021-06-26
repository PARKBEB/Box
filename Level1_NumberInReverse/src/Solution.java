class Solution {
	public int[] solution(long n) {
		String str = "" + n;
		int cnt = 0;
		int[] answer = new int[str.length()];
		for(int i = str.length() - 1; i >= 0; i--) {
			answer[cnt] = str.charAt(i) - '0';
			cnt++;
		}
		return answer;
	}
}