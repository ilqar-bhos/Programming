#include <stdio.h>
int main(){
    int a = 123;
    float b =12.333;
    double c = 123.3333;
    char myChar = (char)97;
    int d = (int)'a';
    printf("%d\n",d);
    printf("%c\n",myChar);
    long double aa;
    printf("%d\n",(int)(3.99));
    printf("%zu\n",sizeof(b));
    printf("%zu\n",sizeof(c));
    printf("%zu\n",sizeof(myChar));
    double ab = (b>c) ? b:c;
    printf("%lf", ab);
    return 0; 
}