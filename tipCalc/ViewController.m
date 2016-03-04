//
//  ViewController.m
//  tipCalc
//
//  Created by KarnageKnight on 14/06/15.
//  Copyright (c) 2015 KarnageKnight. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;
@synthesize labelOut;
@synthesize slider;
@synthesize currentLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    [slider setMaximumValue:0.4];
    [slider setValue:0.2];
    [currentLabel setText:@"20%"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calc:(id)sender {
    NSString *amt = [textField text];
    if ([amt length]==0) {
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"No amount" message:@"You forgot to type in the bill amount!" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
    }else{
    float billAmt= [amt floatValue];
    float tipAmt = billAmt*[slider value];
    NSString *tipString = [[NSString alloc] initWithFormat:@"%1.2f",tipAmt];
        [labelOut setText:tipString];}
}

- (IBAction)sliderChange:(id)sender {
    NSString *current = [[NSString alloc] initWithFormat:@"%1.2f%%", [slider value]*100];
[currentLabel setText:current];
}

@end
