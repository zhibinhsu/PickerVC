//
//  XZBPicker.h
//  CityPickerVC
//
//  Created by Admin on 16/11/7.
//  Copyright © 2016年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XZBPicker : UIView <UIPickerViewDataSource,UIPickerViewDelegate>

typedef void (^getSelectCity) (NSMutableDictionary *dicSelectCity);
@property (nonatomic,weak) getSelectCity getSelectCity;


@property NSArray *arrProvince;
@property NSArray *arrCity;
@property NSArray *arrDistrict;
@property NSMutableDictionary *dicSelectCityAndCityCode;

@property (strong, nonatomic) UIPickerView *cityPicker;
@property (strong, nonatomic) UILabel *btnSelectShow;

/*block获取选择的城市的信息
 */
- (void)cityPikerGetSelectCity:(getSelectCity)getSelectCity;

@end
