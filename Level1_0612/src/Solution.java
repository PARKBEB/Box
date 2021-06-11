import java.util.Arrays;
import java.util.Collections;

class Solution {
    public String solution(String s) {
         String[] ss = {};
         ss = new String[s.length()]; // 초기화위해 객체 생성
         for(int i=0; i < s.length(); i++){  
            ss[i] = s.substring( i, i+1 );  
        }
        Arrays.sort(ss,Collections.reverseOrder()); // 알파벳 반대로 정렬
        String answer = String.join("", ss);  // 배열 합치기
        return answer;
    }
}