//
//  CVWrapper.m
//  opencv-test
//
//  Created by Janusz on 10/02/2017.
//  Copyright © 2017 Janusz. All rights reserved.
//

#import "CVWrapper.h"
#import <opencv2/opencv.hpp>
#import <opencv2/imgcodecs/ios.h>

@implementation CVWrapper

+(UIImage*)convertImage:(UIImage *)inputImage original:(UIImage*)originalImage {
  cv::Mat imageMat;
  UIImageToMat(inputImage,imageMat);
  
  if (imageMat.channels() == 1)
    return originalImage;

  cv::Mat grayMat;
  cv::cvtColor(imageMat,grayMat,CV_BGR2GRAY);
  
  
  return MatToUIImage(grayMat);
}
@end
