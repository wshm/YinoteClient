//
//  YIMNoteAttribute.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMNoteAttribute.h"

@interface YIMNoteAttribute()
@property(nonatomic,assign) BOOL altitudeSet;
@property(nonatomic,assign) BOOL authorSet;
@property(nonatomic,assign) BOOL sourceSet;
@property(nonatomic,assign) BOOL sourceURLSet;
@property(nonatomic,assign) BOOL sourceApplicationSet;
@property(nonatomic,assign) BOOL contentClassSet;
@property(nonatomic,assign) BOOL lastEditedBySet;
@property(nonatomic,assign) BOOL placeNameSet;
@property(nonatomic,assign) BOOL latitudeSet;
@property(nonatomic,assign) BOOL longitudeSet;
@property(nonatomic,assign) BOOL shareDateSet;
@property(nonatomic,assign) BOOL applicationDataSet;
@property(nonatomic,assign) BOOL classificationsSet;
@end

@implementation YIMNoteAttribute
- (id)initWithJson:(NSDictionary*)json {
    self = [super init];
    if(self){
        @try {
            if([json objectForKey:@"latitude"] != [NSNull null]){
                self.latitude = [[json objectForKey:@"latitude"] doubleValue];
            }
            if([json objectForKey:@"longitude"] != [NSNull null]){
                self.longitude = [[json objectForKey:@"longitude"] doubleValue];
            }
            if([json objectForKey:@"altitude"] != [NSNull null]){
                self.altitude = [[json objectForKey:@"altitude"] doubleValue];
            }
            if([json objectForKey:@"source"] != [NSNull null]){
                self.source = [json objectForKey:@"source"];
            }
            if([json objectForKey:@"sourceURL"] != [NSNull null]){
                self.sourceURL = [json objectForKey:@"sourceURL"];
            }
            if([json objectForKey:@"sourceApplication"] != [NSNull null]){
                self.sourceApplication = [json objectForKey:@"sourceApplication"];
            }
            if([json objectForKey:@"shareDate"] != [NSNull null]){
                self.shareDate = [[json objectForKey:@"shareDate"] longValue];
            }
            if([json objectForKey:@"placeName"] != [NSNull null]){
                self.placeName = [json objectForKey:@"placeName"];
            }
            if([json objectForKey:@"contentClass"] != [NSNull null]){
                self.contentClass = [json objectForKey:@"contentClass"];
            }
            if([json objectForKey:@"applicationData"] != [NSNull null]){
                self.applicationData = [json objectForKey:@"applicationData"];
            }
            if([json objectForKey:@"lastEditedBy"] != [NSNull null]){
                self.lastEditedBy = [json objectForKey:@"lastEditedBy"];
            }
            if([json objectForKey:@"classifications"] != [NSNull null]){
                self.classifications = [json objectForKey:@"classifications"];
            }
        }
        @catch (NSException *exception) {
            NSLog(@"%s,%@",__func__,exception);
            return nil;
        }
        
    }
    return self;
}
-(NSMutableDictionary*)toJson{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
    
    if (self.latitudeSet && self.latitude > 0){
        [dic setObject:[NSNumber numberWithDouble:self.latitude]  forKey:@"latitude"];
//        [dic setObject:@(self.latitude) forKey:@"latitude"];
    }
    if (self.longitudeSet && self.longitude > 0){
        [dic setObject:[NSNumber numberWithDouble:self.longitude]  forKey:@"longitude"];
    }
    if (self.placeNameSet){
        [dic setObject:self.placeName forKey:@"placeName"];
    }
    return dic;
}

- (id)genReqModel {
    NSMutableDictionary *param = [@{} mutableCopy];
    if (self.latitudeSet) {
        [param setObject:@(self.latitude) forKey:@"latitude"];
    }
    if (self.longitudeSet) {
        [param setObject:@(self.longitude) forKey:@"longitude"];
    }
    if (self.altitudeSet) {
        [param setObject:@(self.altitude) forKey:@"altitude"];
    }
    if (self.sourceSet) {
        [param setObject:self.source forKey:@"source"];
    }
    if (self.authorSet) {
        [param setObject:self.author forKey:@"author"];
    }
    if (self.sourceURLSet) {
        [param setObject:self.sourceURL forKey:@"sourceURL"];
    }
    if (self.applicationDataSet) {
        [param setObject:self.applicationData forKey:@"sourceApplication"];
    }
    if (self.placeNameSet) {
        [param setObject:self.placeName forKey:@"placeName"];
    }
    if (param.count > 0) {
        return param;
    } else {
        return nil;
    }
}

-(void) setAltitude:(long)altitude{
    _altitude = altitude;
    _altitudeSet = true;
}
-(void) setApplicationData:(NSDictionary *)applicationData{
    _applicationData = applicationData;
    _applicationDataSet  = true;
}
-(void) setAuthor:(NSString *)author{
    _author = author;
    _authorSet = true;
}
-(void) setClassifications:(NSDictionary *)classifications{
    _classifications = classifications;
    _classificationsSet = true;
}
-(void) setContentClass:(NSString *)contentClass{
    _contentClass = contentClass;
    _contentClassSet = true;
}
-(void) setLastEditedBy:(NSString *)lastEditedBy{
    _lastEditedBy = lastEditedBy;
    _lastEditedBySet = true;
}
-(void) setLatitude:(double)latitude{
    _latitude = latitude;
    _latitudeSet = true;
}
-(void) setLongitude:(double)longitude{
    _longitude = longitude;
    _longitudeSet = true;
}
-(void) setPlaceName:(NSString *)placeName{
    _placeName = placeName;
    _placeNameSet = true;
}
-(void) setShareDate:(long)shareDate{
    _shareDate = shareDate;
    _shareDateSet = true;
}
-(void) setSource:(NSString *)source{
    _source = source;
    _sourceSet = true;
}
-(void) setSourceApplication:(NSString *)sourceApplication{
    _sourceApplication = sourceApplication;
    _sourceApplicationSet = true;
}
-(void) setSourceURL:(NSString *)sourceURL{
    _sourceURL = sourceURL;
    _sourceURLSet = true;
}
@end
