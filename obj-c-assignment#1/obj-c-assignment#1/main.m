//
//  main.m
//  obj-c-assignment#1
//
//  Created by Celal Aslan on 2018-04-17.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

int option;
char inputChars[255];
BOOL on = YES;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"Please enter a string to manipulate: ");
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"\nYour input was %@\n\n", inputString);
        
        do{
            printf("\nPlease make a selection from menu: \n\n\t  MENU\n\n1 - Uppercase\n2 - Lowercase\n3 - Numberize\n4 - Canadianize\n5 - Respond\n6 - De-Space-It\n7 - Exit\n");
            scanf("%d",&option);
            
            switch (option) {
                case 1:
                    printf("Uppercase\n");
                    break;
                case 2:
                    printf("Lowercase\n");
                    break;
                case 3:
                    printf("Numberize\n");
                    break;
                case 4:
                    printf("Canadianize\n");
                    break;
                case 5:
                    printf("Respond\n");
                    break;
                case 6:
                    printf("De-Space-It\n");
                    break;
                case 7:
                    on = NO;
                    printf("Exiting..\n");
                    break;
                default:
                    printf("Wrong input.\n");
            }
        }while (on);
        
        
    }
    return 0;
}
