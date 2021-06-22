class Solution {
	public String solution(int n) {
		String answer = "";
		boolean bool = true;
		String supak = "";
		for (int i = 0; i <= 10000; i++) {
			if (bool == true) {
				String su = "수";
				supak += su;
				bool = false;
			}else if(bool == false) {
				String pak = "박";
				supak += pak;
				bool = true;
			} 
		}
		answer = supak.substring(0,n);
		return answer;
	}
}