import java.util.ArrayList;

public class Solution {
	public int[] solution(int[] arr) {
		ArrayList<Integer> list = new ArrayList<>();
		list.add(arr[arr.length - 1]);

		for (int i = arr.length - 1; i > 0; i--) {
			if (arr[i] != arr[i - 1]) {
				list.add(arr[i - 1]);
			}
		}

		int[] num = new int[list.size()];
		int cnt = 0;
		for (int j = list.size() - 1; j >= 0; j--) {
			num[cnt++] = list.get(j);
		}
		return num;
	}
}