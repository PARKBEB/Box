class Solution {
	public int solution(double num) {     // 오버플로우 int -> double로 고침
		int answer = -1;
		while (num != 1) {
			if (num % 2 == 0) {
				num /= 2;

				answer++;
			} else if (num % 2 != 0) {
				num *= 3;
				num += 1;

				answer++;
			}
		}
		if (num == 1) {
			answer++;
		}
		if (answer >= 500) {
			answer = -1;
		}

		return answer;
	}
}