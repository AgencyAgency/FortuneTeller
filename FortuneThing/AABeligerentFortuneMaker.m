//
//  AABeligerentFortuneMaker.m
//  FortuneThing
//
//  Created by Kyle Oba on 10/8/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AABeligerentFortuneMaker.h"

@implementation AABeligerentFortuneMaker

- (NSString *)beligerentGreeting
{
    NSArray *greetings = @[
                           @"Bah!",
                           @"Pshaw.",
                           @"Meh..."
                           ];
    NSUInteger randomIndex = arc4random() % [greetings count];
    return [greetings objectAtIndex:randomIndex];
}

- (NSString *)tellFortune
{
    NSString *fortune = [NSString stringWithFormat:@"%@ %@", [self beligerentGreeting], [super tellFortune]];
    return fortune;
}

@end
