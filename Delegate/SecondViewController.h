//
//  SecondViewController.h
//  WithinVCsByValues
//
//  Created by Lv on 16/6/11.
//  Copyright © 2016年 Lv. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>

- (void)transmitValue:(NSString *)string;

@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) id<SecondViewControllerDelegate>delegate;

@end
