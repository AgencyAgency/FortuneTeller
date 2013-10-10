//
//  AABeligerentFortuneMaker.m
//  FortuneThing
//
//  Created by Kyle Oba on 10/9/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AABeligerentFortuneMaker.h"

@implementation AABeligerentFortuneMaker

- (NSString *)tellFortune
{
    return [NSString stringWithFormat:@"Bah! %@", [super tellFortune]];
}

@end
