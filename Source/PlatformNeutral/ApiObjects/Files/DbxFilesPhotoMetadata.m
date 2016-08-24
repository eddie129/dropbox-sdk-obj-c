///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesDimensions.h"
#import "DbxFilesGpsCoordinates.h"
#import "DbxFilesMediaMetadata.h"
#import "DbxFilesPhotoMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesPhotoMetadata 

- (instancetype)initWithDimensions:(DbxFilesDimensions *)dimensions location:(DbxFilesGpsCoordinates *)location timeTaken:(NSDate *)timeTaken {

    self = [super initWithDimensions:dimensions location:location timeTaken:timeTaken];
    if (self != nil) {
    }
    return self;
}

- (instancetype)init {
    return [self initWithDimensions:nil location:nil timeTaken:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesPhotoMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesPhotoMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesPhotoMetadataSerializer serialize:self] description];
}

@end


@implementation DbxFilesPhotoMetadataSerializer 

+ (NSDictionary *)serialize:(DbxFilesPhotoMetadata *)valueObj {
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

    return jsonDict;
}

+ (DbxFilesPhotoMetadata *)deserialize:(NSDictionary *)valueDict {
    DbxFilesDimensions *dimensions = valueDict[@"dimensions"] != nil ? [DbxFilesDimensionsSerializer deserialize:valueDict[@"dimensions"]] : nil;
    DbxFilesGpsCoordinates *location = valueDict[@"location"] != nil ? [DbxFilesGpsCoordinatesSerializer deserialize:valueDict[@"location"]] : nil;
    NSDate *timeTaken = valueDict[@"time_taken"] != nil ? [DbxNSDateSerializer deserialize:valueDict[@"time_taken"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;

    return [[DbxFilesPhotoMetadata alloc] initWithDimensions:dimensions location:location timeTaken:timeTaken];
}

@end
