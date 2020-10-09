//
//  ViewController.m
//  barcodeScanner
//
//  Created by Abbie on 29/02/20.
//  Copyright © 2020 Abbie. All rights reserved.
//

#import "ViewController.h"
#import "BarcodeScannerVC.h"
#import "BarcodeReader.h"

@interface ViewController ()
{
    BarcodeReader *barCodeReader;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // [self keyWindow];
}
- (IBAction)startCamera:(id)sender {
//    BarcodeScannerVC * controller = [[BarcodeScannerVC alloc] initWithNibName:@"BarcodeScannerVC" bundle:[NSBundle mainBundle]];
//
//    controller.modalPresentationStyle = UIModalPresentationFullScreen;
  //  [self presentViewController:controller animated:YES completion:nil];
//     UIWindow * currentwindow = [[UIApplication sharedApplication] keyWindow];
//     [[self keyWindow].rootViewController presentViewController:controller animated:YES completion:nil];
 //   [self.keyw]
//    dispatch_async(dispatch_get_main_queue(), ^{
//        // Call UI related operations
//        [KonyUIContext onCurrentFormControllerPresentModalViewController:webview animated:YES];
   // });
    
    barCodeReader = [BarcodeReader init];
    [barCodeReader presentView:@"Point the Camera to a QR Code generated under QR Cash option from SBI ATM machine. "];
}

- (UIWindow*)keyWindow
{
    UIWindow        *foundWindow = nil;
    NSArray         *windows = [[UIApplication sharedApplication]windows];
    for (UIWindow   *window in windows) {
        if (window.isKeyWindow) {
            foundWindow = window;
            break;
        }
    }
    return foundWindow;
}

@end
