//
//  TimeHelper.h
//  ZiPeiYi
//
//  Created by 刘成利 on 16/6/14.
//  Copyright © 2016年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeHelper : NSObject

// 获取当前时间: 格式为20161013101801
+ (NSString *)getCurrentTimeString;

// 获取当前时间：格式为2016-10-13 10:18:01
+ (NSString *)getCurrentTimeWithFormatterString;

// 当前时间与给定时间timeString的时间【秒】差
+ (NSString *)secondsFromTimeString:(NSString *)timeString;

// 当前时间与给定时间timeString的时间【分】差
+ (NSString *)minuteFromTimeString:(NSString *)timeString;

@end
