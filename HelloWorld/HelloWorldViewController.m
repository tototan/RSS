//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Muto Toshio on 2012/08/30.
//  Copyright (c) 2012年 Muto Toshio. All rights reserved.
//

#import "HelloWorldViewController.h"
#import "TestViewController.h"
#import "NextViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController
@synthesize textField;
@synthesize label;
@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *test = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[test setFrame:CGRectMake(70.0, 150.0, 60.0, 20.0)];
    //	[test setImage:[UIImage imageNamed:@"btn24Pieces.png"] forState:UIControlStateNormal];
    [test setTitle:@"テスト" forState:UIControlStateNormal];
	[test setBackgroundColor:[UIColor clearColor]];
	[test addTarget:self action:@selector(btnLevel1:)forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:test];
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];	//-- Level1ボタンの設定 --//

    
}

- (void)btnLevel1:(id)sender {
    NextViewController *nextViewController = [[NextViewController alloc]init];
        [self.view addSubview: [nextViewController view]];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)changeGreeting:(id)sender {
    TestViewController *tc = [[TestViewController alloc]init];
    [self presentModalViewController:tc animated:YES];
//    self.userName = self.textField.text;
//    
//    NSString *nameString = self.userName;
//    if ([nameString length] == 0) {
//        nameString = @"World";
//    }
//    
//    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello. %@!",nameString];
//    self.label.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {       // どのオブジェクトのデリゲートかを指定　今回は一つしか無いので無くても良い
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
