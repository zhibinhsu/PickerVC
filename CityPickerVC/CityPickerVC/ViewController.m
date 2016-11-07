//
//  ViewController.m
//  CityPickerVC
//
//  Created by Admin on 16/11/7.
//  Copyright © 2016年 Admin. All rights reserved.
//

#import "ViewController.h"
#import "XZBPicker.h"

#define KScreenWidth  [UIScreen mainScreen].bounds.size.width
#define KScreenHeight  [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"选择器" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 200, self.view.frame.size.width - 200, 40);
    [btn addTarget:self action:@selector(showPickerViewAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)showPickerViewAction {
    
    XZBPicker *pickerView = [[XZBPicker alloc] init];

    [pickerView cityPikerGetSelectCity:^(NSMutableDictionary *dicSelectCity) {
        NSLog(@"dicSelectCity=%@",dicSelectCity);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
