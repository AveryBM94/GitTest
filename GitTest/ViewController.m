//
//  ViewController.m
//  GitTest
//
//  Created by Avery Barrantes on 2/17/17.
//  Copyright © 2017 Avery Barrantes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mainTimeLabel.text =@"";
    //will update updateClock every second with the current time.
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateClock) userInfo:nil repeats:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)updateClock {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.mainTimeLabel.text = [formatter stringFromDate:[NSDate date]];
    
}

@end
