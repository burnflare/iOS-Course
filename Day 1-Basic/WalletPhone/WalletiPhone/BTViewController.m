//
//  BTViewController.m
//  WalletPhone
//
//  Created by Vishnu Prem on 16/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "BTViewController.h"

@interface BTViewController () {
    Wallet *vishnuWallet;
}
@end

@implementation BTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    vishnuWallet = [[Wallet alloc] initWithName:@"Vishnu"];
    self.nameLabel.text = vishnuWallet.name;
    [self sliderMoved:nil];
}

-(void)updateBalanceLabel{
    int balance = vishnuWallet.balance;
    self.balanceLabel.text = [NSString stringWithFormat:@"$%d",balance];
}

- (IBAction)sliderMoved:(id)sender {
    int value = self.slider.value;
    self.valueLabel.text = [NSString stringWithFormat:@"%d",value];
}
- (IBAction)depositClicked:(id)sender {
    int value = self.slider.value;
    [vishnuWallet depositCash:value];
    [self updateBalanceLabel];
}
- (IBAction)withdrawClicked:(id)sender {
    int value = self.slider.value;
    [vishnuWallet withdrawCash:value];
    [self updateBalanceLabel];
}


@end
