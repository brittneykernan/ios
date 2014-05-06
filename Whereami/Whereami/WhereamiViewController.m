//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Brittney Kernan on 3/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "WhereamiViewController.h"

@implementation WhereamiViewController

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:(NSCoder *)aDecoder];
    
    if (self) {
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
    }
    return self;
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@",[locations lastObject]);
}


@end
