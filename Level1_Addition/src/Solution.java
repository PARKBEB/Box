class Solution {
    public int[][] solution(int[][] arr1, int[][] arr2) {
        int[][] arr3 = new int[arr1.length][arr1.length]; 
        for(int i=0; i<arr1.length; i++){
           arr3[i][i] = arr1[i][i] + arr2[i][i];
        }
        int[][] answer = arr3;
        return answer;
    }
}