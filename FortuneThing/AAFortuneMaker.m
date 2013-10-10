//
//  AAFortuneMaker.m
//  FortuneThing
//
//  Created by Kyle Oba on 10/8/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAFortuneMaker.h"

@implementation AAFortuneMaker


- (NSString *)tellFortune
{
    NSArray *fortunes = @[
                          @"You will eat a cat.",
                          @"You will die in three days.",
                          @"There is a 60% chance that there is a 80% chance you will die in a day.",
                          @"Starbucks will be on sale today.",
                          @"You will try to fly.",
                          @"You will fight with garbage truck"
                          ];
   
    NSUInteger randomIndex = arc4random() % [fortunes count];
    
    return [fortunes objectAtIndex:randomIndex];
}


@end
