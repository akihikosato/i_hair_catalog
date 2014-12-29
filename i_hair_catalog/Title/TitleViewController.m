//
//  TitleViewController.m
//  i_hair_catalog
//
//  Created by Akihiko Sato on 2014/12/30.
//  Copyright (c) 2014年 Akihiko Sato. All rights reserved.
//

#import "TitleViewController.h"

@interface TitleViewController ()

@end

@implementation TitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    float val = 4.0f;
    topBtnPositon = self.navigationController.navigationBar.frame.size.height + segment.frame.size.height + val;
    NSLog(@"%f",myScroll.frame.size.width);
    
    //[self createStyleBtn];
    
    
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
    view1.backgroundColor = [UIColor yellowColor];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 320, 320, 320)];
    view2.backgroundColor = [UIColor magentaColor];
 
    [myScroll addSubview:view1];
    [myScroll addSubview:view2];
    

    //self.automaticallyAdjustsScrollViewInsets = NO;
    myScroll.contentSize = CGSizeMake(myScroll.frame.size.width, 1000.0f);
    
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

- (void)createStyleBtn {
    
    for (int i = 0; i < 9; i++) {
        
        styleBtn[i] = [UIButton buttonWithType:UIButtonTypeCustom];
        styleBtn[i].frame = CGRectMake(0, topBtnPositon, 104, 130);
        styleBtn[i].backgroundColor = [UIColor lightGrayColor];
        styleBtn[i].tag = i;
        //styleBtn[i].center = CGPointMake([self btnPositionX:i], [self btnPositionY:i]);
        
        [styleBtn[i] addTarget:self
                        action:@selector(btnAction:)
              forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:styleBtn[i]];
        
        styleBtn[i].layer.cornerRadius = 7;
        styleBtn[i].clipsToBounds      = YES;
        
        styleBtn[i].layer.borderColor = [[UIColor lightGrayColor]CGColor];
        styleBtn[i].layer.borderWidth = 0.5f;
        
        // Set Image
        //[self setBtnImage:i];
    }
}

- (float)btnPositionX:(int)num {
    
    if (num % 3 == 0) { return 54.0f;  }
    if (num % 3 == 1) { return 160.0f; }
    else { return 320.0 - 54.0f; }
}

- (float)btnPositionY:(int)num {// 132
    
    if      (num < 3) { return 105.0f; }
    else if (num < 6) { return 238.0f; }
    else {              return 373.0f; }
}

- (void)btnAction:(UIButton*)sender {
}

@end
