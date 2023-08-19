class Solution {
	public boolean solution(int x) {
		boolean answer = true;
		int sum = 0;
		int j = x;

		while (x / 10 > 0) {
			sum += x % 10;
			x /= 10;
		}

		sum += x;

		if (j % sum != 0) {
			answer = false;
		}
		return answer;

	}
}