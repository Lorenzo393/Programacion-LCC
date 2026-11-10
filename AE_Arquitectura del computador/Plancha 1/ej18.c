#include <stdlib.h>
#include <stdio.h>


void codificar_decodificar(char cadena[], int codigo){
    for(int i = 0 ; cadena[i] != '\0' ; i++)
        cadena[i] = cadena[i] ^ codigo;
}

int main(int argc, char *argv[]){
    if(argc > 3)
        return 1;

    printf("Codigo: %s\n",argv[1]);
    printf("Cadena: %s\n",argv[2]);

    printf("\n");
    codificar_decodificar(argv[2], atoi(argv[1]));
    printf("Cadena codificada: %s\n",argv[2]);
    codificar_decodificar(argv[2], atoi(argv[1]));
    printf("Cadena decodificada: %s\n",argv[2]);

    /*
    * No se tiene que modificar al programa para que decodifique
    */

    /*
    * No se ganan nada codificando el mensaje 2 veces ya que por ejemplo
    * si codifico una cadena con codigo 11 y luego hago lo mismo con un
    * codigo 12 entonces para decodificarla solo debo hacer un xor con 7
    * que es basicamente el xor de 12 ^ 11 
    */
    return 0;
}