//
//  ViewController.m
//  PassDataWithDelegate
//
//  Created by LFC on 16/8/9.
//  Copyright © 2016年 LFC. All rights reserved.
//


//后一个页面delegate属性，跳转时实现delegate方法回传赋值给前一个页面的组建；


//block传值  将一个函数看成了一个对象，后一个页面有一个block对象，prepareforsegue时获取后一个页面的viewcontroller，并且给其block对象指定具体block对象，当后一个页面调用了本身的对象block是回传给前一个页面。



#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)userDidEnterName:(NSString *)info{
    self.nameLabel.text = info;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController* vc = segue.destinationViewController;
    vc.delegate = self;
    
    vc.returnValueBlock = ^(NSString* text){
        self.nameLabel.text = text;
    };
    
}

@end
