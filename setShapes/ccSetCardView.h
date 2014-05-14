//
//  ccSetCardView.h
//  setShapes
//
//  Created by Cox, Chip on 5/11/14.
//  Copyright (c) 2014 merck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ccSetCardView : UIView {
    CGPatternRef _patterns;
    int _currentPattern;
    int patters_type;
}
@property (nonatomic,strong) UIColor* cardColor;
@property (nonatomic) NSInteger cardQuantity;
@property (nonatomic) NSInteger cardShape;
@property (nonatomic) NSInteger cardFill;


@end
