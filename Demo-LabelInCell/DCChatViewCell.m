//
//  DCChatViewCell.m
//  Demo-集成环信
//
//  Created by DanaChu on 16/3/16.
//  Copyright © 2016年 DanaChu. All rights reserved.
//

#import "DCChatViewCell.h"

@interface DCChatViewCell ()
@property (weak, nonatomic) IBOutlet UIButton *iconbutton;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@end

@implementation DCChatViewCell

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}




- (void)setMessage:(NSString *)message
{
    _message = message;

    self.messageLabel.text = message;
}


/*

-(void)showVoice{
    
    // 1.拼接富文本
    BOOL isSender = [self.reuseIdentifier isEqualToString:DCChatSenderCellID];
    
    // 获取语音的消息体
    EMVoiceMessageBody *voiceBody = self.message.messageBodies[0];
    // 时间
    NSInteger duration = voiceBody.duration;
    
    // 创建一个可变 "语音富文本"
    NSMutableAttributedString *voiceAtt = [[NSMutableAttributedString alloc] init];
    
    // 创建时间富文本
    NSAttributedString *timeAttr = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%ld'",duration]];
    
    // 图片富文本
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.bounds = CGRectMake(0,-7, 25, 25);
    NSAttributedString *imgAtt = [NSAttributedString attributedStringWithAttachment:attachment];
    
    // 空格富文本
    NSAttributedString *emptyAtt = [[NSAttributedString alloc] initWithString:[self emptyStringWithTime:duration]];
    
    if (isSender) {
        // 1.1 发送方 = 时间 + 图片
        // 拼接时间
        [voiceAtt appendAttributedString:timeAttr];
        
        [voiceAtt appendAttributedString:emptyAtt];
        // 拼接图片
        NSString *imgName = @"chat_sender_audio_playing_full";
        attachment.image = [UIImage imageNamed:imgName];
        [voiceAtt appendAttributedString:imgAtt];
        
    }else{
        // 1.2 接收方 = 图片 + 时间
        // 拼接图片
        NSString *imgName = @"chat_receiver_audio_playing_full";
        attachment.image = [UIImage imageNamed:imgName];
        [voiceAtt appendAttributedString:imgAtt];
        
        [voiceAtt appendAttributedString:emptyAtt];
        
        // 拼接时间
        [voiceAtt appendAttributedString:timeAttr];
        
    }
    
    
    // 2.设置Label富文本属性
    self.messageLabel.attributedText = voiceAtt;
    
}
 
 */

- (CGFloat)cellHeight
{
    [self layoutIfNeeded];
    return self.messageLabel.bounds.size.height + 34.f;
}

@end
