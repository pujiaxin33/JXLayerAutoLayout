//
//  ViewController.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/4.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "ViewController.h"
#import "TraditionViewController.h"
#import "CustomLabelViewController.h"
#import "CustomViewViewController.h"
#import "LayoutSubviewsCallbackViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            TraditionViewController *vc = [[TraditionViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            CustomLabelViewController *vc = [[CustomLabelViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2:
        {
            CustomViewViewController *vc = [[CustomViewViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 3:
        {
            LayoutSubviewsCallbackViewController *vc = [[LayoutSubviewsCallbackViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        default:
            break;
    }
}

@end
