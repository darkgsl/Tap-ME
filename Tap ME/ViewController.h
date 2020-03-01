//
//  ViewController.h
//  Tap ME
//
//  Created by Sergey Gomolko on 29/2/20.
//  Copyright © 2020 Sergey Gomolko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timeLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}
    - (IBAction)buttonPressed;
@end

