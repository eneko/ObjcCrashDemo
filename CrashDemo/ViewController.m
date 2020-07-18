//
//  ViewController.m
//  CrashDemo
//
//  Created by Eneko Alonso on 7/17/20.
//

#import "ViewController.h"
#import "CrashDemo-Swift.h"

@interface ObjcModel ()
@property (nonatomic) NSDate *date;
@end

@implementation ObjcModel
@end

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)nilCrash
{
    // The following code crashes.
    // Xcode shows a warning at compile time.
    [MyClass.new crashNowWithDate:nil];
}

- (IBAction)analizerCrash
{
    // The following code crashes, as `date` is `nil`.
    // The static analyzer properly identifies this issue.
    NSDate *date;
    [MyClass.new crashNowWithDate:date];
}

- (IBAction)objcCrash
{
    // ObjcModel is a class, with an optional `date` property
    // The following code crashes, as `model.date` is `nil`.
    // The static analyzer fails to identify this issue.
    ObjcModel *objcModel = ObjcModel.new;
    [MyClass.new crashNowWithDate:objcModel.date];
}

- (IBAction)swiftCrash
{
    // SwiftModel is a Swift class, with an optional `date` property
    // The following code crashes, as `model.date` is `nil`.
    // The static analyzer fails to identify this issue.
    SwiftModel *swiftModel = SwiftModel.new;
    [MyClass.new crashNowWithDate:swiftModel.date];
}

@end
