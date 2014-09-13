//
//  RATableViewCell.m
//  Recipe App
//
//  Created by Ben Norris on 9/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RATableViewCell.h"

@implementation RATableViewCell

- (RATableViewCell *)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.backgroundColor = [UIColor colorWithRed:0.6 green:0.76 blue:0.98 alpha:0.2];
    
    NSString * fontFaceBold = @"AvenirNext-Bold";
    NSString * fontFace = @"Avenir Next";

    self.textLabel.font = [UIFont fontWithName:fontFaceBold size:18];
    self.detailTextLabel.font = [UIFont fontWithName:fontFace size:16];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return self;
}
- (void)awakeFromNib {
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
