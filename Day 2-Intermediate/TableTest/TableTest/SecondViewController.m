//
//  SecondViewController.m
//  TableTest
//
//  Created by Vishnu Prem on 17/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    self.title = @"Second View Controller";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillAppear:(BOOL)animated{
    self.label.text = self.labelText;
}

- (IBAction)openClicked:(id)sender {
    ThirdViewController *tvc = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    
    tvc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self presentViewController:tvc animated:YES completion:nil];
}















@end
