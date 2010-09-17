//
//  ZITableViewAppDelegate.h
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZITableViewViewController;

@interface ZITableViewAppDelegate : NSObject <UIApplicationDelegate> 
{
    UIWindow *window;
    ZITableViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ZITableViewViewController *viewController;

@end

