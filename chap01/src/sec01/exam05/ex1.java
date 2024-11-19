package sec01.exam05;

public class ex1 {

	public static void main(String[] args) {
		byte byteV1 = 10;
		byte byteV2 = 20;
		
		int intV1 = byteV1 + byteV2;
		System.out.println(intV1);
		
		char charV1 = 'A';
		char charV2 = 1;
		
		int intV2 = charV1 + charV2;
		System.out.println("유니코드는 " + intV1);
		System.out.println("출력문자는 " + (char)intV2);
		
		int intV3 = 10;
		int intV4 = intV3/4;
		System.out.println(intV4);
		
		int intV5 = 10;
		double doubleV = intV5/4.0;
		System.out.println(doubleV);
		
		int x = 1;
		int y = 2;

	}

}
