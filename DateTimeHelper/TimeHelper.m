//
//  TimeHelper.m
//  ZiPeiYi
//
//  Created by 刘成利 on 16/6/14.
//  Copyright © 2016年 YouXianMing. All rights reserved.
//

#import "TimeHelper.h"

@implementation TimeHelper


+ (NSString *)getCurrentTimeString{

    NSDate* nowTime = [NSDate date];

    
    //转换时间格式
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];//格式化
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSString* tempString1 = [dateFormatter stringFromDate:nowTime];
    
    
    
    NSDate* date = [dateFormatter dateFromString:tempString1];
    
    //转换时间格式
    
    NSDateFormatter*df = [[NSDateFormatter alloc]init]; //格式化
    
    [df setDateFormat:@"yyyyMMddHHmmss"];
    
    [df setLocale:[[NSLocale alloc]initWithLocaleIdentifier:@"zh_CN"]];
    
    return  [df stringFromDate:date];



}


+ (NSString *)getCurrentTimeWithFormatterString{


    
    NSDate* nowTime = [NSDate date];
    
    
    //转换时间格式
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];//格式化
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSString* tempString1 = [dateFormatter stringFromDate:nowTime];
    

    return tempString1;



}

+ (NSString *)secondsFromTimeString:(NSString *)timeString{

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];//设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *datenow = [NSDate date];
    //设置一个字符串的时间
    NSMutableString *datestring = [NSMutableString stringWithFormat:@"%@",timeString];
    //注意 如果20141202052740必须是数字，如果是UNIX时间，不需要下面的插入字符串。
    [datestring insertString:@"-" atIndex:4];
    [datestring insertString:@"-" atIndex:7];
    [datestring insertString:@" " atIndex:10];
    [datestring insertString:@":" atIndex:13];
    [datestring insertString:@":" atIndex:16];
    
    NSDateFormatter * dm = [[NSDateFormatter alloc]init];
    //指定输出的格式   这里格式必须是和上面定义字符串的格式相同，否则输出空
    [dm setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate * newdate = [dm dateFromString:datestring];
    long dd = (long)[datenow timeIntervalSince1970] - [newdate timeIntervalSince1970];
    
    
    return [NSString stringWithFormat:@"%ld", dd];
    

    
   
    
//    if (dd/3600<1 && dd/60>1)
//    {
//        timeStr = [NSString stringWithFormat:@"%ld", dd/60];
//        timeStr=[NSString stringWithFormat:@"%@分钟前", timeString];
//    }
//    if (dd/3600>1&&dd/86400<1)
//    {
//        timeStr = [NSString stringWithFormat:@"%ld", dd/3600];
//        timeStr=[NSString stringWithFormat:@"%@小时前", timeString];
//    }
//    if (dd/86400>1)
//    {
//        timeStr = [NSString stringWithFormat:@"%ld", dd/86400];
//        timeStr=[NSString stringWithFormat:@"%@天前", timeString];
//    }


}


+ (NSString *)minuteFromTimeString:(NSString *)timeString{

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];//设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *datenow = [NSDate date];
    //设置一个字符串的时间
    NSMutableString *datestring = [NSMutableString stringWithFormat:@"%@",timeString];
    //注意 如果20141202052740必须是数字，如果是UNIX时间，不需要下面的插入字符串。
    [datestring insertString:@"-" atIndex:4];
    [datestring insertString:@"-" atIndex:7];
    [datestring insertString:@" " atIndex:10];
    [datestring insertString:@":" atIndex:13];
    [datestring insertString:@":" atIndex:16];
    NSLog(@"datestring==%@",datestring);
    NSDateFormatter * dm = [[NSDateFormatter alloc]init];
    //指定输出的格式   这里格式必须是和上面定义字符串的格式相同，否则输出空
    [dm setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate * newdate = [dm dateFromString:datestring];
    long dd = (long)[datenow timeIntervalSince1970] - [newdate timeIntervalSince1970];
    
    
    return [NSString stringWithFormat:@"%ld", dd/60];
    


}

@end

