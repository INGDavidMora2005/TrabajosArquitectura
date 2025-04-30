import java.util.Scanner;

public class PuntoFijo {
    static {
        System.loadLibrary("PuntoFijo");
    }

    public native double puntoFijo(double x0, double tol, int maxIter);

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        // Solicita el valor inicial
        System.out.print("Ingrese el valor inicial (x0): ");
        double x0 = sc.nextDouble();

        // Solicitar la tolerancia
        System.out.print("Ingrese la toleracia: ");
        double tol = sc.nextDouble();

        // Solicitar el numero maximo de iteraciones
        System.out.print("Ingrese el numero maximo de iteraciones: ");
        int maxIter = sc.nextInt();

        PuntoFijo pf = new PuntoFijo();
        double raiz = pf.puntoFijo(x0, tol, maxIter);

        // Mostrar la raiz aproximada
        System.out.println("Raiz aproximada: " + raiz);
    }
}
