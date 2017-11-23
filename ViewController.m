//
//  ViewController.m
//  UnitConverter
//
//  Created by wikigainoh on 21/11/17.
//  Copyright © 2017 HelloWorldCop. All rights reserved.
//

#import "ViewController.h"

double convertSqftToSqm(double SqftValue)
{
    return SqftValue*0.0929; //1 square foot = 0.0929 square meter
}
double convertSqftToSqinch(double SqftValue)
{
    return SqftValue*144; //1 square foot = 144 square inch
}
double convertSqftToSqyd(double SqftValue)
{
    return SqftValue * 0.1111; //1 square foot = 0.1111 square yard
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *buf=[NSMutableString new];
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex==0)
    {
        double convert1 = convertSqftToSqm(userInput);
        [buf appendString:[@(convert1) stringValue]];
    }
    else if(self.segmentController.selectedSegmentIndex==1)
    {
        double convert2 = convertSqftToSqinch(userInput);
        [buf appendString:[@(convert2) stringValue]];
    }
    else
    {
        double convert3 = convertSqftToSqyd(userInput);
        [buf appendString:[@(convert3) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
