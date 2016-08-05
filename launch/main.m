//
//  main.m
//  launch
//
//  Created by TERRY on 16/5/6.
//  Copyright © 2016年 huangxun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"start launch");
        NSWorkspace *workspace = [NSWorkspace sharedWorkspace];
        NSError *error = nil;
        NSDictionary *dic = [NSDictionary dictionary];
        NSString *appPath = [NSString stringWithFormat:@"%@", @"/Applications/AliEntSafe.app"];
        [workspace launchApplicationAtURL:[NSURL fileURLWithPath:appPath]
                                  options:NSWorkspaceLaunchDefault
                            configuration:dic
                                    error:&error];
        
        NSLog(@"%@", error.description);
    }
    
    return 0;
}
