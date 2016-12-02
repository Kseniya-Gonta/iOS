//
//  DetailTableViewController.h
//  changeSelTextColor
//
//  Created by Ksenya on 11.11.16.
//  Copyright © 2016 Ksenya. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailTableViewController : UITableViewController
@property (retain) NSString *str;
@property (retain) NSArray *words;
@property (retain) NSDictionary<UIColor *, NSMutableString*> *coloredWords;

@end
