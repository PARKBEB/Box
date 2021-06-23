import java.util.ArrayList;
import java.util.Arrays;

class Solution {
	public int[] solution(int[] arr, int divisor) {
		ArrayList<Integer> list = new ArrayList<>();
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] % divisor == 0) {
				list.add(arr[i]);
			}
		}
		int size = list.size();
		if (size == 0) {
			size = 1;
		}
		int[] answer = new int[size];
		if(list.size() == 0) {
			answer[0] = -1;
		}
		for (int j = 0; j < list.size(); j++) {
			answer[j] = list.get(j);
		}
		Arrays.sort(answer);
		return answer;
	}
}