//
//  ZINavigationBar.m
//  TheGame
//
//  Created by Brandon Emrich on 9/14/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import "ZINavigationBar.h"

@implementation ZINavigationBar

+ (Class)layerClass {
	return [ZINavigationBarLayer class];
	
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) 
	{
		self.backgroundColor = [UIColor clearColor];    
	}
    return self;
}

- (void) awakeFromNib {
	self.backgroundColor = [UIColor clearColor];
}

- (void)drawRect:(CGRect)rect {
	
}

- (void)dealloc {
    [super dealloc];
}

@end