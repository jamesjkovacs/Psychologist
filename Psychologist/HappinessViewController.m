//
//  HappinessViewController.m
//  Happiness
//
//  Created by James Kovacs on 6/7/11.
//  Copyright 2011 AmanoMcGann. All rights reserved.
//

#import "HappinessViewController.h"

@implementation HappinessViewController

@synthesize faceView, slider;
@synthesize happiness;

- (void)updateUI
{
    self.slider.value = self.happiness;
    [self.faceView setNeedsDisplay];
}

- (void)setHappiness:(int)newHappiness
{
    if(newHappiness < 0)newHappiness = 0;
    if(newHappiness > 100)newHappiness = 100;
    happiness = newHappiness;
    [self updateUI];
}

- (IBAction)happinessChanged:(UISlider *)sender
{
    self.happiness = sender.value;
}

- (float)smileForFaceView:(FaceView *)requestor
{
    float smile = 0;
    if(requestor == self.faceView){
        smile = (((float)self.happiness - 50) / 50);
    }
    return smile;
}

- (void)releaseOutlets
{
    self.faceView = nil;
    self.slider = nil;
}

- (void)dealloc
{
    [self releaseOutlets];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.faceView.delegate = self;
    [self updateUI];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    [self releaseOutlets];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
