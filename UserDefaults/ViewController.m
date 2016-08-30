//
//  ViewController.m
//  UserDefaults
//
//  Created by Felix-Madhuri on 25/08/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    
    
    NSLog(@"%@   %li",[user objectForKey:@"name"],(long)[user integerForKey:@"score"]);
    
    
    [user setValue:@"ABCD" forKey:@"name"];
    [user setInteger:200 forKey:@"score"];
    
    
    [user synchronize];
    
    
      NSLog(@"%@   %li",[user objectForKey:@"name"],(long)[user integerForKey:@"score"]);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
