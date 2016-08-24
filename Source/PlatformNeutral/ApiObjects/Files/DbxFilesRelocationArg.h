///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxFilesRelocationArg;

/// 
/// The DbxFilesRelocationArg struct.
/// 
@interface DbxFilesRelocationArg : NSObject <DbxSerializable> 

/// Path in the user's Dropbox to be copied or moved.
@property (nonatomic, copy) NSString * _Nonnull fromPath;
/// Path in the user's Dropbox that is the destination.
@property (nonatomic, copy) NSString * _Nonnull toPath;

- (nonnull instancetype)initWithFromPath:(NSString * _Nonnull)fromPath toPath:(NSString * _Nonnull)toPath;

- (NSString * _Nonnull)description;

@end


@interface DbxFilesRelocationArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxFilesRelocationArg * _Nonnull)obj;

+ (DbxFilesRelocationArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
