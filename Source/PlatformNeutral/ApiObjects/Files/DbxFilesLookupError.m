///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesLookupError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesLookupError 

- (instancetype)initWithMalformedPath:(NSString *)malformedPath {
    self = [super init];
    if (self != nil) {
        _tag = (FilesLookupErrorTag)FilesLookupErrorMalformedPath;
        _malformedPath = malformedPath;
    }
    return self;
}

- (instancetype)initWithNotFound {
    self = [super init];
    if (self != nil) {
        _tag = (FilesLookupErrorTag)FilesLookupErrorNotFound;
    }
    return self;
}

- (instancetype)initWithNotFile {
    self = [super init];
    if (self != nil) {
        _tag = (FilesLookupErrorTag)FilesLookupErrorNotFile;
    }
    return self;
}

- (instancetype)initWithNotFolder {
    self = [super init];
    if (self != nil) {
        _tag = (FilesLookupErrorTag)FilesLookupErrorNotFolder;
    }
    return self;
}

- (instancetype)initWithRestrictedContent {
    self = [super init];
    if (self != nil) {
        _tag = (FilesLookupErrorTag)FilesLookupErrorRestrictedContent;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (FilesLookupErrorTag)FilesLookupErrorOther;
    }
    return self;
}

- (BOOL)isMalformedPath {
    return _tag == (FilesLookupErrorTag)FilesLookupErrorMalformedPath;
}

- (BOOL)isNotFound {
    return _tag == (FilesLookupErrorTag)FilesLookupErrorNotFound;
}

- (BOOL)isNotFile {
    return _tag == (FilesLookupErrorTag)FilesLookupErrorNotFile;
}

- (BOOL)isNotFolder {
    return _tag == (FilesLookupErrorTag)FilesLookupErrorNotFolder;
}

- (BOOL)isRestrictedContent {
    return _tag == (FilesLookupErrorTag)FilesLookupErrorRestrictedContent;
}

- (BOOL)isOther {
    return _tag == (FilesLookupErrorTag)FilesLookupErrorOther;
}

- (NSString *)getTagName {
    if (_tag == (FilesLookupErrorTag)FilesLookupErrorMalformedPath) {
        return @"(FilesLookupErrorTag)FilesLookupErrorMalformedPath";
    }
    if (_tag == (FilesLookupErrorTag)FilesLookupErrorNotFound) {
        return @"(FilesLookupErrorTag)FilesLookupErrorNotFound";
    }
    if (_tag == (FilesLookupErrorTag)FilesLookupErrorNotFile) {
        return @"(FilesLookupErrorTag)FilesLookupErrorNotFile";
    }
    if (_tag == (FilesLookupErrorTag)FilesLookupErrorNotFolder) {
        return @"(FilesLookupErrorTag)FilesLookupErrorNotFolder";
    }
    if (_tag == (FilesLookupErrorTag)FilesLookupErrorRestrictedContent) {
        return @"(FilesLookupErrorTag)FilesLookupErrorRestrictedContent";
    }
    if (_tag == (FilesLookupErrorTag)FilesLookupErrorOther) {
        return @"(FilesLookupErrorTag)FilesLookupErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)malformedPath {
    if (_tag != (FilesLookupErrorTag)FilesLookupErrorMalformedPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (FilesLookupErrorTag)FilesLookupErrorMalformedPath, but was %@.", [self getTagName]];
    }
    return _malformedPath;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesLookupErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesLookupErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesLookupErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesLookupErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesLookupError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isMalformedPath]) {
        if (valueObj.malformedPath) {
            jsonDict[@"malformed_path"] = [DbxStringSerializer serialize:valueObj.malformedPath];
        }
        jsonDict[@".tag"] = @"malformed_path";
    }
    else if ([valueObj isNotFound]) {
        jsonDict[@".tag"] = @"not_found";
    }
    else if ([valueObj isNotFile]) {
        jsonDict[@".tag"] = @"not_file";
    }
    else if ([valueObj isNotFolder]) {
        jsonDict[@".tag"] = @"not_folder";
    }
    else if ([valueObj isRestrictedContent]) {
        jsonDict[@".tag"] = @"restricted_content";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesLookupError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"malformed_path"]) {
        NSString *malformedPath = valueDict[@"malformed_path"] ? [DbxStringSerializer deserialize:valueDict[@"malformed_path"]] : nil;
        return [[DbxFilesLookupError alloc] initWithMalformedPath:malformedPath];
    }
    if ([tag isEqualToString:@"not_found"]) {
        return [[DbxFilesLookupError alloc] initWithNotFound];
    }
    if ([tag isEqualToString:@"not_file"]) {
        return [[DbxFilesLookupError alloc] initWithNotFile];
    }
    if ([tag isEqualToString:@"not_folder"]) {
        return [[DbxFilesLookupError alloc] initWithNotFolder];
    }
    if ([tag isEqualToString:@"restricted_content"]) {
        return [[DbxFilesLookupError alloc] initWithRestrictedContent];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesLookupError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end
