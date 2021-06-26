public class Solution {
	public int solution(int n) {
		int answer = 0;
		boolean bool = true;
		while (bool == true) {
			if (n >= 10) {
				answer += n % 10;
				n = n / 10;
			} else {
				bool = false;
			}
		}
		answer += n;
		return answer;
	}
}