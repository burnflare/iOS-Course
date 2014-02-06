//
//  BTViewController.h
//  Sliders
//
//  Created by Vishnu Prem on 16/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BTViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *clickLabel;
@property (weak, nonatomic) IBOutlet UILabel *switchLabel;
@property (weak, nonatomic) IBOutlet UISwitch *swt;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end
