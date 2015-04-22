//
//  FailedBanksListViewController.m
//  SQlite_tut
//
//  Created by smartwave on 4/22/15.
//  Copyright (c) 2015 AppVenture. All rights reserved.
//

#import "FailedBanksListViewController.h"
#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"
#import "FailedBanksDetailViewController.h"

@interface FailedBanksListViewController ()

@end

@implementation FailedBanksListViewController

@synthesize failedBankInfos = _failedBankInfos;
@synthesize details = _details;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.failedBankInfos = [FailedBankDatabase database].failedBankInfos;
    self.title = @"Failed Banks";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_failedBankInfos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    cell.textLabel.text = info.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", info.city, info.state];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.details == nil) {
        self.details = [[FailedBanksDetailViewController alloc] initWithNibName:nil bundle:nil];
    }
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    
    _details.uniqueId = info.uniqueId;
    [self.navigationController pushViewController:_details animated:YES];
}

@end
