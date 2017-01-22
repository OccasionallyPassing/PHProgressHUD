//
//  ViewController.m
//  PHProgressHUD
//
//  Created by Code on 17/1/6.
//  Copyright © 2017年 Code. All rights reserved.
//

#import "ViewController.h"
#import "PHProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)indeterminate:(UIButton *)sender {
    [PHProgressHUD showSingleWheelInView:self.view];
}
- (IBAction)labelExample:(UIButton *)sender {
    [PHProgressHUD showSingeWheelWithMsg:@"加载奶油...." view:nil];
}
- (IBAction)detailsLabelExample:(UIButton *)sender {
    [PHProgressHUD showSingleWheelWithSingelMsg:@"加载中..." detailMsg:@"奶油不急" view:nil];
}
- (IBAction)determinateExample:(UIButton *)sender {
    [PHProgressHUD showSingleProgressView:nil];
}
- (IBAction)determinateNSProgressExample:(UIButton *)sender {
    [[PHProgressHUD shareManager] showSingleProgressViewWithCancle:nil singleMsg:@"奶油加载..." buttonTitle:@"取消"];
}
- (IBAction)annularDeterminateExample:(UIButton *)sender {
    [PHProgressHUD showSingleMsgInBottom:@"奶油等待中..." view:nil];
}
- (IBAction)barDeterminateExample:(UIButton *)sender {
    //自定义

    [PHProgressHUD showSingleCustonImageSetmsg:@"" view:nil imageName:@"Checkmark" setSquare:YES];
}
- (IBAction)customViewExample:(UIButton *)sender {
    NSLog(@"随便写");

}
- (IBAction)success:(UIButton *)sender {
    [PHProgressHUD showSuccess:@"上传成功"];
}
- (IBAction)error:(UIButton *)sender {
    [PHProgressHUD showError:@"上传失败"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
