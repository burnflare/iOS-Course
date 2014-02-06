//
//  BTViewController.m
//  Sliders
//
//  Created by Vishnu Prem on 16/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "BTViewController.h"

@interface BTViewController ()

@end

@implementation BTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView *redSquare = [[UIView alloc] initWithFrame:
                         CGRectMake(50, 400, 100, 100)];
    redSquare.backgroundColor = [UIColor redColor];
    [self.view addSubview:redSquare];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    self.clickLabel.text = @"Clicked";
}
- (IBAction)switchMoved:(id)sender {
    if (self.swt.on) {
        self.switchLabel.text = @"On";
    } else {
        self.switchLabel.text = @"Off";
    }
}
- (IBAction)sliderMoved:(id)sender {
    float value = self.slider.value;
    self.sliderLabel.text = [NSString stringWithFormat:@"Slider Value:%.2f",value];
}















@end
