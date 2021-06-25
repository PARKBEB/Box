class Solution {
	public long solution(long n) {
		long answer = 0;
		String x = "" + n;
		String str = "";
		for (int i = 9; i >= 0; i--) {
				String strI = "" + i;
			for (int j = 0; j < x.length(); j++) {
				String strC = "" + x.charAt(j);
				if (strI.equals(strC)) {
					str += strC;
				}
			}
		}
		answer = Long.parseLong(str);
		return answer;
	}
}