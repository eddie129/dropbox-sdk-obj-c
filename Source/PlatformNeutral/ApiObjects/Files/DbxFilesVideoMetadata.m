///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesDimensions.h"
#import "DbxFilesGpsCoordinates.h"
#import "DbxFilesMediaMetadata.h"
#import "DbxFilesVideoMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesVideoMetadata 

- (instancetype)initWithDimensions:(DbxFilesDimensions *)dimensions location:(DbxFilesGpsCoordinates *)location timeTaken:(NSDate *)timeTaken duration:(NSNumber *)duration {

    self = [super initWithDimensions:dimensions location:location timeTaken:timeTaken];
    if (self != nil) {
        _duration = duration;
    }
    return self;
}

- (instancetype)init {
    return [self initWithDimensions:nil location:nil timeTaken:nil duration:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesVideoMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesVideoMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesVideoMetadataSerializer serialize:self] description];
}

@end


@implementation DbxFilesVideoMetadataSerializer 

+ (NSDictionary *)serialize:(DbxFilesVideoMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if (valueObj.dimensions) {
        jsonDict[@"dimensions"] = [DbxFilesDimensionsSerializer serialize:valueObj.dimensions];
    }
    if (valueObj.location) {
        jsonDict[@"location"] = [DbxFilesGpsCoordinatesSerializer serialize:valueObj.location];
    }
    if (valueObj.timeTaken) {
        jsonDict[@"time_taken"] = [DbxNSDateSerializer serialize:valueObj.timeTaken dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    if (valueObj.duration) {
        jsonDict[@"duration"] = [DbxNSNumberSerializer serialize:valueObj.duration];
    }

    return jsonDict;
}

+ (DbxFilesVideoMetadata *)deserialize:(NSDictionary *)valueDict {
    DbxFilesDimensions *dimensions = valueDict[@"dimensions"] != nil ? [DbxFilesDimensionsSerializer deserialize:valueDict[@"dimensions"]] : nil;
    DbxFilesGpsCoordinates *location = valueDict[@"location"] != nil ? [DbxFilesGpsCoordinatesSerializer deserialize:valueDict[@"location"]] : nil;
    NSDate *timeTaken = valueDict[@"time_taken"] != nil ? [DbxNSDateSerializer deserialize:valueDict[@"time_taken"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSNumber *duration = valueDict[@"duration"] != nil ? [DbxNSNumberSerializer deserialize:valueDict[@"duration"]] : nil;

    return [[DbxFilesVideoMetadata alloc] initWithDimensions:dimensions location:location timeTaken:timeTaken duration:duration];
}

@end
