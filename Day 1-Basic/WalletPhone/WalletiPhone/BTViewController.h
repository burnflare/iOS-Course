//
//  BTViewController.h
//  WalletPhone
//
//  Created by Vishnu Prem on 16/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Wallet.h"

@interface BTViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *balanceLabel;

@end
