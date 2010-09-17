//
//  ZITableViewViewController.m
//  ZITableView
//
//  Created by Brandon Emrich on 9/16/10.
//  Copyright 2010 Zueos, Inc. All rights reserved.
//

#import "ZITableViewViewController.h"

@implementation ZITableViewViewController

- (void)viewDidLoad {	
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"MyIdentifier";
    ZITableViewCell *cell = (ZITableViewCell*)[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[[ZITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier] autorelease];
    }
	
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
	UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 25.0)];
	
	CAGradientLayer *gradLayer = [CAGradientLayer layer];
	gradLayer.frame = headerView.bounds;
	gradLayer.colors = [NSArray arrayWithObjects:(id)[[UIColor blackColor] CGColor], [[UIColor colorWithWhite:0.98 alpha:0.75] CGColor], [[UIColor colorWithRed:0.375 green:0.375 blue:0.375 alpha:1.000] CGColor], 
						[[UIColor colorWithRed:0.157 green:0.157 blue:0.157 alpha:1.000] CGColor], [[UIColor colorWithRed:0.040 green:0.043 blue:0.026 alpha:1.000] CGColor], nil];
	
	gradLayer.locations = [NSArray arrayWithObjects:(id)[NSNumber numberWithFloat:0.0], [NSNumber numberWithFloat:0.015], [NSNumber numberWithFloat:0.030], [NSNumber numberWithFloat:0.985], [NSNumber numberWithFloat:1.0], nil];
	
	[headerView.layer addSublayer:gradLayer];
	
	UILabel *friendsLabel = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 0.0, 312.0, 25.0)];
	friendsLabel.backgroundColor = [UIColor clearColor];
	friendsLabel.text = @"Lorem Ipsum";
	friendsLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:16.0];
	friendsLabel.textColor = [UIColor lightTextColor];
	friendsLabel.shadowColor = [UIColor colorWithWhite:0.1 alpha:0.80];
	friendsLabel.shadowOffset = CGSizeMake(0.0, -1.0);
	
	[headerView addSubview:friendsLabel];
	
	return [headerView autorelease];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
	return 25.0;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [super dealloc];
}

@end
