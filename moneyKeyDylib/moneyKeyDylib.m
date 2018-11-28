//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  moneyKeyDylib.m
//  moneyKeyDylib
//
//  Created by developer on 2018/11/20.
//  Copyright (c) 2018 developer. All rights reserved.
//

#import "moneyKeyDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import <MDCycriptManager.h>

CHDeclareClass(WCDeviceStepObject); // declare class

CHOptimizedMethod(0, self,  unsigned int, WCDeviceStepObject, m7StepCount) // hook method (with no arguments and no return value)
{
    // write code here ...
    
    return 30000; //随意改数
}



CHConstructor // code block that runs immediately upon load
{
    @autoreleasepool
    {
        CHLoadLateClass(WCDeviceStepObject);
        CHHook(0, WCDeviceStepObject,m7StepCount);
    }
}

@interface CMessageWrap
@property (nonatomic, strong) NSString* m_nsContent;
@property (nonatomic, assign) NSInteger m_uiMessageType;
@property(retain, nonatomic) NSString *m_nsFromUsr;
@property(retain, nonatomic) NSString *m_nsDisplayName;
@property(retain, nonatomic) NSString *m_nsRealChatUsr;
@property(retain, nonatomic) NSString *m_nsAtUserList;
@property(retain, nonatomic) NSString *m_nsPattern;
@property(retain, nonatomic) NSString *m_nsMsgSource;
@property(retain, nonatomic) NSString *m_fromChatUserName;
@property(retain, nonatomic) NSString *m_nsSourceDisplayname;
@property(retain, nonatomic) NSString *m_nsSourceUsername;

@end
CHDeclareClass(CMessageMgr)
CHMethod2(void, CMessageMgr, AsyncOnAddMsg, NSString*, msg, MsgWrap, CMessageWrap*, msgWrap){
    NSString* content = [msgWrap m_nsContent];
    NSString* DisplayName = [msgWrap m_nsDisplayName];
    NSString *RealChatUsr = [msgWrap m_nsFromUsr];
    
//    NSLog(@"******************%@",[CMessageWrap getUserNameFromMsgWrap:msgWrap]);
    NSLog(@"------%@",msgWrap);
    if([msgWrap m_uiMessageType] == 1){
        NSLog(@"收到消息: %@", content);
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 170, 80, 160, 30)];
        lab.textColor = [UIColor whiteColor];
        lab.backgroundColor = [UIColor darkGrayColor];
        lab.layer.cornerRadius = 10;
        lab.font = [UIFont systemFontOfSize:8];
        lab.clipsToBounds = YES;
        lab.textAlignment = NSTextAlignmentCenter;
        lab.alpha = 0.8;
        lab.text = [NSString stringWithFormat:@"%@:%@",RealChatUsr,content];
        [[UIApplication sharedApplication].keyWindow addSubview:lab];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [lab removeFromSuperview];
        });
    }
    CHSuper2(CMessageMgr, AsyncOnAddMsg, msg, MsgWrap, msgWrap);
}
CHConstructor{
    CHLoadLateClass(CMessageMgr);
    CHClassHook2(CMessageMgr, AsyncOnAddMsg, MsgWrap);
    
}


