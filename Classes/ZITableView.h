//
//  ZITableView.h
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ZITableView : UITableView 
{
@private
	CALayer *topShadow;
}

@end