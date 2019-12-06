import java.util.Scanner;

public class Rock_Scissors_Paper {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.println("가위(1), 바위(2), 보(3) 중 하나를 입력하세요.");
		int number = scanner.nextInt();

		System.out.println("가위(1), 바위(2), 보(3) 중 하나를 입력하세요.");
		int nunnber = scanner.nextInt();

		if (number >= 2) {
			if (nunnber != 3)
				System.out.println("승리했습니다.");
			else if (number >= 3)
				System.out.println("승리했습니다.");
			else
				System.out.println("패배했습니다.");
		} else
			System.out.println("패배했습니다.");

		scanner.close();
	}
}