//
//  ViewController.m
//  changeSelTextColor
//
//  Created by Ksenya on 28.10.16.
//  Copyright © 2016 Ksenya. All rights reserved.
//

#import "ViewController.h"
#import "DetailTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonClick:(UIButton *)sender {
    NSRange selectedRange = [_text selectedRange];
    [_text.textStorage addAttribute:NSForegroundColorAttributeName value:sender.currentTitleColor range:selectedRange];

    
}

- (IBAction)clearButton:(id)sender {
    NSRange selectedRange = [_text selectedRange];
    [_text.textStorage removeAttribute:NSForegroundColorAttributeName range:selectedRange];
}


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailTableViewController *vc = [segue destinationViewController];
    
    NSMutableArray *attrWords = [[[NSMutableArray alloc] init] autorelease];
    [_text.attributedText enumerateAttributesInRange:NSMakeRange(0, [_text.attributedText length])
                                             options:0
                                          usingBlock:^(NSDictionary *attributes, NSRange range, BOOL *stop) {
                                              if ([attributes objectForKey:NSForegroundColorAttributeName] != NULL) {
                                                  [attrWords addObject:[_text.attributedText attributedSubstringFromRange:range]];
                                              }
                                          }];
    
    vc.words = attrWords;
}


-(void) colorSelectedTextInTextView: (UIColor*)color
{
   }

- (void)dealloc {
    [_text release];
    [super dealloc];
}
@end
