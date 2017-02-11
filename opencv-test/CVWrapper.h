//
//  CVWrapper.h
//  opencv-test
//
//  Created by Janusz on 10/02/2017.
//  Copyright © 2017 Janusz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CVWrapper : NSObject

+(UIImage*)convertImage:(UIImage*)inputImage original:(UIImage*)originalImage;

@end
