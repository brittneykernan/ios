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

        NSMutableArray *items = [[NSMutableArray alloc] init];

        BNRItem *p = [[BNRItem alloc] initWithName:@"Red Sofe"
                                    valueInDollars:100
                                      serialNumber:@"3456tg"];
        
        NSLog(@"%@", p);
        
    }
    return 0;
}

