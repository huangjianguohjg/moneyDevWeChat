//// See http://iphonedevwiki.net/index.php/Logos
//
//#import <UIKit/UIKit.h>
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
%end
