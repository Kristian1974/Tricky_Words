//
//  GameSelectorViewController.h
//  Tricky_Words
//
//  Created by Kristian on 09/11/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingleListSelectionCell.h"

@interface SLGameSelectorViewController : UIViewController{
    
    NSArray *challengesArray;
    
}

@property (weak, nonatomic) IBOutlet UITableView *challengesTable;
@end
