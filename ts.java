import sun.misc.Unsafe;class ts{public static void main(String[]args) throws Exception {var f=Unsafe.class.getDeclaredField("theUnsafe");f.trySetAccessible();((Unsafe)f.get(null)).putInt(0, 0);}}
