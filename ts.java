import sun.misc.Unsafe;
import java.lang.reflect.Field;

public class ts {
	public static void main(String[] args) throws Exception {
		Field f = Unsafe.class.getDeclaredField("theUnsafe");
		f.trySetAccessible();
		Unsafe unsafe = (Unsafe) f.get(null);
		unsafe.putByte(0, (byte) 255);
	}
}
