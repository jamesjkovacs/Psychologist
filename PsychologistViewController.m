//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by James Kovacs on 6/7/11.
//  Copyright 2011 AmanoMcGann. All rights reserved.
//

#import "PsychologistViewController.h"
#import "HappinessViewController.h"


@implementation PsychologistViewController

- (void)showDiagnosis:(int)diagnosis
{
    HappinessViewController *hvc = [[HappinessViewController alloc] init];
    hvc.happiness = diagnosis;
    hvc.title = [NSString stringWithFormat:@"%d", diagnosis];
    [self.navigationController pushViewController:hvc animated:YES];
    [hvc release];
}

- (void) viewDidLoad
{
    self.title = @"Psychologist";
}

- (IBAction)sad
{
    [self showDiagnosis:0];
}
- (IBAction)happy
{
    [self showDiagnosis:100];
}

- (IBAction)soso
{
    [self showDiagnosis:50];
}


@end
