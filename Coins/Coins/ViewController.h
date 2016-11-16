//
//  ViewController.h
//  Coins
//
//  Created by Ksenya on 11.10.16.
//  Copyright © 2016 Ksenya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIButton *btn;
//@property (weak, nonatomic) IBOutlet UITextView *answer;
@property (weak, nonatomic) IBOutlet UILabel *answer;

@end

