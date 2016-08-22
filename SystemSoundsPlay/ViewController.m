//
//  ViewController.m
//  SystemSoundsPlay
//
//  Created by andehang on 16/6/27.
//  Copyright © 2016年 andehang. All rights reserved.
//

#import "ViewController.h"
#import "JLBAudioTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *soundIDTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)play:(UIButton *)sender {
    [self.view endEditing:YES];
    UInt32 soundID = (UInt32)[self.soundIDTextField.text integerValue];
    NSLog(@"%zd",soundID);
    [JLBAudioTool playSystemAudioWithSoundID:soundID];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
