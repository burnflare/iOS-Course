
#import <Foundation/Foundation.h>

@interface Wallet : NSObject{
	int balance;
    NSString *name;
}

@property (readonly) int balance;
@property NSString *name;

-(id)initWithName:(NSString*)name;
//-(int)getBalance;
-(void)depositCash:(int)value;
-(void)withdrawCash:(int)value;
-(void)printBalance;

@end
