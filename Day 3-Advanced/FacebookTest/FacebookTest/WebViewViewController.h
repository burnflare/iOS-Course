//
//  WebViewViewController.h
//  FacebookTest
//
//  Created by Vishnu Prem on 18/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property NSString *urlString;

@end
