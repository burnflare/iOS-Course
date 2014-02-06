//
//  ThirdViewController.m
//  TabTest
//
//  Created by Vishnu Prem on 17/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushClicked:(id)sender {
    FourthViewController *fovc = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    
    [self.navigationController pushViewController:fovc animated:YES];
}

















@end
