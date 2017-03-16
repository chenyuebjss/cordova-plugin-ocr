//
//  RealTimeOCR.m
//  myApp
//
//  Created by Yue Chen on 15/03/2017.
//
//

#import "RealTimeOCR.h"

@import RealTimeOCRiOS;

@implementation RealTimeOCR

- (void) showCameraViewController: (CDVInvokedUrlCommand *) command
{
    NSString *callBackID = command.callbackId;
    
    OcrCaptureViewController *ocrController = [[OcrCaptureViewController alloc] initWithNibName:@"" bundle:nil];
    ocrController.regex = @"\\d{12}";
    ocrController.completionBlock = ^(NSString *input) {
        CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:input];
        [self.commandDelegate sendPluginResult:result callbackId:callBackID];
    };
    
    [self.viewController presentViewController:ocrController animated:YES completion:nil];
}

@end
