//
//  DetailTableViewController.h
//  changeSelTextColor
//
//  Created by Ksenya on 11.11.16.
//  Copyright © 2016 Ksenya. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailTableViewController : UITableViewController
@property NSString *str;
@property NSArray *words;
@property NSDictionary<UIColor *, NSMutableString*> *coloredWords;

@end
