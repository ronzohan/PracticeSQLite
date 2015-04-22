//
//  FailedBanksListViewController.h
//  SQlite_tut
//
//  Created by smartwave on 4/22/15.
//  Copyright (c) 2015 AppVenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FailedBanksDetailViewController;

@interface FailedBanksListViewController : UITableViewController {
    NSArray *_failedBankInfos;
    FailedBanksDetailViewController *_details;
}

@property (nonatomic, retain) NSArray *failedBankInfos;
@property (nonatomic, retain) FailedBanksDetailViewController *details;

@end
