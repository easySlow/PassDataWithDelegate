//
//  SecondViewController.h
//  PassDataWithDelegate
//
//  Created by LFC on 16/8/9.
//  Copyright © 2016年 LFC. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DataEnterDelegate<NSObject>
-(void)userDidEnterName:(NSString* )info;
@end

typedef void(^returnValueBlock)(NSString* text);
@interface SecondViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic) id <DataEnterDelegate> delegate;

@property(nonatomic) returnValueBlock returnValueBlock;

-(void)returnValue:(returnValueBlock)block;
@end
