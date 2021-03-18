
public class Second {
	public static int[] time(int t) {

		int h = 0;
		int m = 0;
		int s = 0;

		if (t >= 3600) {
			h = t / 3600;
			t = t % 3600;
		}
		if (t >= 60) {
			m = t / 60;
			s = t % 60;
		} else if (t < 60) {
			s = t;
		}
		int a[] = { h, m, s };
		return a;
	}

}
