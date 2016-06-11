//
//  SecondViewController.h
//  WithinVCsByValues
//
//  Created by Lv on 16/6/11.
//  Copyright © 2016年 Lv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic, copy) void (^transmitValueBlock) (NSString *string);

@end
