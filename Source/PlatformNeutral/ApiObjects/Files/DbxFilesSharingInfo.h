///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesSharingInfo;

/// 
/// The DbxFilesSharingInfo struct.
/// 
/// Sharing info for a file or folder.
/// 
@interface DbxFilesSharingInfo : NSObject <DbxSerializable> 

/// True if the file or folder is inside a read-only shared folder.
@property (nonatomic, copy) NSNumber * _Nonnull readOnly;

- (nonnull instancetype)initWithReadOnly:(NSNumber * _Nonnull)readOnly;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesSharingInfoSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesSharingInfo * _Nonnull)obj;

+ (DbxFilesSharingInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
