///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamGroupsListContinueError;

/// 
/// The DbxTeamGroupsListContinueError union.
/// 
@interface DbxTeamGroupsListContinueError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamGroupsListContinueErrorTag) {
    /// The cursor is invalid.
    TeamGroupsListContinueErrorInvalidCursor,
    /// (no description)
    TeamGroupsListContinueErrorOther,
};

- (nonnull instancetype)initWithInvalidCursor;

- (nonnull instancetype)initWithOther;

- (BOOL)isInvalidCursor;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamGroupsListContinueError union type.
@property (nonatomic) TeamGroupsListContinueErrorTag tag;

@end


@interface DbxTeamGroupsListContinueErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupsListContinueError * _Nonnull)obj;

+ (DbxTeamGroupsListContinueError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
