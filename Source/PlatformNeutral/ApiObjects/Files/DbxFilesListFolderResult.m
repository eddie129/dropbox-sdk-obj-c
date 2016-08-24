///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesListFolderResult.h"
#import "DbxFilesMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesListFolderResult 

- (instancetype)initWithEntries:(NSArray<DbxFilesMetadata *> *)entries cursor:(NSString *)cursor hasMore:(NSNumber *)hasMore {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](entries);
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:nil](cursor);

    self = [super init];
    if (self != nil) {
        _entries = entries;
        _cursor = cursor;
        _hasMore = hasMore;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesListFolderResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesListFolderResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesListFolderResultSerializer serialize:self] description];
}

@end


@implementation DbxFilesListFolderResultSerializer 

+ (NSDictionary *)serialize:(DbxFilesListFolderResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"entries"] = [DbxArraySerializer serialize:valueObj.entries withBlock:^id(id elem) { return [DbxFilesMetadataSerializer serialize:elem]; }];
    jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    jsonDict[@"has_more"] = [DbxBoolSerializer serialize:valueObj.hasMore];

    return jsonDict;
}

+ (DbxFilesListFolderResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxFilesMetadata *> *entries = [DbxArraySerializer deserialize:valueDict[@"entries"] withBlock:^id(id elem) { return [DbxFilesMetadataSerializer deserialize:elem]; }];
    NSString *cursor = [DbxStringSerializer deserialize:valueDict[@"cursor"]];
    NSNumber *hasMore = [DbxBoolSerializer deserialize:valueDict[@"has_more"]];

    return [[DbxFilesListFolderResult alloc] initWithEntries:entries cursor:cursor hasMore:hasMore];
}

@end
