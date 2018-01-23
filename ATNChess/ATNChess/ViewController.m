//
//  ViewController.m
//  ATNChess
//
//  Created by 于洪志 on 2018/1/19.
//  Copyright © 2018年 于洪志. All rights reserved.
//

#import "ViewController.h"
#import "ATNChessPieceView.h"
#import "Masonry.h"

@interface ViewController ()
/**
 <#注释#>
 */
@property (nonatomic,strong) ATNChessPieceView *chessView;


@end

@implementation ViewController
-(ATNChessPieceView *)chessView{
    if (!_chessView) {
        _chessView = [[ATNChessPieceView alloc]init];
        _chessView.backgroundColor = [UIColor redColor];
        _chessView.frame = CGRectMake(10, 10, 30, 30);
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(chessClick)];
        
        [_chessView addGestureRecognizer:tapGesturRecognizer];
        _chessView.x = 10;
        _chessView.y = 10;
    }
    return _chessView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view addSubview:self.chessView];
    [self updateViewConstraints];
//    [self.chessView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.equalTo(@30);
//        make.width.equalTo(@30);
//        make.centerX.mas_equalTo(self.chessView.x);
//        make.centerY.mas_equalTo(self.chessView.y);
//    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)chessClick{
    NSLog(@"nnn");
    return;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    self.chessView.x = point.x;
    self.chessView.y = point.y;
    // tell constraints they need updating
//    [self.view setNeedsUpdateConstraints];
//
//    // update constraints now so we can animate the change
//    [self.view updateConstraintsIfNeeded];
//
//    [UIView animateWithDuration:0.4 animations:^{
//        [self.view layoutIfNeeded];
//    }];
    [self updateViewConstraints];
    
}
-(void)updateViewConstraints{
//    [self.chessView mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.height.equalTo(@30);
//        make.width.equalTo(@30);
//        make.centerX.mas_equalTo(self.chessView.x);
//        make.centerY.mas_equalTo(self.chessView.y);
//    }];
    
    self.chessView.frame = CGRectMake(self.chessView.x-self.chessView.frame.size.width/2, self.chessView.y-self.chessView.frame.size.height/2, 30, 30);
    [super updateViewConstraints];
}
@end
