//
//  TitleViewController.h
//  i_hair_catalog
//
//  Created by Akihiko Sato on 2014/12/30.
//  Copyright (c) 2014年 Akihiko Sato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleViewController : UIViewController
{
    IBOutlet UIScrollView *myScroll;
    IBOutlet UISegmentedControl *segment;
    
    UIButton *styleBtn[9];
    float topBtnPositon;
}
@end
