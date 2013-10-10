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
@property (strong, nonatomic) AAFortuneMaker *fortuneMaker;
- (IBAction)refreshFortunePressed:(UIBarButtonItem *)sender;
@end

@implementation AAFortuneVC

- (void)displayNewFortune
{
    self.fortuneMaker = [[AABeligerentFortuneMaker alloc] init];
    
    self.fortuneLabel.text = [self.fortuneMaker tellFortune];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self displayNewFortune];
}


- (IBAction)refreshFortunePressed:(UIBarButtonItem *)sender {
    [self displayNewFortune];
}

@end
