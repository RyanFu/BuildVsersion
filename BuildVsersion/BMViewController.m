//
//  BMViewController.m
//  BuildVsersion
//
//  Created by skyming on 9/18/14.
//  Copyright (c) 2014 Sensoro. All rights reserved.
//

#import "BMViewController.h"

#define F(string, args...)                  [NSString stringWithFormat:string, args]

@interface BMViewController ()

@property (weak, nonatomic) IBOutlet UILabel *version;
@end

@implementation BMViewController



//1.0.0
- (NSString *)bundleShortVersionString{
    static NSString *key = @"CFBundleShortVersionString";
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:key];
}

//2938
- (NSString *)bundleBuildVersionString{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:(NSString *)kCFBundleVersionKey];
}

//3.0.0(2938)
- (NSString *)bundleFullVersionString{
    NSString *version = [self bundleShortVersionString];
    NSString *build = [self  bundleBuildVersionString];
    
    return F(@"%@(%@)", version, build);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.version.text = F(@"version %@",[self bundleFullVersionString]);
    id value =  [[NSBundle mainBundle] infoDictionary];
    NSString *version = [value objectForKey:(NSString *)kCFBundleVersionKey];
    NSString *build = [value objectForKey:@"CFBundleShortVersionString"];
    NSLog(@"version: %@ build: %@",version,build);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
