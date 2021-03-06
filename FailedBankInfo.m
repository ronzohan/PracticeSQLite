//
//  FailedBankInfo.m
//  SQlite_tut
//
//  Created by smartwave on 4/22/15.
//  Copyright (c) 2015 AppVenture. All rights reserved.
//

#import "FailedBankInfo.h"

@implementation FailedBankInfo

@synthesize uniqueId = _uniqueId;
@synthesize name = _name;
@synthesize city = _city;
@synthesize state = _state;

- (id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state {
    self = [super init];
    if (self) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.city = city;
        self.state = state;
    }
    
    return self;
}

//- (void) dealloc {
//    self.name = nil;
//    self.city = nil;
//    self.state = nil;
//    [super dealloc];
//}

@end
