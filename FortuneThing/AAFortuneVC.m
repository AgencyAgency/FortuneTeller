//
//  AAFortuneVC.m
//  FortuneThing
//
//  Created by Kyle Oba on 10/8/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAFortuneVC.h"
#import "AABeligerentFortuneMaker.h"

@interface AAFortuneVC ()
@property (weak, nonatomic) IBOutlet UILabel *fortuneLabel;
@property (strong, nonatomic) AABeligerentFortuneMaker *fortuneMaker;
- (IBAction)refreshFortune:(UIBarButtonItem *)sender;
@end

@implementation AAFortuneVC

- (AABeligerentFortuneMaker *)fortuneMaker
{
    if (!_fortuneMaker) {
        _fortuneMaker = [[AABeligerentFortuneMaker alloc] init];
    }
    return _fortuneMaker;
}

- (void)showNewFortune
{
    self.fortuneLabel.text = [self.fortuneMaker tellFortune];
}

- (IBAction)refreshFortune:(UIBarButtonItem *)sender {
    [self showNewFortune];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self showNewFortune];
}


@end
