//
//  FailedBanksDetailViewController.h
//  SQlite_tut
//
//  Created by smartwave on 4/22/15.
//  Copyright (c) 2015 AppVenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FailedBanksDetailViewController : UIViewController {

}
@property (nonatomic, assign) int uniqueId;
@property (nonatomic, retain)  UILabel *nameLabel;
@property (nonatomic, retain)  UILabel *cityLabel;
@property (nonatomic, retain)  UILabel *stateLabel;
@property (nonatomic, retain)  UILabel *zipLabel;
@property (nonatomic, retain)  UILabel *closedLabel;
@property (nonatomic, retain)  UILabel *updatedLabel;

@end
