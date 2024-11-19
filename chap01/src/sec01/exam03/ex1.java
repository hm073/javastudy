package sec01.exam03;

public class ex1 {

	public static void main(String[] args) {

		int v1 = 15;
//		int v2 = 0; //초기값이 있어야 에러가 나지 않음, if문 안의 값이 밖으로 나올 수 없기? 때문인 듯
		if(v1>10) {
			int v2;
			v2 = v1 - 10;
		}
		
		int v3 = v1 + v2 + 5;
		System.out.println( v3 );
	}

}
