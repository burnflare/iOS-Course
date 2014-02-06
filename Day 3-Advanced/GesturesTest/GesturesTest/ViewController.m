//
//  ViewController.m
//  GesturesTest
//
//  Created by Vishnu Prem on 18/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doubleTapped:(id)sender {
    NSLog(@"Double tapped");
}

- (IBAction)boxPanned:(id)sender {
    UIPanGestureRecognizer *panGesture = (UIPanGestureRecognizer*)sender;
    [panGesture setTranslation:self.pinkBox.frame.origin inView:self.view];

    CGPoint finger = [panGesture locationInView:self.view];
    NSLog(@"%f",finger.x);
    self.pinkBox.center = finger;
}




















@end
