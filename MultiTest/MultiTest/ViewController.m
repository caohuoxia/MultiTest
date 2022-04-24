//
//  ViewController.m
//  MultiTest
//
//  Created by caohx on 2022/4/22.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"===%@",Test);
    NSLog(@"BundleIdentifier: %@", [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleIdentifier"]);
    [self displayEnvironment];
}

- (void)displayEnvironment {
    UILabel *lb = [[UILabel alloc]init];
    lb.numberOfLines =2;
    lb.text = [NSString stringWithFormat:@"环境：%@\nBundleId：%@",Test,[[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleIdentifier"]];
    [self.view addSubview:lb];
    [lb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.equalTo(@(100));
    }];
}
@end
