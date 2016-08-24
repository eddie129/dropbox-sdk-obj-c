///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesGetTemporaryLinkError;
@class DbxFilesLookupError;

/// 
/// The DbxFilesGetTemporaryLinkError union.
/// 
@interface DbxFilesGetTemporaryLinkError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, FilesGetTemporaryLinkErrorTag) {
    /// (no description)
    FilesGetTemporaryLinkErrorPath,
    /// (no description)
    FilesGetTemporaryLinkErrorOther,
};

- (nonnull instancetype)initWithPath:(DbxFilesLookupError * _Nonnull)path;

- (nonnull instancetype)initWithOther;

- (BOOL)isPath;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxFilesGetTemporaryLinkError union type.
@property (nonatomic) FilesGetTemporaryLinkErrorTag tag;
@property (nonatomic) DbxFilesLookupError * _Nonnull path;

@end


@interface DbxFilesGetTemporaryLinkErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesGetTemporaryLinkError * _Nonnull)obj;

+ (DbxFilesGetTemporaryLinkError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
