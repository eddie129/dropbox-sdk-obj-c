///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesCreateFolderError.h"
#import "DbxFilesWriteError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesCreateFolderError 

- (instancetype)initWithPath:(DbxFilesWriteError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (FilesCreateFolderErrorTag)FilesCreateFolderErrorPath;
        _path = path;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == (FilesCreateFolderErrorTag)FilesCreateFolderErrorPath;
}

- (NSString *)getTagName {
    if (_tag == (FilesCreateFolderErrorTag)FilesCreateFolderErrorPath) {
        return @"(FilesCreateFolderErrorTag)FilesCreateFolderErrorPath";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesWriteError *)path {
    if (_tag != (FilesCreateFolderErrorTag)FilesCreateFolderErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesCreateFolderErrorTag)FilesCreateFolderErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesCreateFolderErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesCreateFolderErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesCreateFolderErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesCreateFolderErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesCreateFolderError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DbxFilesWriteErrorSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesCreateFolderError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DbxFilesWriteError *path = [DbxFilesWriteErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesCreateFolderError alloc] initWithPath:path];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
