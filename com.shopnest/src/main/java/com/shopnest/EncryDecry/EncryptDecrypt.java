package com.shopnest.EncryDecry;

public class EncryptDecrypt {

	static String message;
	static int p;
	static int q;
	static int e;
	static int d;
	static int n;
	static int phi;
	//static int nofelem;
	static String neww;

	static int gcd(int m, int n) {
		while (n != 0) {
			int r = m % n;
			m = n;
			n = r;
		}
		return m;
	}

	static {

//String message ;
		int i = 2;

		p = 73;// sc.nextInt();
		q = 31;// sc.nextInt();

		n = p * q;
		phi = (p - 1) * (q - 1);
		for (i = 2; i < phi; i++)
			if (gcd(i, phi) == 1)
				break;
		e = i;
		for (i = 2; i < phi; i++)
			if ((e * i - 1) % phi == 0)
				break;
		d = i;
	}

	public static String encrypt(String msg) {
		msg = msg.replaceAll("[₹€£®©)]+", "");
	int	nofelem = msg.length();
		int nummes[] = new int[100];
		int encrypted[] = new int[100];
		int i = 0, j = 0;

		int extra = 1;
		for (i = 0; i < msg.length(); i++) {

			char c = msg.charAt(i);

			nummes[i] = c - (3);
		}

		for (i = 0; i < nofelem; i++) {
			encrypted[i] = 1;
			for (j = 0; j < e; j++)
				encrypted[i] = ((encrypted[i] * nummes[i]) % n);
			encrypted[i] = encrypted[i] + ((extra += 4));
		}

		String neww = "";
		for (i = 0; i < nofelem; i++) {

			neww = neww + (encrypted[i]) + "`";
//System .out .print((char)(encrypted [i]+3));
		}

		return neww;

	}

	public static String decrypt(String neww) {
		String[] oo = neww.split("`");
		int extraEncry[] = new int[100];
		int decrypted[] = new int[100];
		int nofelem = oo.length;
		int v = 0;
		for (String k : oo) {

			extraEncry[v++] = Integer.valueOf(k);
		}

		int extra = 1;
		for (int i = 0; i < nofelem; i++) {
			decrypted[i] = 1;
			extraEncry[i] = extraEncry[i] - (extra += 4);
			for (int j = 0; j < d; j++)
				decrypted[i] = ((decrypted[i] * extraEncry[i]) % n);
		}
		String original = "";

		for (int i = 0; i < nofelem; i++) {

			original = original + (char) (decrypted[i] + (3));
		}
		return original;
	}

}
