//
//  main.m
//  Math
//
//  Created by Vishnu Prem on 16/12/13.
//  Copyright (c) 2013 Vishnu Prem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wallet.h"

int main(int argc, const char * argv[])
{

@autoreleasepool {
    Wallet *vishnuWallet = [[Wallet alloc] initWithName:@"Vishnu"];
    Wallet *davidWallet = [[Wallet alloc] initWithName:@"David"];

    [davidWallet depositCash:20];
    [vishnuWallet depositCash:40];
    [davidWallet withdrawCash:10];
    [vishnuWallet withdrawCash:10];
    
    [vishnuWallet setName:@"Alvin"];
    
    [vishnuWallet printBalance];
    [davidWallet printBalance];
}
return 0;
}









