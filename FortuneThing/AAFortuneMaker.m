//
//  AAFortuneMaker.m
//  FortuneThing
//
//  Created by Kyle Oba on 10/8/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAFortuneMaker.h"

@interface AAFortuneMaker ()
@property (strong, nonatomic) NSArray *fortunes;
@end

@implementation AAFortuneMaker

- (NSArray *)fortunes
{
    if (!_fortunes) {
        _fortunes = @[
                      @"You will find a ball of fluff in your pocket.",
                      @"You will eat a donut.",
                      @"You will be eaten by a donut.",
                      @"There is a chance you will be smashed by a piano.",
                      @"I don't know. Really, you shouldn't worry too much about the future."
                     ];
    }
    return _fortunes;
}

- (NSString *)tellFortune
{
    // arc4random() generates a random number from 0 to a very large number.
    // % is the modulus operator. It gives the remainder of a division operation.
    // For example: 3 % 5 is 3
    //              15 % 10 is 5
    //              20 % 10 is 0
    //              4001 % 10 is 1
    NSUInteger randomIndex = arc4random() % [self.fortunes count];
    return [self.fortunes objectAtIndex:randomIndex];
}

@end
