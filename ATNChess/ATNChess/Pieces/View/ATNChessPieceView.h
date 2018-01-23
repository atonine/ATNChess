//
//  ATNChessPieceView.h
//  ATNChess
//
//  Created by 于洪志 on 2018/1/19.
//  Copyright © 2018年 于洪志. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ATNChessPieceView : UIView

/**
 判断棋子的选中状态
 */
@property (nonatomic,assign) BOOL isSeleted;
/**
 棋子的位置
 */
@property (nonatomic,assign) CGPoint location;

/**
 x
 */
@property (nonatomic,assign) CGFloat x;

/**
 y
 */
@property (nonatomic,assign) CGFloat y;
@end
