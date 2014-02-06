//
//  Wallet.m
//  TestProject
//
//  Created by Vishnu Prem on 8/5/13.
//
//

#import "Wallet.h"
@implementation Wallet
@synthesize balance;
@synthesize name;

-(id)initWithName:(NSString*)string{
	balance = 0;
    name = string;
	return [super init];
}
-(int)getBalance{
	return balance;
}
-(void)depositCash:(int)value{
	balance = balance + value;
}
-(void)withdrawCash:(int)value{
	balance = balance - value;
}
-(void)printBalance{
    NSLog(@"%@'s balance is %d",name,balance);
}
@end










