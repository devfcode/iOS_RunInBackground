//
//  ViewController.m
//  Background
//
//  Created by Dio Brand on 2023/3/31.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSTimer *timer;
@property(nonatomic,assign)int num;
@property (weak, nonatomic) IBOutlet UILabel *show;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
    // 启动定时器
    [self.timer fire];
}

-(void)subtractTime {
    NSString *tip = [NSString stringWithFormat:@"--------------> 循环运行 第 %d 次", _num++];
    NSLog(@"%@",tip);
    [self.show setText:tip];
}

@end
