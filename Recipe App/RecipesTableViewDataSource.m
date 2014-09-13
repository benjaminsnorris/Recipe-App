//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Ben Norris on 9/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"
#import "RATableViewCell.h"

@implementation RecipesTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MultiLine"];
    
    if (cell == nil) {
        cell = [[RATableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MultiLine"];
    }
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    cell.detailTextLabel.text = [RARecipes descriptionAtIndex:indexPath.row];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Favorites";
}

// This didn't work, but I don't know why.
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    UILabel *title = [UILabel new];
//    title.backgroundColor = [UIColor redColor];
//    title.font = [UIFont fontWithName:@"AvenirNext-Bold" size:18];
//    title.text = @"Favorites";
//    
//    return title;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return 20.0;
//}

-(void)registerTableView:(UITableView *)tableView {
//    [tableView registerClass:[RATableViewCell class] forCellReuseIdentifier:@"MultiLine"];
}

@end
