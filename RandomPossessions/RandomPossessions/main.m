//
//  main.m
//  RandomPossessions
//
//  Created by Brittney Kernan on 2/15/14.
//  Copyright (c) 2014 Brittney Kernan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

       
        BNRItem *a = [[BNRItem alloc] initWithName:@"Red Sofa"
                                    valueInDollars:100
                                      serialNumber:@"3456tg"];
        
        BNRItem *b = [[BNRItem alloc] initWithName:@"Blue Sofa"
                                    valueInDollars:100
                                      serialNumber:@"3gdft3"];
        [b setChild:a];
        

        b = nil;
        
        NSLog(@"Container %@", [a parent]);
        
        a = nil;
        
    }
    return 0;
}

