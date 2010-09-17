//
//  ZITableView.m
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import "ZITableView.h"
#import "ZITableViewCell.h"

#define SHADOW_HEIGHT 2.0
#define SHADOW_OPACITY 0.55
#define SHADOW_RADIUS 1.75
#define SHADOW_OFFSET CGSizeMake(0.0, -1.0)
#define SHADOW_COLOR [[UIColor blackColor] CGColor]

@implementation ZITableView

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

- (void)layoutSubviews {
	[super layoutSubviews];
	
	// The TopShadow is the shadow above the first TableCell or the Table Header.
	// I currently don't worry with the NavBar's Shadow. since it is responsible for that now.
	if (!topShadow) {
		topShadow = [[[CALayer alloc] init] autorelease];
		topShadow.frame = CGRectMake(0.0, 0.0, 320.0, 1.0);
		topShadow.backgroundColor = [[UIColor colorWithWhite:0.1 alpha:1.0] CGColor];
		topShadow.shadowOpacity = SHADOW_OPACITY;
		topShadow.shadowColor = SHADOW_COLOR;
		topShadow.shadowOffset = SHADOW_OFFSET;
		topShadow.shadowRadius = SHADOW_RADIUS;
		
		// Note that the rect we use to create the path with is 27.0 pixels tall.. This is because the header's 
		// height is 25.0. To make this more reuseable it would be a good idea to find out the rect of the header
		// and get its height.. if it == 0.0 .. there isnt a header.. so I might have to do something else...
		// like set the shadowPath of the cell to cover above the cell as well as below.. or just the top if there's
		// more then one cell.
		topShadow.shadowPath = [[UIBezierPath bezierPathWithRect:CGRectMake(0.0, 0.0, 320.0, 27.0)] CGPath];
		
		[self.layer insertSublayer:topShadow atIndex:0];
	}
	else if (![[self.layer.sublayers objectAtIndex:0] isEqual:topShadow]) {
		[self.layer insertSublayer:topShadow atIndex:0];
	}
	
	// Now lets find the last cell of the table.. and apply a shadow to its layer.
	NSArray *indexPathsForVisibleRows = [self indexPathsForVisibleRows];
	NSIndexPath *lastRow = [indexPathsForVisibleRows lastObject];
	if ([lastRow section] == [self numberOfSections] - 1 && [lastRow row] == [self numberOfRowsInSection:[lastRow section]] - 1) {
		ZITableViewCell *cell = (ZITableViewCell*)[self cellForRowAtIndexPath:lastRow];
		cell.layer.shadowOpacity = SHADOW_OPACITY;
		cell.layer.shadowColor = SHADOW_COLOR;
		cell.layer.shadowOffset = SHADOW_OFFSET;
		cell.layer.shadowRadius = SHADOW_RADIUS;
		cell.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(0.0, 75.0, 320.0, 4.0)].CGPath;
	}
}

- (void)dealloc {
    [super dealloc];
}

@end
