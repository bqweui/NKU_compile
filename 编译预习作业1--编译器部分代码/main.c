#include <stdio.h>  
#include <time.h> 
#define w 100
#define DEBUG 1
int main() {
    clock_t start, end; // 定义用于记录时间的变量  
    double time; // 定义用于存储时间差的变量

    //检验代码是否正常
#if DEBUG  
    printf("代码正常运行\n"); 
#else  
    printf("代码出错\n"); 
#endif 

    double a, b, t;
    int n,i;
    a = 0;
    b = 1;
    i = 1;
 
    printf("请输入n的值: ");
    scanf("%d", &n);
    //进行斐波那契数列主要的输出
    if (n > w)
    {
        printf("%s\n", "输入的n值过大");
    }
    else
    {
        start = clock();
        printf("%f\n", a);
        printf("%f\n", b);

        while (i < n) {
            t = b;
            b = a + b;
            printf("%f\n", b);
            a = t;
            i = i + 1;
        }

        end = clock();
        time = ((double)(end - start)) / CLOCKS_PER_SEC; // 将时间差转换为秒  

        printf("程序执行时间：%.6f 秒\n", time);
    }
   
    return 0;
}
