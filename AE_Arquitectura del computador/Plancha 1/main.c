#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int is_one(long n, int b){
    long push = 1L << b;
    return (n & push) == push;
}

void printbin(long n){
    int space = 8;
    for(int i = 63 ; i >= 0 ; i--){
        if(space == 0){
            printf(" ");
            space = 8;
        }
        printf("%i",is_one(n,i));
        space --;
    }
    printf("\n");
}

unsigned mult(unsigned a, unsigned b){
    return a & b;
}

int main(){
    // 9
    // int A = 200, B = 300, C = 500, D = 400;
    // int S = A * B * C * D;
    // printf("%i\n",S); // -884901888
    // long int Al = 200, Bl = 300, Cl = 500, Dl = 400;
    // long int Sl = Al * Bl * Cl * Dl;
    // printf("%ld\n",Sl); // 12000000000

    // 10
    // hhd(signed char) - hhu(unsigned char)
    // char a =127;
    // printf ("%hhd %hhu\n",a , a );
    // a++;
    // printf ("%hhd %hhu\n",a , a );
    // unsigned char b =128;
    // printf ("%hhd %hhu\n",b , b );
    // b++ ;
    // printf ("%hhd %hhu\n",b , b );
    // char a2 = 127;
    // printf ("%d %u\n",a2 , a2 );
    // a++;
    // printf ("%d %u\n",a2 , a2 );
    // unsigned char b2 = 128;
    // printf ("%d %u\n",b2 , b2 );
    // b++ ;
    // printf ("%d %u\n",b2 , b2 );

    // 15
    // printf("%i\n",is_one(15,0));
    // printf("%i\n",is_one(15,1));
    // printf("%i\n",is_one(15,2));
    // printf("%i\n",is_one(15,3));
    // printf("%i\n",is_one(15,4));

    // 16
    // printbin(16);
    // printbin(-16);
    // printbin(127);
    // printbin(-127);
    // printbin(-1);
    // printbin(128);
    // printbin(-128);
    // printbin(-31);

    // 17
    // int x = 2, y = 3 , z = 1;
    // printf("%i %i %i\n",x,y,z);
    // x = x ^ y ;
    // y = x ^ y ;
    // x = x ^ y ;
    // z = z ^ x;
    // x = x ^ z;
    // z = z ^ x;
    // printf("%i %i %i\n",x,y,z);

    // 19
    printf("Mult: %i", mult(4,4));

    return 0;
}

