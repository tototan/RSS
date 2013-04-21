//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Muto Toshio on 2012/08/30.
//  Copyright (c) 2012年 Muto Toshio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (copy, nonatomic) NSString *userName;

- (IBAction)changeGreeting:(id)sender;
@end
