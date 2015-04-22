//
//  FailedBanksDetailViewController.m
//  SQlite_tut
//
//  Created by smartwave on 4/22/15.
//  Copyright (c) 2015 AppVenture. All rights reserved.
//

#import "FailedBanksDetailViewController.h"
#import "FailedBankDetails.h"
#import "FailedBankDatabase.h"

@interface FailedBanksDetailViewController ()

@end

@implementation FailedBanksDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UILabel *_nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 80, 50, 50)];
//    UILabel *_cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 50, 50)];
//    UILabel *_stateLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 120, 50, 50)];
//    UILabel *_zipLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 140, 50, 50)];
//    UILabel *_closedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 160, 50, 50)];
//    UILabel *_updatedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 180, 50, 50)];
}

- (void)viewWillAppear:(BOOL)animated {
    FailedBankDetails *details = [[FailedBankDatabase database]
                                  failedBankDetails:_uniqueId];
    
    UILabel *_nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 80, 50, 50)];
    UILabel *_cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 50, 50)];
    UILabel *_stateLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 120, 50, 50)];
    UILabel *_zipLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 140, 50, 50)];
    UILabel *_closedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 160, 50, 50)];
    UILabel *_updatedLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 180, 50, 50)];

    if (details != nil) {
        [_nameLabel setText:details.name];
        [_cityLabel setText:details.city];
        [_stateLabel setText:details.state];
        [_zipLabel setText:[NSString stringWithFormat:@"%d", details.name]];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MMMM dd, yyyy"];
        [_closedLabel setText:[formatter stringFromDate:details.closeDate]];
        [_updatedLabel setText:[formatter stringFromDate:details.updatedDate]];
        
    }
    
    [_nameLabel sizeToFit];
    [_cityLabel sizeToFit];
    [_stateLabel sizeToFit];
    [_zipLabel sizeToFit];
    [_closedLabel sizeToFit];
    [_updatedLabel sizeToFit];
    
    [self.view addSubview:_nameLabel];
    [self.view addSubview:_cityLabel];
    [self.view addSubview:_stateLabel];
    [self.view addSubview:_zipLabel];
    [self.view addSubview:_closedLabel];
    [self.view addSubview:_updatedLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
