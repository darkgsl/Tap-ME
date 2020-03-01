//
//  ViewController.m
//  Tap ME
//
//  Created by Sergey Gomolko on 29/2/20.
//  Copyright © 2020 Sergey Gomolko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void)setupGame;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGame];
}

- (void)buttonPressed{
    count += 1;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score: %li",count];
    //timeLabel.text = @"14:00";
    NSLog(@":%li", count);
    
}
- (void)setupGame {
    seconds = 5;
    count = 0;
    
    timeLabel.text = [NSString stringWithFormat:@"Time: %li", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score: %li", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
}
- (void)subtractTime {
    seconds -= 1;
    timeLabel.text = [NSString stringWithFormat:@"Time: %li", seconds];
    if (seconds == 0) {
        [timer invalidate];
        
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Time is up!" message:[NSString stringWithFormat:@"You scored %li points", count] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* playAgain = [UIAlertAction actionWithTitle:@"Play Again" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * _Nonnull action) {
            [self setupGame];
        }];
        [alert addAction:playAgain];
        [self presentViewController:alert animated:YES completion:nil];
    }
}



@end
