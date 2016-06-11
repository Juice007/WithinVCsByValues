//
//  FirstViewController.m
//  WithinVCsByValues
//
//  Created by Lv on 16/6/11.
//  Copyright © 2016年 Lv. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveValue:) name:@"transmitValueNotification" object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPushBtn:(id)sender {
    SecondViewController *secVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:secVC animated:YES];
//    [self presentViewController:secVC animated:YES completion:nil];
}

- (void)receiveValue:(NSNotification *)notification {
    
    NSDictionary *dict = notification.userInfo;
    
    self.label.text = dict[@"labelString"];
}

/**
 *  当控制器被销毁的时候会调用dealloc方法
 *  不允许调用父类的dealloc方法，因为dealloc方法不允许显示调用
 */
- (void)dealloc {
    NSLog(@"dealloc");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
