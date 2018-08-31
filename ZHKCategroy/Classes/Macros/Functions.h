//
//  Functions.h
//  WeiQianDai
//
//  Created by Apple-T on 16/6/30.
//  Copyright © 2016年 Apple-T. All rights reserved.
//


// - (CGFloat)scaleX
#define FUN_scaleX  - (CGFloat)scaleX {\
                        return SCREEN_BOUNDS.size.width / 375.0;\
                    }

// - (CGFloat)scaleY
#define FUN_scaleY  - (CGFloat)scaleY {\
                        return (SCREEN_BOUNDS.size.height - 64) / (667.0 - 64);\
                    }

// - (void)setBackBarButton
#define FUN_setBackBarButton    - (void)setBackBarButton {\
                                    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back_item_icon"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];\
                                    self.navigationItem.leftBarButtonItems = @[backItem];\
                                }

// back
#define FUN_back    - (void)back {\
                        UIViewController *vc = [self.navigationController.viewControllers firstObject];\
                        vc.hidesBottomBarWhenPushed = NO;\
                        [self.navigationController popViewControllerAnimated:YES];\
                    }

// back normal
#define FUN_back_normal     - (void)back {\
                                [self.navigationController popViewControllerAnimated:YES];\
                            }

#define FUN_MAKE_LABEL - (UILabel *)makeLabelWithFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {\
                                UILabel *lable = [UILabel new];\
                                lable.font = [UIFont systemFontOfSize:fontSize];\
                                lable.textColor = textColor;\
                                return lable;\
                        }
