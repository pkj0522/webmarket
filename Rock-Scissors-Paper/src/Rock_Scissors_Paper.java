import java.util.Scanner;

public class Rock_Scissors_Paper {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.println("����(1), ����(2), ��(3) �� �ϳ��� �Է��ϼ���.");
		int number = scanner.nextInt();

		System.out.println("����(1), ����(2), ��(3) �� �ϳ��� �Է��ϼ���.");
		int nunnber = scanner.nextInt();

		if (number >= 2) {
			if (nunnber != 3)
				System.out.println("�¸��߽��ϴ�.");
			else if (number >= 3)
				System.out.println("�¸��߽��ϴ�.");
			else
				System.out.println("�й��߽��ϴ�.");
		} else
			System.out.println("�й��߽��ϴ�.");

		scanner.close();
	}
}