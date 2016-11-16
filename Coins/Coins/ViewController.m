//
//  ViewController.m
//  Coins
//
//  Created by Ksenya on 11.10.16.
//  Copyright © 2016 Ksenya. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleField.delegate = self;
}

- (IBAction)countPressed:(id)sender {
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"1234567890"];
    
    _answer.lineBreakMode = NSLineBreakByWordWrapping;
    _answer.numberOfLines = 0;
    
    if (!([_titleField.text rangeOfCharacterFromSet:set].location == NSNotFound)) {
        int value = _titleField.text.intValue;
        int availableCoins[] = {10, 5, 2, 1};
        NSString *str = @"";
        for (int i = 0; i < (sizeof availableCoins / sizeof(int)); i++) {
            if (availableCoins[i] > value) {
                continue;
            }
            int amount = value / availableCoins[i];
            
            str = [str stringByAppendingString: [NSString stringWithFormat: @"%d номиналом %d\n", amount, availableCoins[i]]];
            if (value % availableCoins[i] == 0)
            {
                break;
            }
            value = value - amount * availableCoins[i];
            
        }
        _answer.text = str;

    } else {
        _answer.text = @"Вы ввели неверное значение!\nВведите целое число.";
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
