//
//  ViewController.m
//  CustomMenuItem
//
//  Created by Siddhesh Mahadeshwar on 14/04/16.
//  Copyright © 2016 Siddhesh Mahadeshwar. All rights reserved.
//

#import "ViewController.h"
#import "NumberTextView.h"

@interface ViewController ()<NumberTextViewDelegate>
@property (weak, nonatomic) IBOutlet NumberTextView *customTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customTextView.NumberDelegate = self;
    [self.customTextView becomeFirstResponder];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) pastePerformed
{
    
}
-(void) selectAllPerformed
{
    
}
-(void) copyNumberPerformed
{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = [NSString stringWithFormat:@"%@",self.customTextView.text];

    NSLog(@"Number copied to clip board");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
