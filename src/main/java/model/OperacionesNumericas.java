package model;

public class OperacionesNumericas {
    private int entero;
    private double real;

    public OperacionesNumericas(int entero, double real){
        this.entero = entero;
        this.real = real;
    }

    public int cantidadDigitos(){
        int absoluteValue = Math.abs(entero);
        return String.valueOf(absoluteValue).length();
    }

    public double potencia() {
        return Math.pow(real, 2);
    }

    public double raizCuadrada() {
        return Math.sqrt(real);
    }

    public long redondear() {
        return Math.round(real);
    }

    public double maximo() {
        return Math.max(entero, real);
    }

    public double areaCirculo() {
        return Math.PI * Math.pow(real, 2);
    }

    public String interpretar() {
        return "El número entero " + entero + " tiene " + cantidadDigitos() + " dígitos. " +
                "El número real " + real + " redondeado es " + redondear() + ", " +
                "su raíz cuadrada es " + raizCuadrada() + " y elevado al cuadrado es " + potencia() + ".";
    }
}
