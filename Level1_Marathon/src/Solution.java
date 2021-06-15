import java.util.Arrays;

class Solution {
	public String solution(String[] participant, String[] completion) {
		String[] par = participant;
		String[] com = completion;
		String str = "";
		Arrays.sort(par);	// 알파벳순으로 정렬
		Arrays.sort(com);
		for (int i = 0; i < completion.length; i++) {
			par[i] = participant[i];
			com[i] = completion[i];
			if (!par[i].equals(com[i])) {
				str = par[i];
				break;
			}
		}
		if (str.equals("")) {
			str = par[par.length-1];
		}

		String answer = str;
		return answer;
	}
}
