import java.util.Scanner;
/**
 * Write a description of class Gorras here.
 * 
 * @author (JUAN ROZO) 
 * @version (a version number or a date)
 */
public class Gorras
{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int costo_unitario = 30000;
        int cantidad, descuento, total_compra;
        char tipo_cachucha;
        String nombre, identificacion;

        System.out.println("Ingrese el nombre del cliente:");
        nombre = scanner.nextLine();
        System.out.println("Ingrese la identificación del cliente:");
        identificacion = scanner.nextLine();
        System.out.println("Ingrese el tipo de cachucha (Gorra Trucker, Gorra Snapback, Gorra Flat, Sombrero Bucket):");
        tipo_cachucha = scanner.nextLine().charAt(0);
        System.out.println("Ingrese la cantidad de cachuchas a comprar:");
        cantidad = scanner.nextInt();

        total_compra = costo_unitario * cantidad;

        if (cantidad >= 25 && cantidad < 30) {
            descuento = (int) (total_compra * 0.05);
        } else if (cantidad >= 30 && cantidad < 40) {
            descuento = (int) (total_compra * 0.1);
        } else if (cantidad >= 40) {
            descuento = (int) (total_compra * 0.15);
        } else {
            descuento = 0;
        }

        total_compra -= descuento;

        System.out.println("Registro de compra:");
        System.out.println("Nombre del cliente: " + nombre);
        System.out.println("Identificación del cliente: " + identificacion);
        System.out.println("Tipo de cachucha: " + tipo_cachucha);
        System.out.println("Cantidad de cachuchas compradas: " + cantidad);
        System.out.println("Precio total de la compra: $" + total_compra);
    
    }
}
