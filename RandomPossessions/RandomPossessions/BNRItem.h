//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Brittney Kernan on 2/15/14.
//  Copyright (c) 2014 Brittney Kernan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id) randomItem;

- (id)initWithName:(NSString *)name
    valueInDollars:(int)value
      serialNumber:(NSString *)serial;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)i;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
