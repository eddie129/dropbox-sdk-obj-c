///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxAsyncLaunchResultBase.h"

@class DbxTeamMemberAddResult;
@class DbxTeamMembersAddLaunch;

/// 
/// The DbxTeamMembersAddLaunch union.
/// 
@interface DbxTeamMembersAddLaunch : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamMembersAddLaunchTag) {
    /// This response indicates that the processing is asynchronous. The string
    /// is an id that can be used to obtain the status of the asynchronous job.
    TeamMembersAddLaunchAsyncJobId,
    /// (no description)
    TeamMembersAddLaunchComplete,
};

- (nonnull instancetype)initWithAsyncJobId:(NSString * _Nonnull)asyncJobId;

- (nonnull instancetype)initWithComplete:(NSArray<DbxTeamMemberAddResult *> * _Nonnull)complete;

- (BOOL)isAsyncJobId;

- (BOOL)isComplete;

- (NSString * _Nonnull)getTagName;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamMembersAddLaunch union type.
@property (nonatomic) TeamMembersAddLaunchTag tag;
@property (nonatomic, copy) NSString * _Nonnull asyncJobId;
@property (nonatomic) NSArray<DbxTeamMemberAddResult *> * _Nonnull complete;

@end


@interface DbxTeamMembersAddLaunchSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersAddLaunch * _Nonnull)obj;

+ (DbxTeamMembersAddLaunch * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
