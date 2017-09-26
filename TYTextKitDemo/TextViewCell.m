//
//  TextViewCell.m
//  TYTextKitDemo
//
//  Created by tany on 2017/9/25.
//  Copyright © 2017年 tany. All rights reserved.
//

#import "TextViewCell.h"

@interface TextViewCell ()

@property (nonatomic, weak) TYLabel *label;
@property (nonatomic, weak) UILabel *uilabel;

@end

@implementation TextViewCell

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addLabel];
        [self addUILabel];
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self addLabel];
        [self addUILabel];
    }
    return self;
}

- (void)addLabel {
    TYLabel *label = [[TYLabel alloc]init];
    [self.contentView addSubview:label];
    _label = label;
}
- (void)addUILabel {
    UILabel *label = [[UILabel alloc]init];
    label.font = [UIFont systemFontOfSize:8];
    label.numberOfLines = 0;
    [self.contentView addSubview:label];
    _uilabel = label;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _label.frame = self.bounds;
    _uilabel.frame = self.bounds;
}

@end