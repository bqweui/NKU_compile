#include <stdio.h>  
  
int main() {  
    float num1, num2;  
    float sum, difference, product, quotient;  
  
    scanf("%f %f", &num1, &num2);  
  

    sum = num1 + num2;  
  

    difference = num1 - num2;  
  
 
    product = num1 * num2;  
    
    if (num2 != 0) {  
        quotient = num1 / num2;  
    } else {  
        printf("输入的除数为0\n");  
        return 1; 
    }  
  
    printf("和为: %.2f\n", sum);  
    printf("差为: %.2f\n", difference);  
    printf("乘积为: %.2f\n", product);  
    printf("商为: %.2f\n", quotient);  
  
    return 0;  
}
