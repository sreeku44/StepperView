//
//  StepperView.m
//  StepperView
//
//  Created by Sreekala Santhakumari on 2/9/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

-(instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    
    
    self.displayLabel = [[UILabel alloc]init];
    
    self.displayLabel.frame = CGRectMake(80, 0, 140, 60);
    
    // CGPointMake (self.frame.size.width/2, self.frame.size.height/2 );

    
    self.displayLabel.textColor = [UIColor whiteColor];
    
    self.displayLabel.textAlignment = UITextAlignmentCenter;
    
    self.displayLabel. backgroundColor = [UIColor colorWithRed:165.0 /255.0 green:5.0/255.0 blue:133.0/255.0 alpha:1 ];
    
    [self addSubview:self.displayLabel];
    
//    int value = 0;
//    
//    self.displayLabel.text = [NSString stringWithFormat:@"%d", value ];
//    
    

    self.stepUPButton = [[UIButton alloc]init];

    self.stepUPButton.frame = CGRectMake (0, 0, 80,60);

    self.stepUPButton.backgroundColor = [UIColor purpleColor];

    [self.stepUPButton setTitle: @"+" forState :UIControlStateNormal ];

    [self.stepUPButton addTarget:self action:@selector(stepUpButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:self.stepUPButton ];
    
    
    self.stepDownButton  =[[UIButton alloc]init];
    
    self.stepDownButton.frame = CGRectMake(220, 0, 80, 60);
    
    self.stepDownButton.backgroundColor = [UIColor purpleColor];
    
    [self.stepDownButton setTitle:@"-" forState:UIControlStateNormal];
    
    [self.stepDownButton addTarget:self action:@selector(stepDownButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:self.stepDownButton];
    
    
    return self;
}

int value = 0;

-(void) stepUpButtonPressed:(id) sender  {
    
    value ++;
    
    self.displayLabel.text = [NSString stringWithFormat:@"%d", value];
    
    [self.delegate stepperButtonChanged : value];

}

-(void) stepDownButtonPressed:(id) sender {
    
    value--;
    
    self.displayLabel.text= [NSString stringWithFormat:@"%d", value];
    
    [self.delegate stepperButtonChanged : value];
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
