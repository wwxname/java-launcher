import java.util.LinkedList;
import java.util.List;

public class ListDemo {
    public Object object = new Object();
    public static List<Integer> list;
    static {
        list = new LinkedList<Integer>();
        list.add(0);
        list.add(1);
    }
    public static void main(String[] args) {
        ListDemo listDemo = new ListDemo();
        System.out.println(listDemo.toString());
        System.out.println("hello world!");
    }
}
