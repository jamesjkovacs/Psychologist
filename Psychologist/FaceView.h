//
//  FaceView.h
//  Happiness
//
//  Created by James Kovacs on 6/7/11.
//  Copyright 2011 AmanoMcGann. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FaceView;

@protocol FaceViewDelegate
- (float)smileForFaceView:(FaceView *)requestor;
@end

@interface FaceView : UIView {
    id <FaceViewDelegate> delegate;    
}


@property (assign) id <FaceViewDelegate> delegate;

@end
