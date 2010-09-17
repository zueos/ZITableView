//
//  ZITableViewCell.h
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "ZITableViewCellLayer.h"

@interface ZITableViewCell : UITableViewCell 
{
	UILabel *aliasLabel;
	UILabel *statusLabel;
	
	NSInteger badgeValue;
}

@property (nonatomic, retain) UILabel *aliasLabel;
@property (nonatomic, retain) UILabel *statusLabel;
@property (nonatomic, readwrite) NSInteger badgeValue;

@end