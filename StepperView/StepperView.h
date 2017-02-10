//
//  StepperView.h
//  StepperView
//
//  Created by Sreekala Santhakumari on 2/9/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate <NSObject>;

-(void) stepperButtonChanged : (int) value;

@end

@interface StepperView : UIView

@property (nonatomic, strong)UILabel *displayLabel;

@property (nonatomic, strong) UIButton *stepUPButton;

@property(nonatomic, strong) UIButton *stepDownButton;

@property (nonatomic, weak) id <StepperViewDelegate> delegate;

@end
