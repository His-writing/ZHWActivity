//
//  ViewController1.m
//  ZHWActivity
//
//  Created by china on 15/12/2.
//  Copyright © 2015年 china. All rights reserved.
//

#import "ZHWViewController.h"
#import "ZHWActivity.h"

@interface ZHWViewController ()

@end

@implementation ZHWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    UIBarButtonItem *backItem=[[UIBarButtonItem alloc]initWithImage: style:UIBarButtonItemStylePlain target:self action:@selector(backPressed:)];
    
    UIBarButtonItem *backItem=[[UIBarButtonItem alloc]initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(backPressed:)];
    //    UIBarButtonItem *backItem=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backPressed:)];
    self.navigationItem.leftBarButtonItem=backItem;

    
    
}

-(void)backPressed:(id)sender{

    
    [self stopActivityclick:nil];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)startClick1:(id)sender{
    
    
    if (![[ZHWActivity getActivity]isAnimating]) {
        [[ZHWActivity getActivity]startActivity:self.view AnimatingValue:2 bufferWidth:50 bufferHeight:50 activityConstraint:YES];
    }
    NSLog(@"no");
    
}

- (IBAction)startClick:(id)sender {
    
    
    if (![[ZHWActivity getActivity]isAnimating]) {
        [[ZHWActivity getActivity]startActivity:self.view AnimatingValue:2 bufferWidth:50 bufferHeight:50 activityConstraint:NO];
    }
    
//    [self performSelector:@selector(stopActivityclick:) withObject:nil afterDelay:5.0f];
    

    
    NSLog(@"yes");
}



- (IBAction)stopActivityclick:(id)sender {
    
    [[ZHWActivity getActivity]stopAnimating];
    NSLog(@"stop");

    
}
@end
