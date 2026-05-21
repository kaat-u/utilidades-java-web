package model;

public class OperacionesTexto {
    private String cadena;

    public OperacionesTexto(String cadena){
        this.cadena = cadena;
    }

    public int obtenerCantidadDeCaracteres(){
        return cadena.length();
    }

    public String aMayusculas() {
        return cadena.toUpperCase();
    }

    public char obtenerCaracter(int posicion) {
        return cadena.charAt(posicion);
    }

    public String reemplazarCaracteres() {
        return cadena.replaceAll("[aeiouAEIOU]", "*");
    }

    public boolean esPalindromo(){
        char[] caracteres = cadena.toCharArray(); // ["a", "n", "a"]
        int inicio = 0; //0
        int fin = caracteres.length - 1; // 2

        while(inicio < fin){
            if(Character.toLowerCase(caracteres[inicio]) != Character.toLowerCase(caracteres[fin]))
                return false;
            inicio++;
            fin--;
        }
        return true;
    }
}
