class Solution {
    public int[][] solution(int[][] arr1, int[][] arr2) {
        int[][] arr3 = new int[arr1.length][arr1[0].length]; 
        
        
        
        for(int i=0; i<arr1.length; i++){
            for(int j=0; j<arr1[0].length; j++){    // 열을 가리킴
             arr3[i][j] = arr1[i][j] + arr2[i][j];
            }
            
        }
        int[][] answer = arr3;
        return answer;
    }
}