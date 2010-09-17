//
//  ZITableViewViewController.h
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZITableView.h"
#import "ZITableViewCell.h"

@interface ZITableViewViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
	IBOutlet ZITableView *theTableView;
}

@end

