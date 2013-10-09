//
//  AAFortuneVC.m
//  FortuneThing
//
//  Created by Kyle Oba on 10/8/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAFortuneVC.h"
#import "AAFortuneMaker.h"

@interface AAFortuneVC ()
@property (weak, nonatomic) IBOutlet UILabel *fortuneLabel;
@property (strong, nonatomic) AAFortuneMaker *fortuneMaker;
@end

@implementation AAFortuneVC

- (AAFortuneMaker *)fortuneMaker
{
    if (!_fortuneMaker) {
        _fortuneMaker = [[AAFortuneMaker alloc] init];
    }
    return _fortuneMaker;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.fortuneLabel.text = [self.fortuneMaker tellFortune];
}


@end
