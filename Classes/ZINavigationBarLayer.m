//
//  ZINavigationBarLayer.m
//  TheGame
//
//  Created by Brandon Emrich on 9/14/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import "ZINavigationBarLayer.h"

@implementation ZINavigationBarLayer

- (id)init {
	
	if (self = [super init]) {
		
		//Colors
		UIColor *colorOne		= [UIColor colorWithWhite:0.98 alpha:0.75];
		UIColor *colorTwo		= [UIColor colorWithRed:0.520 green:0.544 blue:0.609 alpha:1.000];
		UIColor *colorThree 	= [UIColor colorWithRed:0.339 green:0.368 blue:0.458 alpha:1.000];
		UIColor *colorFour		= [UIColor colorWithRed:0.298 green:0.326 blue:0.413 alpha:1.000];
		UIColor *colorFive		= [UIColor colorWithRed:0.238 green:0.253 blue:0.332 alpha:1.000];
		UIColor *colorSix		= [UIColor colorWithRed:0.071 green:0.075 blue:0.093 alpha:1.000];
		
		NSArray *colors =  [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, colorThree.CGColor, colorFour.CGColor, colorFive.CGColor, colorSix.CGColor, nil];
		
		NSNumber *stopOne		= [NSNumber numberWithFloat:0.0];
		NSNumber *stopTwo		= [NSNumber numberWithFloat:0.012];
		NSNumber *stopThree	= [NSNumber numberWithFloat:0.50];
		NSNumber *stopFour		= [NSNumber numberWithFloat:0.5001];
		NSNumber *stopFive		= [NSNumber numberWithFloat:0.98];
		NSNumber *stopSix		= [NSNumber numberWithFloat:1.0];
		
		NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, stopThree, stopFour, stopFive, stopSix, nil];
		
		
		self.colors = colors;
		self.locations = locations;
		self.startPoint = CGPointMake(0.5, 0.0);
		self.endPoint = CGPointMake(0.5, 1.0);
		
		self.shadowOpacity = 0.55;
		self.shadowColor = [[UIColor blackColor] CGColor];
		self.shadowOffset = CGSizeMake(0.0, -1.0);
		self.shadowRadius = 1.75;
		self.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(0.0, 43.0, 320.0, 4.0)].CGPath;
		
		//CAGradientLayer *separate = [CAGradientLayer layer];
//		separate.frame = CGRectMake(0.0, 0.0, 320.0, 44.0);
//		separate.startPoint = CGPointMake(0.0, 0.5);
//		separate.endPoint = CGPointMake(1.0, 0.5);
//		separate.opacity = 0.7;
//		separate.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:1.0 alpha:0.98] CGColor], [[UIColor clearColor] CGColor], [[UIColor clearColor] CGColor], [[UIColor colorWithWhite:0.2 alpha:0.99] CGColor], nil];
//		separate.locations  = [NSArray arrayWithObjects:(id)[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.004], [NSNumber numberWithFloat:0.997], [NSNumber numberWithFloat:1.0], nil];
//		
//		[self addSublayer:separate];
		
	}
	return self;
}

@end
