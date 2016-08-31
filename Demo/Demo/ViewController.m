//
//  ViewController.m
//  Demo
//
//  Created by Pan on 16/8/31.
//  Copyright © 2016年 shengpan. All rights reserved.
//

#import "ViewController.h"
#import "PSWeakProxy.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // use PSWeakProxy to break reatin cycle: self -> timer -> self;
    
    PSWeakProxy *weakSelf = [[PSWeakProxy alloc] initWithObject:self];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                  target:weakSelf
                                                selector:@selector(tickTock:)
                                                userInfo:[NSDate date]
                                                 repeats:YES];
    [self.timer setFireDate: [NSDate distantPast]];
}

- (void)tickTock:(NSTimer *)sender
{
    
}

@end
