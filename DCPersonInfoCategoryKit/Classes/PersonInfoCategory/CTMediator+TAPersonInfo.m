//
//  CTMediator+TAPersonInfo.m
//  WGLearnMediator
//
//  Created by tom on 2018/11/13.
//  Copyright © 2018年 tom. All rights reserved.
//

#import "CTMediator+TAPersonInfo.h"

@implementation CTMediator (TAPersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age {
	
	NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
	[dic setValue:name forKey:@"name"];
	[dic setValue:@(age) forKey:@"age"];
	
	return [self performTarget:@"WGPersonInfoViewController" action:@"PersonInfoViewController" params:dic shouldCacheTarget:NO];
}

@end
