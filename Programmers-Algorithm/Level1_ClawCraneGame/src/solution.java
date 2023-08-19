import java.util.Stack;

class Solution {
	public int solution(int[][] board, int[] moves) {
		Stack<Integer> basket = new Stack<>();
		int cnt = 0;
		for (int i = 0; i < moves.length; i++) {
			for (int j = 0; j < board.length; j++) {
				if (board[j][moves[i]-1] != 0) {	// moves는 1 ~ 5 그렇기때문에 -1 
					if (!basket.empty() && board[j][moves[i]-1] == basket.peek()) {
						basket.pop();
                        board[j][moves[i]-1] = 0;
						cnt++;
                        break;
					}
                    basket.push(board[j][moves[i]-1]);
                    board[j][moves[i]-1] = 0;
                    break;
				}
			}
		}
		int answer = cnt*2;
		return answer;
	}
}