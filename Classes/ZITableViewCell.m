//
//  ZITableViewCell.m
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import "ZITableViewCell.h"

@implementation ZITableViewCell

@synthesize aliasLabel, statusLabel, badgeValue;

+ (Class)layerClass {
	return [ZITableViewCellLayer class];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        // Initialization code
		self.contentView.backgroundColor = [UIColor clearColor];
		
		aliasLabel = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 4.0, 308.0, 30.0)];
		aliasLabel.backgroundColor = [UIColor clearColor];
		aliasLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:20.0];
		aliasLabel.textColor = [UIColor colorWithRed:0.236 green:0.236 blue:0.236 alpha:1.000];
		aliasLabel.shadowColor = [UIColor colorWithRed:0.793 green:0.793 blue:0.793 alpha:0.85];
		aliasLabel.shadowOffset = CGSizeMake(0.0, 1.0);
		
		[self.contentView addSubview:aliasLabel];
		
		statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 42.0, 308.0, 30.0)];
		statusLabel.backgroundColor = [UIColor clearColor];
		statusLabel.font = [UIFont fontWithName:@"ArialMT" size:18.0];
		statusLabel.textColor = [UIColor colorWithRed:0.222 green:0.222 blue:0.222 alpha:0.8];
		statusLabel.shadowColor = [UIColor colorWithRed:0.719 green:0.719 blue:0.719 alpha:0.65];
		statusLabel.shadowOffset = CGSizeMake(0.0, 0.8);
		
		[self.contentView addSubview:statusLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    self.textLabel.backgroundColor = [UIColor clearColor];
	self.detailTextLabel.backgroundColor = [UIColor clearColor];
	
	[super setSelected:selected animated:animated];
}

- (void)dealloc {
    [super dealloc];
}

@end
