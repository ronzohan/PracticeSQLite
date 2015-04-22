//
//  FailedBankDatabase.h
//  SQlite_tut
//
//  Created by smartwave on 4/22/15.
//  Copyright (c) 2015 AppVenture. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@class FailedBankDetails;
@interface FailedBankDatabase : NSObject {
    sqlite3 *_database;
}


+ (FailedBankDatabase*)database;
- (NSArray *)failedBankInfos;
- (FailedBankDetails *)failedBankDetails:(int)uniqueId;

@end
