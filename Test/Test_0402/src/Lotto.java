/*로또 생성기
번호 6개 추출 (1 ~ 45)
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
