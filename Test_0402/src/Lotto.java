/*로또 생성기
번호 6개 추출 (1 ~ 45)
조건 : 번호 3개는 20 미만, 나머지 번호 3개는 20이상
실행 출력 예 : 1 / 2 / 3 / 20 / 21 / 45
*/
public final class Lotto {
	public static void main(String[] args) {
		int bun = 0;
		int tot[] = new int[6];

		for (int i = 0; i < 6; i++) {
			while (true) {
				bun = (int) (Math.random() * 45 + 1);

				boolean pass = true;

				for (int j = 0; j < i; j++) {
					if (tot[j] == bun) {
						pass = false;
					}

				}
				if (pass) {
					tot[i] = bun;
					System.out.print(" " + tot[i]);
					break;
				}
			}
		}
	}
}
