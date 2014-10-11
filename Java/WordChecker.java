import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;


/*
 * Usage: check_for_word("hello")
 */
class WordChecker {
	public static boolean check_for_word(String word) {
		try {
			BufferedReader in = new BufferedReader(new FileReader(
					"/usr/share/dict/american-english"));
			String str;
			while ((str = in.readLine()) != null) {
				if (str.indexOf(word) != -1) {
					return true;
				}
			}
			in.close();
		} catch (IOException e) {
		}
		return false;
	}
}
