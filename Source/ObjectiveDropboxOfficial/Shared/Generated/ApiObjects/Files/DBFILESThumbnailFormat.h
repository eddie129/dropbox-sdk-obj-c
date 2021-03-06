///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBFILESThumbnailFormat;

#pragma mark - API Object

///
/// The `ThumbnailFormat` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESThumbnailFormat : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBFILESThumbnailFormatTag` enum type represents the possible tag states
/// with which the `DBFILESThumbnailFormat` union can exist.
typedef NS_ENUM(NSInteger, DBFILESThumbnailFormatTag) {
  /// (no description).
  DBFILESThumbnailFormatJpeg,

  /// (no description).
  DBFILESThumbnailFormatPng,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBFILESThumbnailFormatTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "jpeg".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithJpeg;

///
/// Initializes union class with tag state of "png".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPng;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "jpeg".
///
/// @return Whether the union's current tag state has value "jpeg".
///
- (BOOL)isJpeg;

///
/// Retrieves whether the union's current tag state has value "png".
///
/// @return Whether the union's current tag state has value "png".
///
- (BOOL)isPng;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBFILESThumbnailFormat` union.
///
@interface DBFILESThumbnailFormatSerializer : NSObject

///
/// Serializes `DBFILESThumbnailFormat` instances.
///
/// @param instance An instance of the `DBFILESThumbnailFormat` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESThumbnailFormat` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESThumbnailFormat * _Nonnull)instance;

///
/// Deserializes `DBFILESThumbnailFormat` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESThumbnailFormat` API object.
///
/// @return An instantiation of the `DBFILESThumbnailFormat` object.
///
+ (DBFILESThumbnailFormat * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
