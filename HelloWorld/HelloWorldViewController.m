//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Muto Toshio on 2012/08/30.
//  Copyright (c) 2012年 Muto Toshio. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
