//
//  ViewController.m
//  ScrollTest
//
//  Created by Vishnu Prem on 17/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

UIImageView *imageView;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scollView.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
    
    imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo.jpg"]];
    
    [self.scollView addSubview:imageView];
    self.scollView.contentSize = imageView.frame.size;

    
    self.scollView.minimumZoomScale = 1;
    self.scollView.maximumZoomScale = 4.0;
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"Content Offset:x:%.2f y:%.2f", scrollView.contentOffset.x, scrollView.contentOffset.y);
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return imageView;
}
- (IBAction)resetClcked:(id)sender {
    [self.scollView setZoomScale:1];
    [self.scollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

















@end
