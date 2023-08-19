class Solution {
	public int solution(int n) {
		int answer = 0;
		
		for (int i = 2; i <= n ; i++) {
			if (sosu(i)) {
				answer++;
			}
		}
		return answer;
	}

	public boolean sosu(int num) {
		for (int i = 2; i*i<= num; i++) {
			if (num % i == 0) {
				return false;
			}
		}
		return true;
	}
}