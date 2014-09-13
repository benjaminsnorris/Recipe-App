//
//  RecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Ben Norris on 9/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecipesTableViewDataSource : NSObject <UITableViewDataSource>

-(void)registerTableView:(UITableView *)tableView;

@end
