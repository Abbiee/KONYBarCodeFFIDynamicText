//
//  BarcodeReader.h
//  QRCodeReader
//


#import <Foundation/Foundation.h>
#import "BarcodeScannerVC.h"
//#import "lglobals.h"

@interface BarcodeReader : UIViewController<BarcodeScannerDelegate>

//@property (nonatomic, retain) CallBack *callbackObj;

+(id)init;
-(void)startCamera:(CallBack*)callBack titleName:(NSString*)name;
-(void)presentView:(NSString*)labelName;

@end
