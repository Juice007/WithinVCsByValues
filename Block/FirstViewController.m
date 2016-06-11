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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPushBtn:(id)sender {
    SecondViewController *secVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secVC.transmitValueBlock = ^(NSString *string) {
        self.label.text = string;
    };
    
    [self.navigationController pushViewController:secVC animated:YES];
}



@end
