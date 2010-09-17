//
//  ZITableViewCellLayer.m
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import "ZITableViewCellLayer.h"


@implementation ZITableViewCellLayer

- (id)init {
	
	if (self = [super init]) {
		
		self.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:0.98 alpha:0.98] CGColor], [[UIColor colorWithRed:0.705 green:0.705 blue:0.705 alpha:1.000] CGColor], [[UIColor colorWithRed:0.455 green:0.455 blue:0.455 alpha:1.000] CGColor], [[UIColor blackColor] CGColor], nil];
		self.locations = [NSArray arrayWithObjects:(id)[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.01], [NSNumber numberWithFloat:0.99], [NSNumber numberWithFloat:1.0], nil];
		
		self.startPoint = CGPointMake(0.5, 0.0);		
		self.endPoint = CGPointMake(0.5, 1.0);
		
		// Adds a bevel effect to the sides of the table cell
		// light source gets messed up with CellBadgeView...
		/*
		 CAGradientLayer *separate = [CAGradientLayer layer];
		 separate.frame = CGRectMake(0.0, 0.0, 320.0, 75.0);
		 separate.startPoint = CGPointMake(0.0, 0.5);
		 separate.endPoint = CGPointMake(1.0, 0.5);
		 separate.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:1.0 alpha:0.98] CGColor], [[UIColor clearColor] CGColor], [[UIColor clearColor] CGColor], [[UIColor colorWithWhite:0.2 alpha:0.99] CGColor], nil];
		 separate.locations  = [NSArray arrayWithObjects:(id)[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.004], [NSNumber numberWithFloat:0.997], [NSNumber numberWithFloat:1.0], nil];
		 
		 [self addSublayer:separate]; */
		
		// Turns shadows on for all instances of this class
		/*
		 self.shadowOpacity = 1.0;
		 self.shadowColor = [[UIColor blackColor] CGColor];
		 self.shadowOffset = CGSizeMake(0.0, -1.0);
		 self.shadowRadius = 1.75;
		 self.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(0.0, 75.0, 320.0, 4.0)].CGPath; */
	}
	return self;
}

@end