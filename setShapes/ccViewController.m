//
//  ccViewController.m
//  setShapes
//
//  Created by Cox, Chip on 5/11/14.
//  Copyright (c) 2014 merck. All rights reserved.
//

#import "ccViewController.h"
#import "ccSetCardView.h"

@interface ccViewController ()
@property (nonatomic,strong) ccSetCardView *MainCardView;

@end

@implementation ccViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[self.colorSegmentProp.subviews objectAtIndex:0] setBackgroundColor:[UIColor purpleColor]];
    [[self.colorSegmentProp.subviews objectAtIndex:1] setBackgroundColor:[UIColor greenColor]];
    [[self.colorSegmentProp.subviews objectAtIndex:1] setTintColor:[UIColor blackColor]];
    [[self.colorSegmentProp.subviews objectAtIndex:2] setBackgroundColor:[UIColor redColor]];

    // card size in game is 57/80
    self.MainCardView=[[ccSetCardView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+40, self.view.frame.origin.y+50,250,275)];

    self.MainCardView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:self.MainCardView];
    [self.MainCardView setNeedsDisplay];
}
- (IBAction)FillSegment:(UISegmentedControl *)sender {
    self.MainCardView.cardFill=sender.selectedSegmentIndex;
    [self.MainCardView setNeedsDisplay];
}
- (IBAction)ShapeSegment:(UISegmentedControl *)sender {
    self.MainCardView.cardShape=sender.selectedSegmentIndex;
    [self.MainCardView setNeedsDisplay];
}
- (IBAction)QuantitySegment:(UISegmentedControl *)sender {
    self.MainCardView.cardQuantity=sender.selectedSegmentIndex+1;
    [self.MainCardView setNeedsDisplay];
}
- (IBAction)ColorSegment:(UISegmentedControl *)sender {
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    switch(sender.selectedSegmentIndex) {
        case 0:
            self.MainCardView.cardColor=[UIColor redColor];
            break;
        case 1:
            self.MainCardView.cardColor=[UIColor greenColor];
            break;
        case 2:
            self.MainCardView.cardColor=[UIColor purpleColor];
            break;
    }
    CGContextRestoreGState(context);
    [self.MainCardView setNeedsDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
