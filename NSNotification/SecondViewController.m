//
//  SecondViewController.m
//  WithinVCsByValues
//
//  Created by Lv on 16/6/11.
//  Copyright © 2016年 Lv. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickNotificationBtn:(id)sender {
    NSDictionary *dictionary = @{@"labelString":self.textField.text};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"transmitValueNotification" object:nil userInfo:dictionary];
    [self.navigationController popViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
}

/**
 *  popViewController(导航)或者dismissViewController(模态)都会销毁控制器
 */
- (void)dealloc {
    NSLog(@"secVC dealloc");
}


@end
