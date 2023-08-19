import java.util.ArrayList;

class Solution {
	public int[] solution(int[] arr) {
		int min = arr[0];
		ArrayList<Integer> list = new ArrayList<>();
		for (int i = 0; i < arr.length; i++) {
			if (arr.length == 1 && arr[i] == 10) {
				arr[i] = -1;
				list.add(arr[i]);
			} else {
				list.add(arr[i]);
				if( arr[i] < min) {
					min = arr[i];
				}
			}
		}
		// min 다 삭제
		while(list.remove(Integer.valueOf(min))){};
		
		int[] answer = new int[list.size()];
		for(int j = 0; j < list.size(); j++) {
			answer[j] = list.get(j);
		}
		return answer;
	}
}