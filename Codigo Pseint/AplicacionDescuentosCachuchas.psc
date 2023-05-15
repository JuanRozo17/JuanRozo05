Algoritmo AplicacionDescuentosCachuchas
    Definir costo_unitario, cantidad, descuento, total_compra Como Entero
    Definir tipo_cachucha Como Carácter
    Definir nombre, identificacion Como Cadena
	
    costo_unitario <- 30000  // Costo unitario de las cachuchas en pesos colombianos
	
    Escribir "Ingrese el nombre del cliente:"
    Leer nombre
    Escribir "Ingrese la identificación del cliente:"
    Leer identificacion
    Escribir "Ingrese el tipo de cachucha (Gorra Trucker, Gorra Snapback, Gorra Flat, Sombrero Bucket):"
    Leer tipo_cachucha
    Escribir "Ingrese la cantidad de cachuchas a comprar:"
    Leer cantidad
	
    total_compra <- costo_unitario * cantidad  // Calcular el precio total de la compra
	
    // Verificar si aplican descuentos según la cantidad comprada
    Si cantidad >= 25 Y cantidad < 30 Entonces
        descuento <- total_compra * 0.05
    FinSi
	
    Si cantidad >= 30 Y cantidad < 40 Entonces
        descuento <- total_compra * 0.1
    FinSi
	
    Si cantidad >= 40 Entonces
        descuento <- total_compra * 0.15
    FinSi
	
    total_compra <- total_compra - descuento  // Aplicar el descuento al total de la compra
	
    // Mostrar el registro de datos del cliente y detalles de la compra
    Escribir "Registro de compra:"
    Escribir "Nombre del cliente: ", nombre
    Escribir "Identificación del cliente: ", identificacion
    Escribir "Tipo de cachucha: ", tipo_cachucha
    Escribir "Cantidad de cachuchas compradas: ", cantidad
    Escribir "Precio total de la compra: $", total_compra
	
FinAlgoritmo
