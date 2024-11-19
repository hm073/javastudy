package sec03.exam03;

public class Ex09113 {
	
	public static void main(String[] args) {
		int x = 10;
		int y = 10;
		int z;
		
		System.out.println("---------------");
		x++;
		++x;
		System.out.println("x="+x);
		
		System.out.println("---------------");
		z = x++;
		System.out.println("z="+z);
		System.out.println("x="+x);
		
		System.out.println("---------------");
		z = ++x;
		System.out.println("z="+z);
		System.out.println("y="+x);
		
		System.out.println("---------------");
		z = ++x + y++;
		System.out.println("z="+z);
		System.out.println("x="+x);
		System.out.println("y="+y);
		
		
		System.out.println("===============");
		boolean play = true;
		System.out.println(play);
		
		play = !play;
	}

}
