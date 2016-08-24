///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesGetMetadataError.h"
#import "DbxFilesLookupError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesGetMetadataError 

- (instancetype)initWithPath:(DbxFilesLookupError *)path {
    self = [super init];
    if (self != nil) {
        _tag = (FilesGetMetadataErrorTag)FilesGetMetadataErrorPath;
        _path = path;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == (FilesGetMetadataErrorTag)FilesGetMetadataErrorPath;
}

- (NSString *)getTagName {
    if (_tag == (FilesGetMetadataErrorTag)FilesGetMetadataErrorPath) {
        return @"(FilesGetMetadataErrorTag)FilesGetMetadataErrorPath";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesLookupError *)path {
    if (_tag != (FilesGetMetadataErrorTag)FilesGetMetadataErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesGetMetadataErrorTag)FilesGetMetadataErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesGetMetadataErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesGetMetadataErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesGetMetadataErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesGetMetadataErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesGetMetadataError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DbxFilesLookupErrorSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesGetMetadataError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DbxFilesLookupError *path = [DbxFilesLookupErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesGetMetadataError alloc] initWithPath:path];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
