//
//  ZHKViewController.m
//  ZHKCategroy
//
//  Created by 389914070@qq.com on 08/06/2018.
//  Copyright (c) 2018 389914070@qq.com. All rights reserved.
//

#import "ZHKViewController.h"
#import "NSURL+Components.h"

@interface ZHKViewController ()

@end

@implementation ZHKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // URL
    NSLog(@"params = %@", [[NSURL URLWithString:@"http://www.baidu.com?key=search&id=111"] parameters]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
