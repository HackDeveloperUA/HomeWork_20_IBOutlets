//
//  ViewController.m
//  HomeWork_20_IBOutlets
//
//  Created by MD on 21.03.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

-(void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    CGFloat redRandomColorLevel = (CGFloat)arc4random_uniform(256)/255;
    CGFloat greenRandomColorLevel = (CGFloat)arc4random_uniform(256)/255;
    CGFloat blueRandomColorLevel = (CGFloat)arc4random_uniform(256)/255;
    
    self.randomColor = [UIColor colorWithRed:redRandomColorLevel
                                       green:greenRandomColorLevel
                                        blue:blueRandomColorLevel
                                       alpha:1];
    
    for (UIView* view in self.arrayForCell)
            view.backgroundColor =  self.randomColor;
    
}

-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    NSMutableArray* Checkers = self.arrayForChecker;//self.arrayForChecker;
    
    for (int i=0 ; i<=17; i++) {
        
        NSInteger firstNumberChecker = arc4random() % [Checkers count];
        UIView*   firstTestView = [Checkers objectAtIndex:firstNumberChecker];
        
        NSInteger secondNumberChecker = arc4random() % [Checkers count];
        UIView*   secondTestView = [Checkers objectAtIndex:secondNumberChecker];
        
        CGPoint point = firstTestView.center;
        [UIView animateWithDuration:1 animations:^{
            
            firstTestView.center = secondTestView.center;
            secondTestView.center = point;
        }];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
