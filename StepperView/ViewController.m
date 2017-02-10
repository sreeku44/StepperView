//
//  ViewController.m
//  StepperView
//
//  Created by Sreekala Santhakumari on 2/9/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.purpleView = [[UIView alloc]init ];
                       
    self.purpleView.frame = CGRectMake(60, 250, 300,60);
    
     self.purpleView.backgroundColor = [UIColor purpleColor];
    
    //[self.view addSubview:self.purpleView ];
    
    
    StepperView *stepperView = [[StepperView alloc] initWithFrame : CGRectMake(60, 250, 300,60)];
    
    stepperView.delegate = self;
    
   [self.view addSubview:stepperView];
    
    stepperView.backgroundColor =[UIColor purpleColor];
    
    
    //   self.displayLabel = [[UILabel alloc]init];
    //
    //    self.displayLabel.frame = CGRectMake(150, 150, 140, 60);
    //
    //    self.displayLabel.center = CGPointMake(self.purpleView.frame.size.width/2, self.purpleView.frame.size.height/2 );
    //
    //    self.displayLabel.backgroundColor = [UIColor colorWithRed:136.0 green:5.0 blue:133.0 alpha:.2 ];
    //
    //    [self.purpleView addSubview:self.displayLabel];
    //
//    UIButton *stepUpButton = [[UIButton alloc]init];
//    
//    stepUpButton.frame = CGRectMake (0, 0, 80,60);
//    
//    stepUpButton.backgroundColor = [UIColor purpleColor];
//    
//    [self.purpleView addSubview:stepUpButton];
//    
//    [stepUpButton setTitle: @"+" forState :UIControlStateNormal ];
//    
//    [stepUpButton addTarget:self action:@selector(upButtonPressed) forControlEvents:UIControlEventTouchUpInside];
//    
//    
//    UIButton *stepDownButton = [[UIButton alloc]init];
//    
//    stepDownButton.frame = CGRectMake(220, 0, 80, 60);
//    
//    stepDownButton.backgroundColor = [UIColor purpleColor];
//    
//    [self.purpleView addSubview:stepDownButton];
//    
//    [stepDownButton setTitle:@"-" forState:UIControlStateNormal];
//    
//
    
   // NSLog(@"@%f @%f",self.view.center.x, self.view.center.y );
    

    
}

-(void) stepperButtonChanged: (int) value {
    
    self.viewLabel.text = [NSString stringWithFormat:@" The stepper Value is  %d", value];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
