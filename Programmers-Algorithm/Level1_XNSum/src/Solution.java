// int, long에대해서 생각

class Solution {
    public long[] solution(int x, int n) {
        long[] answer = new long[n];
        long x1 = 0;
        for(int i=0; i < n; i++){
            x1 += x;
            answer[i] = x1;
        }
        return answer;
    }
}