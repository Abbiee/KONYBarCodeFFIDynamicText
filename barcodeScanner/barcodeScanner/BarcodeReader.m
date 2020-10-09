//
//  BarcodeReader.m
//  QRCodeReader
//


#import "BarcodeReader.h"

@implementation BarcodeReader

+(id)init
{
    
    static BarcodeReader *reader = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        reader = [[self alloc] init];
    });
    return reader;
 
}

//-(oneway void) release
//{
//}
//
-(void)startCamera:(CallBack*)callBack titleName:(NSString*)name
{
  self.callbackObj = callBack;
  
    [self presentView:name];
    NSLog(@"String name%@", name);
}

-(void)presentView:(NSString*)labelName
{
  BarcodeScannerVC * controller = [[BarcodeScannerVC alloc] initWithNibName:@"BarcodeScannerVC" bundle:[NSBundle mainBundle]];
  controller.scanDelegate = self;
  controller.scannerLabelName = labelName;
  //[self presentViewController:controller animated:YES completion:nil];
  UIWindow * currentwindow = [[UIApplication sharedApplication] keyWindow];
  [currentwindow.rootViewController presentViewController:controller animated:NO completion:nil];
}

-(void) scanResult:(NSString*) scanData
{
  NSArray * result = [[NSArray alloc] initWithObjects:scanData, nil];
 // executeClosure(self.callbackObj, result, NO);
}

@end
