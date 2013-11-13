//
//  SingleListSelectionCell.m
//  Tricky_Words
//
//  Created by Kristian on 09/11/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import "SingleListSelectionCell.h"

@implementation SingleListSelectionCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
