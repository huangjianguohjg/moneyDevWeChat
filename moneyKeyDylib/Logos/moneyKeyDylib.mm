#line 1 "/Volumes/APP/XcodeProject/moneyKey/moneyKeyDylib/Logos/moneyKeyDylib.xm"


#import <UIKit/UIKit.h>

























































#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CMessageMgr; @class NewMainFrameViewController; @class BaseMsgContentViewController; @class NewMainFrameCell; 
static void (*_logos_orig$_ungrouped$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$)(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentViewController* _LOGOS_SELF_CONST, SEL, id, _Bool, _Bool); static void _logos_method$_ungrouped$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentViewController* _LOGOS_SELF_CONST, SEL, id, _Bool, _Bool); static void (*_logos_orig$_ungrouped$CMessageMgr$onNewSyncAddMessage$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$CMessageMgr$onNewSyncAddMessage$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$NewMainFrameViewController$viewWillAppear$)(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$NewMainFrameViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void (*_logos_orig$_ungrouped$NewMainFrameCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL NewMainFrameCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewMainFrameCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NewMainFrameCell* _LOGOS_SELF_CONST, SEL); 

#line 63 "/Volumes/APP/XcodeProject/moneyKey/moneyKeyDylib/Logos/moneyKeyDylib.xm"


static void _logos_method$_ungrouped$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$(_LOGOS_SELF_TYPE_NORMAL BaseMsgContentViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2, _Bool arg3){
    _logos_orig$_ungrouped$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$(self, _cmd, arg1, arg2, arg3);
}





static void _logos_method$_ungrouped$CMessageMgr$onNewSyncAddMessage$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){

    _logos_orig$_ungrouped$CMessageMgr$onNewSyncAddMessage$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    NSLog(@"-------------%@------%@",[arg2 class],arg2);
   _logos_orig$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$(self, _cmd, arg1, arg2);
}





static void _logos_method$_ungrouped$NewMainFrameViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL NewMainFrameViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    _logos_orig$_ungrouped$NewMainFrameViewController$viewWillAppear$(self, _cmd, arg1);
    UITableView* lala = MSHookIvar<UITableView*>(self,"m_tableView");
    lala.backgroundColor = [UIColor redColor];
}



static void _logos_method$_ungrouped$NewMainFrameCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL NewMainFrameCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$NewMainFrameCell$layoutSubviews(self, _cmd);
    
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;


    UIView* lala = MSHookIvar<UIView*>(self,"m_itemView");
    lala.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
    
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BaseMsgContentViewController = objc_getClass("BaseMsgContentViewController"); MSHookMessageEx(_logos_class$_ungrouped$BaseMsgContentViewController, @selector(addMessageNode:layout:addMoreMsg:), (IMP)&_logos_method$_ungrouped$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$, (IMP*)&_logos_orig$_ungrouped$BaseMsgContentViewController$addMessageNode$layout$addMoreMsg$);Class _logos_class$_ungrouped$CMessageMgr = objc_getClass("CMessageMgr"); MSHookMessageEx(_logos_class$_ungrouped$CMessageMgr, @selector(onNewSyncAddMessage:), (IMP)&_logos_method$_ungrouped$CMessageMgr$onNewSyncAddMessage$, (IMP*)&_logos_orig$_ungrouped$CMessageMgr$onNewSyncAddMessage$);MSHookMessageEx(_logos_class$_ungrouped$CMessageMgr, @selector(AsyncOnAddMsg:MsgWrap:), (IMP)&_logos_method$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$, (IMP*)&_logos_orig$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$);Class _logos_class$_ungrouped$NewMainFrameViewController = objc_getClass("NewMainFrameViewController"); MSHookMessageEx(_logos_class$_ungrouped$NewMainFrameViewController, @selector(viewWillAppear:), (IMP)&_logos_method$_ungrouped$NewMainFrameViewController$viewWillAppear$, (IMP*)&_logos_orig$_ungrouped$NewMainFrameViewController$viewWillAppear$);Class _logos_class$_ungrouped$NewMainFrameCell = objc_getClass("NewMainFrameCell"); MSHookMessageEx(_logos_class$_ungrouped$NewMainFrameCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$NewMainFrameCell$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$NewMainFrameCell$layoutSubviews);} }
#line 109 "/Volumes/APP/XcodeProject/moneyKey/moneyKeyDylib/Logos/moneyKeyDylib.xm"
