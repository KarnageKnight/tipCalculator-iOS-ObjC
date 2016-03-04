//
//  ViewController.h
//  tipCalc
//
//  Created by KarnageKnight on 14/06/15.
//  Copyright (c) 2015 KarnageKnight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *labelOut;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)calc:(id)sender;

- (IBAction)sliderChange:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *currentLabel;

@end

