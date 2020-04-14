import java.lang.management.ManagementFactory;
import java.lang.management.RuntimeMXBean;

public class J2C {
    static {
        try {
            System.loadLibrary("J2C");
        } catch (Throwable e) {
            System.err.println("no J2C in java.library.path");
        }
    }
    public static native int write2proc(long pid);
    public static void main(String[] args) {
        final RuntimeMXBean runtimeMXBean =
                ManagementFactory.getRuntimeMXBean();
        final String info = runtimeMXBean.getName();
        final long pid = Integer.parseInt(info.substring(0, info.indexOf("@")));
        J2C.write2proc(pid);
        try {
            Thread.sleep(8000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
