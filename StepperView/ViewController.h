//
//  ViewController.h
//  StepperView
//
//  Created by Sreekala Santhakumari on 2/9/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StepperView.h"

@interface ViewController : UIViewController<StepperViewDelegate>

@property(nonatomic, strong) UIView *purpleView;

@property (nonatomic, weak) IBOutlet UILabel *viewLabel;

//@property(nonatomic, strong) UILabel *displayLabel;


@end

