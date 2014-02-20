//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Brittney Kernan on 2/15/14.
//  Copyright (c) 2014 Brittney Kernan. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
@synthesize itemName;
@synthesize serialNumber, valueInDollars, dateCreated, parent, child;

- (id)initWithName:(NSString *)name
    valueInDollars:(int)value
      serialNumber:(NSString *)serial
{
    // Call thw superclass's designated initializer
    self = [super init];
    
    // Did the superclass' designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setItemName:name];
        [self setSerialNumber:serial];
        [self setValueInDollars:value];
    }
    
    return self;
}

-(id)init
{
    return [self initWithName:@""
               valueInDollars:0
                 serialNumber:@""];
}

- (void)setChild:(BNRItem *)i
{
    child = i;
    [i setParent:self];
}


- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
     itemName,
     serialNumber,
     valueInDollars,
     dateCreated];
    
    return descriptionString;
    
}

- (void)dealloc
{
    NSLog(@"Destoryed %@",self);
}

@end
