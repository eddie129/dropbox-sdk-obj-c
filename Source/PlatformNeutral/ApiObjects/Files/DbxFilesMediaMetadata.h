///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesDimensions;
@class DbxFilesGpsCoordinates;
@class DbxFilesMediaMetadata;

/// 
/// The DbxFilesMediaMetadata struct.
/// 
/// Metadata for a photo or video.
/// 
@interface DbxFilesMediaMetadata : NSObject <DbxSerializable> 

/// Dimension of the photo/video.
@property (nonatomic) DbxFilesDimensions * _Nullable dimensions;
/// The GPS coordinate of the photo/video.
@property (nonatomic) DbxFilesGpsCoordinates * _Nullable location;
/// The timestamp when the photo/video is taken.
@property (nonatomic) NSDate * _Nullable timeTaken;

- (nonnull instancetype)initWithDimensions:(DbxFilesDimensions * _Nullable)dimensions location:(DbxFilesGpsCoordinates * _Nullable)location timeTaken:(NSDate * _Nullable)timeTaken;

- (nonnull instancetype)init;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesMediaMetadataSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesMediaMetadata * _Nonnull)obj;

+ (DbxFilesMediaMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
