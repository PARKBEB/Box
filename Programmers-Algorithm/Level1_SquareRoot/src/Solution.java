class Solution {
   public long solution(long n) {
      long answer = -1;
      long x = 0;
      for(long i = 0; i <= n; i++) {
         if(n == i * i) {
            x = i + 1;
            answer = x * x;
            break;
         }
      }
      return answer;
   }
}