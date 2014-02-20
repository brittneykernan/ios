//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Brittney Kernan on 2/15/14.
//  Copyright (c) 2014 Brittney Kernan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

- (id)initWithName:(NSString *)name
    valueInDollars:(int)value
      serialNumber:(NSString *)serial;

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@property (nonatomic, weak) BNRItem *parent;
@property (nonatomic, strong) BNRItem *child;


@end
