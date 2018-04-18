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



void toUppercase() {
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *uppercaseString = [inputString uppercaseString];
    NSLog(@"%@", uppercaseString);

}

void toLowercase() {
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *lowercaseString = [inputString lowercaseString];
    NSLog(@"%@", lowercaseString);
}

void numberize() {
    size_t ln = strlen(inputChars) - 1;
    if( inputChars[ln] == '\n' ) inputChars[ln] = '\0';
    for( size_t i = 0; i < ln; i++){
        if( !isdigit(inputChars[i]) ){
            fprintf(stderr, "%c is not a number. Try again.\n", inputChars[i]);
        }
    }
}

void canadianize() {
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *canadaString = [inputString stringByAppendingString:@", eh?"];
    NSLog(@"%@", canadaString);

}
void respond() {
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    if ([inputString hasSuffix:@"?"]) {
        NSLog(@"I don't know..");
    } else if ([inputString hasSuffix:@"?"]) {
        NSLog(@"Whoa, calm down!");
    } else {
        NSLog(@"There is no ! or ? to get a response from here!");
    }
    
}

void deSpaceIt() {
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *despaceify = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    NSLog(@"%@", despaceify);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"Please enter a string to manipulate: ");
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        do{
            printf("\nPlease make a selection from menu: \n\n\t  MENU\n1 - Uppercase\n2 - Lowercase\n3 - Numberize\n4 - Canadianize\n5 - Respond\n6 - De-Space-It\n7 - Exit\n");
            scanf("%d",&option);
            NSLog(@"\nYour input was %@\n", inputString);
            switch (option) {
                case 1:
                    toUppercase();
                    break;
                case 2:
                    toLowercase();
                    break;
                case 3:
                    numberize();
                    break;
                case 4:
                    canadianize();
                    break;
                case 5:
                    respond();
                    break;
                case 6:
                    deSpaceIt();
                    break;
                case 7:
                    on = NO;
                    printf("Exiting..\n");
                    break;
                default:
                    printf("Wrong input. Try again..\n");
            }
        }while (on);
    }
    return 0;
}
