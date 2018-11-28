//// See http://iphonedevwiki.net/index.php/Logos
//
#import <UIKit/UIKit.h>
//
//@interface CustomViewController
//
//@property (nonatomic, copy) NSString* newProperty;
//
//+ (void)classMethod;
//
//- (NSString*)getMyName;
//
//- (void)newMethod:(NSString*) output;
//
//@end
//
//%hook CustomViewController
//
//+ (void)classMethod
//{
//    %log;
//
//    %orig;
//}
//
//%new
//-(void)newMethod:(NSString*) output{
//    NSLog(@"This is a new method : %@", output);
//}
//
//%new
//- (id)newProperty {
//    return objc_getAssociatedObject(self, @selector(newProperty));
//}
//
//%new
//- (void)setNewProperty:(id)value {
//    objc_setAssociatedObject(self, @selector(newProperty), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//- (NSString*)getMyName
//{
//    %log;
//
//    NSString* password = MSHookIvar<NSString*>(self,"_password");
//
//    NSLog(@"password:%@", password);
//
//    [%c(CustomViewController) classMethod];
//
//    [self newMethod:@"output"];
//
//    self.newProperty = @"newProperty";
//
//    NSLog(@"newProperty : %@", self.newProperty);
//
//    return %orig();
//}
//
//%end
#import <UIKit/UIKit.h>

%hook BaseMsgContentViewController

- (void)addMessageNode:(id)arg1 layout:(_Bool)arg2 addMoreMsg:(_Bool)arg3{
    %orig;
}


%end

%hook CMessageMgr
- (void)onNewSyncAddMessage:(id)arg1{

    %orig;
}


- (void)AsyncOnAddMsg:(id)arg1 MsgWrap:(id)arg2{
    NSLog(@"-------------%@------%@",[arg2 class],arg2);
   %orig;
}
%end



%hook NewMainFrameViewController
- (void)viewWillAppear:(_Bool)arg1{
    %orig;
    UITableView* lala = MSHookIvar<UITableView*>(self,"m_tableView");
    lala.backgroundColor = [UIColor redColor];
}
%end

%hook NewMainFrameCell
- (void)layoutSubviews{
    %orig;
    
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;


    UIView* lala = MSHookIvar<UIView*>(self,"m_itemView");
    lala.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
    
}
%end
