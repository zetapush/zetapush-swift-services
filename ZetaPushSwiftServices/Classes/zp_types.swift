//	Generated file for Swift SDK types
//  Copyright © 2017 zetapush. All rights reserved.
//


import Foundation
import ZetaPushSwift
import Gloss
import PromiseKit



public struct PageContentSearchResultsItem : Glossy {
	let content: [SearchResultsItem]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
public struct PageContentListingEntryInfo : Glossy {
	let content: [ListingEntryInfo]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
public struct PageContentWorkflowTemplate : Glossy {
	let content: [WorkflowTemplate]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
public struct PageContentNSDictionary : Glossy {
	let content: [NSDictionary]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
public struct PageContentStackItem : Glossy {
	let content: [StackItem]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
public struct PageContentCronTaskRequest : Glossy {
	let content: [CronTaskRequest]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
public struct PageContentWorkflowInfo : Glossy {
	let content: [WorkflowInfo]?
	let pagination: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.pagination = "pagination" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"pagination" ~~> self.pagination
            ])
    }
}
enum PageDirection : String {
	case DESC = "DESC"
	case ASC = "ASC"
}
public struct Pagination : Glossy {
	let pageSize: Int?
	let pageNumber: Int?
	let direction: PageDirection?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.pageSize = "pageSize" <~~ json
		self.pageNumber = "pageNumber" <~~ json
		self.direction = "direction" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"pageSize" ~~> self.pageSize,
			"pageNumber" ~~> self.pageNumber,
			"direction" ~~> self.direction
            ])
    }
}
public struct GamePlay : Glossy {
	let gameId: String?
	let userId: String?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.gameId = "gameId" <~~ json
		self.userId = "userId" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"gameId" ~~> self.gameId,
			"userId" ~~> self.userId,
			"data" ~~> self.data
            ])
    }
}
public struct GameType : Glossy {
	let description: String?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"name" ~~> self.name
            ])
    }
}
public struct HttpClientHeader : Glossy {
	let value: String?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"value" ~~> self.value,
			"name" ~~> self.name
            ])
    }
}
public struct UserControlStatus : Glossy {
	let controller: String?
	let publicToken: String?
	let fullRights: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.controller = "controller" <~~ json
		self.publicToken = "publicToken" <~~ json
		self.fullRights = "fullRights" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"controller" ~~> self.controller,
			"publicToken" ~~> self.publicToken,
			"fullRights" ~~> self.fullRights
            ])
    }
}
public struct Thumbnail : Glossy {
	let guid: String?
	let name: String?
	let size: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.guid = "guid" <~~ json
		self.name = "name" <~~ json
		self.size = "size" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"guid" ~~> self.guid,
			"name" ~~> self.name,
			"size" ~~> self.size
            ])
    }
}
public struct MacroCompletionStats : Glossy {
	let elapsedMillis: Int64?
	let ram: Int64?
	let nbCalls: Int64?
	let cycles: Int64?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.elapsedMillis = "elapsedMillis" <~~ json
		self.ram = "ram" <~~ json
		self.nbCalls = "nbCalls" <~~ json
		self.cycles = "cycles" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"elapsedMillis" ~~> self.elapsedMillis,
			"ram" ~~> self.ram,
			"nbCalls" ~~> self.nbCalls,
			"cycles" ~~> self.cycles
            ])
    }
}
public struct GdaCellRequest : Glossy {
	let table: String?
	let key: String?
	let key2: String?
	let owner: String?
	let column: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.table = "table" <~~ json
		self.key = "key" <~~ json
		self.key2 = "key2" <~~ json
		self.owner = "owner" <~~ json
		self.column = "column" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"table" ~~> self.table,
			"key" ~~> self.key,
			"key2" ~~> self.key2,
			"owner" ~~> self.owner,
			"column" ~~> self.column
            ])
    }
}
public struct TriggerId : Glossy {
	let event: String?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.event = "event" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"event" ~~> self.event,
			"name" ~~> self.name
            ])
    }
}
public struct ZpfsRequest : Glossy {
	let path: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"path" ~~> self.path,
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroStep : Glossy {
	let description: String?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"line" ~~> self.line
            ])
    }
}
public struct CronTaskRequest : Glossy {
	let cronName: String?
	let schedule: NSObject?
	let parameter: NSDictionary?
	let stop: Int64?
	let deploymentId: String?
	let owner: String?
	let verb: String?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.cronName = "cronName" <~~ json
		self.schedule = "schedule" <~~ json
		self.parameter = "parameter" <~~ json
		self.stop = "stop" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.owner = "owner" <~~ json
		self.verb = "verb" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"cronName" ~~> self.cronName,
			"schedule" ~~> self.schedule,
			"parameter" ~~> self.parameter,
			"stop" ~~> self.stop,
			"deploymentId" ~~> self.deploymentId,
			"owner" ~~> self.owner,
			"verb" ~~> self.verb,
			"loud" ~~> self.loud
            ])
    }
}
public struct RdbmsResultSet : Glossy {
	// MARK: - Deserialization
	public init?(json: JSON) {
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
            ])
    }
}
public struct GameJoin : Glossy {
	let role: String?
	let gameId: String?
	let userId: String?
	let userName: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.role = "role" <~~ json
		self.gameId = "gameId" <~~ json
		self.userId = "userId" <~~ json
		self.userName = "userName" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"role" ~~> self.role,
			"gameId" ~~> self.gameId,
			"userId" ~~> self.userId,
			"userName" ~~> self.userName
            ])
    }
}
public struct TaskCompletion : Glossy {
	let result: NSObject?
	let taskId: String?
	let success: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.result = "result" <~~ json
		self.taskId = "taskId" <~~ json
		self.success = "success" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"result" ~~> self.result,
			"taskId" ~~> self.taskId,
			"success" ~~> self.success
            ])
    }
}
enum NotificationPlatform : String {
	case APNS = "APNS"
	case APNS_SANDBOX = "APNS_SANDBOX"
	case GCM = "GCM"
}
public struct StackListeners : Glossy {
	let listeners: [String]?
	let stack: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.listeners = "listeners" <~~ json
		self.stack = "stack" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"listeners" ~~> self.listeners,
			"stack" ~~> self.stack,
			"owner" ~~> self.owner
            ])
    }
}
public struct ZpfsToken : Glossy {
	let token: String?
	let path: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"path" ~~> self.path,
			"owner" ~~> self.owner
            ])
    }
}
public struct CreatedFile : Glossy {
	let oldPath: String?
	let path: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.oldPath = "oldPath" <~~ json
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"oldPath" ~~> self.oldPath,
			"path" ~~> self.path,
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroServiceStatus : Glossy {
	let currentNb: Int?
	let debug: Bool?
	let totalNb: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.currentNb = "currentNb" <~~ json
		self.debug = "debug" <~~ json
		self.totalNb = "totalNb" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"currentNb" ~~> self.currentNb,
			"debug" ~~> self.debug,
			"totalNb" ~~> self.totalNb
            ])
    }
}
public struct MacroDebugEventResume : Glossy {
	// MARK: - Deserialization
	public init?(json: JSON) {
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
            ])
    }
}
public struct GroupUsers : Glossy {
	let users: [String]?
	let group: String?
	let groupName: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.users = "users" <~~ json
		self.group = "group" <~~ json
		self.groupName = "groupName" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"users" ~~> self.users,
			"group" ~~> self.group,
			"groupName" ~~> self.groupName,
			"owner" ~~> self.owner
            ])
    }
}
enum Idempotence : String {
	case IGNORE_DIFFERENT = "IGNORE_DIFFERENT"
	case FAIL_IF_EXISTING = "FAIL_IF_EXISTING"
	case IGNORE_IDENTICAL = "IGNORE_IDENTICAL"
}
public struct BasicUserCreation : Glossy {
	let additionalProperties: NSDictionary?
	let idempotence: Idempotence?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.additionalProperties = "additionalProperties" <~~ json
		self.idempotence = "idempotence" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"additionalProperties" ~~> self.additionalProperties,
			"idempotence" ~~> self.idempotence
            ])
    }
}
public struct FileStatRequest : Glossy {
	let path: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"path" ~~> self.path,
			"owner" ~~> self.owner
            ])
    }
}
public struct GroupExistence : Glossy {
	let exists: Bool?
	let group: String?
	let groupName: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.exists = "exists" <~~ json
		self.group = "group" <~~ json
		self.groupName = "groupName" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"exists" ~~> self.exists,
			"group" ~~> self.group,
			"groupName" ~~> self.groupName,
			"owner" ~~> self.owner
            ])
    }
}
public struct ResetInfo : Glossy {
	let token: String?
	let key: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.key = "key" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"key" ~~> self.key
            ])
    }
}
public struct AggregationPush : Glossy {
	let value: Decimal?
	let name: String?
	let category: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.name = "name" <~~ json
		self.category = "category" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"value" ~~> self.value,
			"name" ~~> self.name,
			"category" ~~> self.category
            ])
    }
}
public struct MacroScriptParamConstraint : Glossy {
	let config: NSDictionary?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.config = "config" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"config" ~~> self.config,
			"name" ~~> self.name
            ])
    }
}
public struct FileUploadComplete : Glossy {
	let tags: [String]?
	let guid: String?
	let metadata: NSDictionary?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.tags = "tags" <~~ json
		self.guid = "guid" <~~ json
		self.metadata = "metadata" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"tags" ~~> self.tags,
			"guid" ~~> self.guid,
			"metadata" ~~> self.metadata,
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroDebugEvent : Glossy {
	// MARK: - Deserialization
	public init?(json: JSON) {
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
            ])
    }
}
public struct TimerRequest : Glossy {
	let parameter: NSDictionary?
	let deploymentId: String?
	let owner: String?
	let verb: String?
	let delay: Int?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parameter = "parameter" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.owner = "owner" <~~ json
		self.verb = "verb" <~~ json
		self.delay = "delay" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parameter" ~~> self.parameter,
			"deploymentId" ~~> self.deploymentId,
			"owner" ~~> self.owner,
			"verb" ~~> self.verb,
			"delay" ~~> self.delay,
			"loud" ~~> self.loud
            ])
    }
}
public struct OwnerResource : Glossy {
	let resource: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"resource" ~~> self.resource,
			"owner" ~~> self.owner
            ])
    }
}
public struct TaskRequest : Glossy {
	let originator: OwnerResource?
	let description: String?
	let originBusinessId: String?
	let originDeploymentId: String?
	let data: NSObject?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.originator = "originator" <~~ json
		self.description = "description" <~~ json
		self.originBusinessId = "originBusinessId" <~~ json
		self.originDeploymentId = "originDeploymentId" <~~ json
		self.data = "data" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"originator" ~~> self.originator,
			"description" ~~> self.description,
			"originBusinessId" ~~> self.originBusinessId,
			"originDeploymentId" ~~> self.originDeploymentId,
			"data" ~~> self.data,
			"owner" ~~> self.owner
            ])
    }
}
public struct Email : Glossy {
	let to: [String]?
	let html: String?
	let cc: [String]?
	let bcc: [String]?
	let subject: String?
	let text: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.to = "to" <~~ json
		self.html = "html" <~~ json
		self.cc = "cc" <~~ json
		self.bcc = "bcc" <~~ json
		self.subject = "subject" <~~ json
		self.text = "text" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"to" ~~> self.to,
			"html" ~~> self.html,
			"cc" ~~> self.cc,
			"bcc" ~~> self.bcc,
			"subject" ~~> self.subject,
			"text" ~~> self.text
            ])
    }
}
public struct WorkflowTemplateList : Glossy {
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"page" ~~> self.page
            ])
    }
}
public struct ZpfsFileHandler : Glossy {
	let handle: NSObject?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.handle = "handle" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"handle" ~~> self.handle
            ])
    }
}
enum AggregationItemType : String {
	case MEAN = "MEAN"
	case TOTAL = "TOTAL"
}
public struct BasicAuthenticatedUser : Glossy {
	let additionalProperties: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.additionalProperties = "additionalProperties" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"additionalProperties" ~~> self.additionalProperties
            ])
    }
}
public struct SearchResultsItem : Glossy {
	let type: String?
	let id: String?
	let index: String?
	let data: NSDictionary?
	let score: Float?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.id = "id" <~~ json
		self.index = "index" <~~ json
		self.data = "data" <~~ json
		self.score = "score" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"type" ~~> self.type,
			"id" ~~> self.id,
			"index" ~~> self.index,
			"data" ~~> self.data,
			"score" ~~> self.score
            ])
    }
}
public struct SearchResults : Glossy {
	let items: PageContentSearchResultsItem?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.items = "items" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"items" ~~> self.items
            ])
    }
}
enum GameStatus : String {
	case RUNNING = "RUNNING"
	case FINISHED = "FINISHED"
	case CREATED = "CREATED"
	case STARTING = "STARTING"
}
public struct MacroLog : Glossy {
	let description: String?
	let data: NSObject?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.data = "data" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"data" ~~> self.data,
			"line" ~~> self.line
            ])
    }
}
public struct MacroCall : Glossy {
	let description: String?
	let suKey: String?
	let noExpand: Bool?
	let resultName: String?
	let parameter: NSDictionary?
	let deploymentId: String?
	let line: Int?
	let verb: String?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.suKey = "suKey" <~~ json
		self.noExpand = "noExpand" <~~ json
		self.resultName = "resultName" <~~ json
		self.parameter = "parameter" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.line = "line" <~~ json
		self.verb = "verb" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"suKey" ~~> self.suKey,
			"noExpand" ~~> self.noExpand,
			"resultName" ~~> self.resultName,
			"parameter" ~~> self.parameter,
			"deploymentId" ~~> self.deploymentId,
			"line" ~~> self.line,
			"verb" ~~> self.verb,
			"loud" ~~> self.loud
            ])
    }
}
public struct FileMetaUpdate : Glossy {
	let path: String?
	let metadataFiles: NSDictionary?
	let metadata: NSDictionary?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.metadataFiles = "metadataFiles" <~~ json
		self.metadata = "metadata" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"path" ~~> self.path,
			"metadataFiles" ~~> self.metadataFiles,
			"metadata" ~~> self.metadata,
			"owner" ~~> self.owner
            ])
    }
}
public struct GroupInfo : Glossy {
	let group: String?
	let groupName: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.group = "group" <~~ json
		self.groupName = "groupName" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"group" ~~> self.group,
			"groupName" ~~> self.groupName,
			"owner" ~~> self.owner
            ])
    }
}
public struct ProvisioningRequest : Glossy {
	let n: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.n = "n" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"n" ~~> self.n
            ])
    }
}
public struct GameOrganization : Glossy {
	let type: GameType?
	let gameId: String?
	let owner: String?
	let options: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.gameId = "gameId" <~~ json
		self.owner = "owner" <~~ json
		self.options = "options" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"type" ~~> self.type,
			"gameId" ~~> self.gameId,
			"owner" ~~> self.owner,
			"options" ~~> self.options
            ])
    }
}
public struct GdaRowRequest : Glossy {
	let table: String?
	let key: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.table = "table" <~~ json
		self.key = "key" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"table" ~~> self.table,
			"key" ~~> self.key,
			"owner" ~~> self.owner
            ])
    }
}
public struct SearchRequestSortField : Glossy {
	let name: String?
	let sort: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.sort = "sort" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name,
			"sort" ~~> self.sort
            ])
    }
}
public struct SearchRequest : Glossy {
	let indices: [String]?
	let query: NSDictionary?
	let sort: [SearchRequestSortField]?
	let page: Pagination?
	let types: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.indices = "indices" <~~ json
		self.query = "query" <~~ json
		self.sort = "sort" <~~ json
		self.page = "page" <~~ json
		self.types = "types" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"indices" ~~> self.indices,
			"query" ~~> self.query,
			"sort" ~~> self.sort,
			"page" ~~> self.page,
			"types" ~~> self.types
            ])
    }
}
public struct MacroStatement : Glossy {
	let description: String?
	let exec: String?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.exec = "exec" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"exec" ~~> self.exec,
			"line" ~~> self.line
            ])
    }
}
public struct MacroLoop : Glossy {
	let description: String?
	let _var: String?
	let items: String?
	let steps: [MacroStep]?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self._var = "var" <~~ json
		self.items = "items" <~~ json
		self.steps = "steps" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"var" ~~> self._var,
			"items" ~~> self.items,
			"steps" ~~> self.steps,
			"line" ~~> self.line
            ])
    }
}
public struct ChangePasswordRequest : Glossy {
	let token: String?
	let key: String?
	let password: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.key = "key" <~~ json
		self.password = "password" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"key" ~~> self.key,
			"password" ~~> self.password
            ])
    }
}
public struct MacroFunctionResult : Glossy {
	let result: NSObject?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"result" ~~> self.result
            ])
    }
}
public struct MacroFunctionRequest : Glossy {
	let name: String?
	let params: [NSObject]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.params = "params" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name,
			"params" ~~> self.params
            ])
    }
}
public struct DeviceCapabilities : Glossy {
	let askingResource: String?
	let capabilities: [String]?
	let answeringResource: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.askingResource = "askingResource" <~~ json
		self.capabilities = "capabilities" <~~ json
		self.answeringResource = "answeringResource" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"askingResource" ~~> self.askingResource,
			"capabilities" ~~> self.capabilities,
			"answeringResource" ~~> self.answeringResource
            ])
    }
}
public struct UserInfoResponse : Glossy {
	let users: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.users = "users" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"users" ~~> self.users
            ])
    }
}
public struct ZetaApiError : Glossy {
	let code: String?
	let message: String?
	let location: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.code = "code" <~~ json
		self.message = "message" <~~ json
		self.location = "location" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"code" ~~> self.code,
			"message" ~~> self.message,
			"location" ~~> self.location
            ])
    }
}
public struct Grant : Glossy {
	let resource: String?
	let group: String?
	let owner: String?
	let action: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
		self.action = "action" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"resource" ~~> self.resource,
			"group" ~~> self.group,
			"owner" ~~> self.owner,
			"action" ~~> self.action
            ])
    }
}
public struct ExistingUser : Glossy {
	let key: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.key = "key" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"key" ~~> self.key
            ])
    }
}
public struct GameJoinResponse : Glossy {
	let msgId: String?
	let payload: GameJoin?
	let error: String?
	let callerId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.msgId = "msgId" <~~ json
		self.payload = "payload" <~~ json
		self.error = "error" <~~ json
		self.callerId = "callerId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"msgId" ~~> self.msgId,
			"payload" ~~> self.payload,
			"error" ~~> self.error,
			"callerId" ~~> self.callerId
            ])
    }
}
public struct TriggerListener : Glossy {
	let trigger: TriggerId?
	let parameter: NSDictionary?
	let deploymentId: String?
	let verb: String?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.trigger = "trigger" <~~ json
		self.parameter = "parameter" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.verb = "verb" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"trigger" ~~> self.trigger,
			"parameter" ~~> self.parameter,
			"deploymentId" ~~> self.deploymentId,
			"verb" ~~> self.verb,
			"loud" ~~> self.loud
            ])
    }
}
public struct StackItemRemove : Glossy {
	let guids: [[Int8]]?
	let stack: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.guids = "guids" <~~ json
		self.stack = "stack" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"guids" ~~> self.guids,
			"stack" ~~> self.stack,
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroDebugEventTermination : Glossy {
	// MARK: - Deserialization
	public init?(json: JSON) {
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
            ])
    }
}
public struct UploadedFile : Glossy {
	let contentType: String?
	let meta: NSDictionary?
	let guid: String?
	let path: String?
	let hash: String?
	let size: Int64?
	let url: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.contentType = "contentType" <~~ json
		self.meta = "meta" <~~ json
		self.guid = "guid" <~~ json
		self.path = "path" <~~ json
		self.hash = "hash" <~~ json
		self.size = "size" <~~ json
		self.url = "url" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"contentType" ~~> self.contentType,
			"meta" ~~> self.meta,
			"guid" ~~> self.guid,
			"path" ~~> self.path,
			"hash" ~~> self.hash,
			"size" ~~> self.size,
			"url" ~~> self.url
            ])
    }
}
public struct ZpfsDiskUsage : Glossy {
	let path: String?
	let usage: Int64?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.usage = "usage" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"path" ~~> self.path,
			"usage" ~~> self.usage,
			"owner" ~~> self.owner
            ])
    }
}
enum FileType : String {
	case FILE = "FILE"
	case DIR = "DIR"
}
public struct ListingEntryInfo : Glossy {
	let tags: [String]?
	let type: FileType?
	let name: String?
	let metadata: NSDictionary?
	let creation: Int64?
	let url: UploadedFile?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.tags = "tags" <~~ json
		self.type = "type" <~~ json
		self.name = "name" <~~ json
		self.metadata = "metadata" <~~ json
		self.creation = "creation" <~~ json
		self.url = "url" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"tags" ~~> self.tags,
			"type" ~~> self.type,
			"name" ~~> self.name,
			"metadata" ~~> self.metadata,
			"creation" ~~> self.creation,
			"url" ~~> self.url,
			"owner" ~~> self.owner
            ])
    }
}
public struct FolderListing : Glossy {
	let exists: Bool?
	let folder: String?
	let entries: PageContentListingEntryInfo?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.exists = "exists" <~~ json
		self.folder = "folder" <~~ json
		self.entries = "entries" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"exists" ~~> self.exists,
			"folder" ~~> self.folder,
			"entries" ~~> self.entries,
			"owner" ~~> self.owner
            ])
    }
}
public struct FileStatResult : Glossy {
	let path: String?
	let owner: String?
	let entry: ListingEntryInfo?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
		self.entry = "entry" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"path" ~~> self.path,
			"owner" ~~> self.owner,
			"entry" ~~> self.entry
            ])
    }
}
public struct RemoteCommand : Glossy {
	let resource: String?
	let fromResource: String?
	let cmd: String?
	let from: String?
	let data: NSDictionary?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.fromResource = "fromResource" <~~ json
		self.cmd = "cmd" <~~ json
		self.from = "from" <~~ json
		self.data = "data" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"resource" ~~> self.resource,
			"fromResource" ~~> self.fromResource,
			"cmd" ~~> self.cmd,
			"from" ~~> self.from,
			"data" ~~> self.data,
			"owner" ~~> self.owner
            ])
    }
}
enum HttpClientParseMode : String {
	case STRING = "STRING"
	case OBJECT = "OBJECT"
	case BYTES = "BYTES"
}
public struct HttpClientTemplate : Glossy {
	let content: NSObject?
	let name: String?
	let headers: [HttpClientHeader]?
	let method: String?
	let parseMode: HttpClientParseMode?
	let url: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.name = "name" <~~ json
		self.headers = "headers" <~~ json
		self.method = "method" <~~ json
		self.parseMode = "parseMode" <~~ json
		self.url = "url" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"name" ~~> self.name,
			"headers" ~~> self.headers,
			"method" ~~> self.method,
			"parseMode" ~~> self.parseMode,
			"url" ~~> self.url
            ])
    }
}
public struct HttpClientRequest : Glossy {
	let content: NSObject?
	let headers: [HttpClientHeader]?
	let method: String?
	let requestId: String?
	let parseMode: HttpClientParseMode?
	let url: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.headers = "headers" <~~ json
		self.method = "method" <~~ json
		self.requestId = "requestId" <~~ json
		self.parseMode = "parseMode" <~~ json
		self.url = "url" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"headers" ~~> self.headers,
			"method" ~~> self.method,
			"requestId" ~~> self.requestId,
			"parseMode" ~~> self.parseMode,
			"url" ~~> self.url
            ])
    }
}
public struct MacroFunctionParam : Glossy {
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name
            ])
    }
}
public struct MacroScriptParam : Glossy {
	let name: String?
	let constraints: [MacroScriptParamConstraint]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.constraints = "constraints" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name,
			"constraints" ~~> self.constraints
            ])
    }
}
public struct MacroInfo : Glossy {
	let description: String?
	let target: NSObject?
	let channel: String?
	let name: String?
	let result: NSDictionary?
	let source: String?
	let steps: [MacroStep]?
	let params: [MacroScriptParam]?
	let broadcast: Bool?
	let line: Int?
	let routes: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.target = "target" <~~ json
		self.channel = "channel" <~~ json
		self.name = "name" <~~ json
		self.result = "result" <~~ json
		self.source = "source" <~~ json
		self.steps = "steps" <~~ json
		self.params = "params" <~~ json
		self.broadcast = "broadcast" <~~ json
		self.line = "line" <~~ json
		self.routes = "routes" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"target" ~~> self.target,
			"channel" ~~> self.channel,
			"name" ~~> self.name,
			"result" ~~> self.result,
			"source" ~~> self.source,
			"steps" ~~> self.steps,
			"params" ~~> self.params,
			"broadcast" ~~> self.broadcast,
			"line" ~~> self.line,
			"routes" ~~> self.routes
            ])
    }
}
public struct SuMacroPlay : Glossy {
	let parameters: NSDictionary?
	let suKey: String?
	let hardFail: Bool?
	let name: String?
	let requestId: String?
	let tempMacros: [MacroInfo]?
	let debug: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parameters = "parameters" <~~ json
		self.suKey = "suKey" <~~ json
		self.hardFail = "hardFail" <~~ json
		self.name = "name" <~~ json
		self.requestId = "requestId" <~~ json
		self.tempMacros = "tempMacros" <~~ json
		self.debug = "debug" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parameters" ~~> self.parameters,
			"suKey" ~~> self.suKey,
			"hardFail" ~~> self.hardFail,
			"name" ~~> self.name,
			"requestId" ~~> self.requestId,
			"tempMacros" ~~> self.tempMacros,
			"debug" ~~> self.debug
            ])
    }
}
public struct MacroDebugVariableChange : Glossy {
	let token: String?
	let name: String?
	let frame: Int?
	let data: NSObject?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.name = "name" <~~ json
		self.frame = "frame" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"name" ~~> self.name,
			"frame" ~~> self.frame,
			"data" ~~> self.data
            ])
    }
}
public struct GameStart : Glossy {
	let gameId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.gameId = "gameId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"gameId" ~~> self.gameId
            ])
    }
}
public struct AggregationItemCategory : Glossy {
	let type: AggregationItemType?
	let periods: [Int]?
	let parameter: NSDictionary?
	let category: String?
	let deploymentId: String?
	let verb: String?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.periods = "periods" <~~ json
		self.parameter = "parameter" <~~ json
		self.category = "category" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.verb = "verb" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"type" ~~> self.type,
			"periods" ~~> self.periods,
			"parameter" ~~> self.parameter,
			"category" ~~> self.category,
			"deploymentId" ~~> self.deploymentId,
			"verb" ~~> self.verb,
			"loud" ~~> self.loud
            ])
    }
}
public struct MacroUploadReport : Glossy {
	let macros: [String]?
	let functions: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.macros = "macros" <~~ json
		self.functions = "functions" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"macros" ~~> self.macros,
			"functions" ~~> self.functions
            ])
    }
}
public struct UserGroup : Glossy {
	let user: String?
	let group: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"user" ~~> self.user,
			"group" ~~> self.group,
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroFunction : Glossy {
	let description: String?
	let parameters: [MacroFunctionParam]?
	let name: String?
	let result: NSObject?
	let source: String?
	let steps: [MacroStep]?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.parameters = "parameters" <~~ json
		self.name = "name" <~~ json
		self.result = "result" <~~ json
		self.source = "source" <~~ json
		self.steps = "steps" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"parameters" ~~> self.parameters,
			"name" ~~> self.name,
			"result" ~~> self.result,
			"source" ~~> self.source,
			"steps" ~~> self.steps,
			"line" ~~> self.line
            ])
    }
}
public struct MacroLocalFunction : Glossy {
	let f: MacroFunction?
	let description: String?
	let _var: String?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.f = "f" <~~ json
		self.description = "description" <~~ json
		self._var = "var" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"f" ~~> self.f,
			"description" ~~> self.description,
			"var" ~~> self._var,
			"line" ~~> self.line
            ])
    }
}
public struct ExistenceCheck : Glossy {
	let key: String?
	let softFail: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.key = "key" <~~ json
		self.softFail = "softFail" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"key" ~~> self.key,
			"softFail" ~~> self.softFail
            ])
    }
}
public struct GameRunnerFullLocation : Glossy {
	let sessionId: String?
	let requestChannel: String?
	let responseChannel: String?
	let setiId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.sessionId = "sessionId" <~~ json
		self.requestChannel = "requestChannel" <~~ json
		self.responseChannel = "responseChannel" <~~ json
		self.setiId = "setiId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"sessionId" ~~> self.sessionId,
			"requestChannel" ~~> self.requestChannel,
			"responseChannel" ~~> self.responseChannel,
			"setiId" ~~> self.setiId
            ])
    }
}
public struct ApiTriggerId : Glossy {
	let name: String?
	let deploymentId: String?
	let verb: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.verb = "verb" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name,
			"deploymentId" ~~> self.deploymentId,
			"verb" ~~> self.verb
            ])
    }
}
public struct RdbmsQuery : Glossy {
	let parameters: [NSObject]?
	let statement: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parameters = "parameters" <~~ json
		self.statement = "statement" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parameters" ~~> self.parameters,
			"statement" ~~> self.statement
            ])
    }
}
public struct FileRemoval : Glossy {
	let path: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"path" ~~> self.path,
			"owner" ~~> self.owner
            ])
    }
}
public struct EventTrigger : Glossy {
	let event: String?
	let data: NSObject?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.event = "event" <~~ json
		self.data = "data" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"event" ~~> self.event,
			"data" ~~> self.data,
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroCompletion : Glossy {
	let stats: MacroCompletionStats?
	let errors: [ZetaApiError]?
	let name: String?
	let result: NSObject?
	let requestId: String?
	let log: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.stats = "stats" <~~ json
		self.errors = "errors" <~~ json
		self.name = "name" <~~ json
		self.result = "result" <~~ json
		self.requestId = "requestId" <~~ json
		self.log = "log" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"stats" ~~> self.stats,
			"errors" ~~> self.errors,
			"name" ~~> self.name,
			"result" ~~> self.result,
			"requestId" ~~> self.requestId,
			"log" ~~> self.log
            ])
    }
}
public struct TemplateRequest : Glossy {
	let languageTag: String?
	let name: String?
	let requestId: String?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.languageTag = "languageTag" <~~ json
		self.name = "name" <~~ json
		self.requestId = "requestId" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"languageTag" ~~> self.languageTag,
			"name" ~~> self.name,
			"requestId" ~~> self.requestId,
			"data" ~~> self.data
            ])
    }
}
public struct StackRequest : Glossy {
	let stack: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.stack = "stack" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"stack" ~~> self.stack,
			"owner" ~~> self.owner
            ])
    }
}
public struct UserSearchRequest : Glossy {
	let requestId: String?
	let query: NSDictionary?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.requestId = "requestId" <~~ json
		self.query = "query" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"requestId" ~~> self.requestId,
			"query" ~~> self.query,
			"page" ~~> self.page
            ])
    }
}
public struct GroupRelated : Glossy {
	let group: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"group" ~~> self.group,
			"owner" ~~> self.owner
            ])
    }
}
public struct Presence : Glossy {
	let user: OwnerResource?
	let presence: String?
	let group: GroupRelated?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.presence = "presence" <~~ json
		self.group = "group" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"user" ~~> self.user,
			"presence" ~~> self.presence,
			"group" ~~> self.group
            ])
    }
}
public struct WorkflowTemplateInfoRequest : Glossy {
	let templateName: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.templateName = "templateName" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"templateName" ~~> self.templateName
            ])
    }
}
public struct FileUploadRequest : Glossy {
	let contentType: String?
	let path: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.contentType = "contentType" <~~ json
		self.path = "path" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"contentType" ~~> self.contentType,
			"path" ~~> self.path,
			"owner" ~~> self.owner
            ])
    }
}
public struct GameOrganizationResponse : Glossy {
	let msgId: String?
	let payload: GameOrganization?
	let error: String?
	let callerId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.msgId = "msgId" <~~ json
		self.payload = "payload" <~~ json
		self.error = "error" <~~ json
		self.callerId = "callerId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"msgId" ~~> self.msgId,
			"payload" ~~> self.payload,
			"error" ~~> self.error,
			"callerId" ~~> self.callerId
            ])
    }
}
public struct GdaCellsRequest : Glossy {
	let table: String?
	let key: String?
	let key2: [String]?
	let owner: String?
	let column: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.table = "table" <~~ json
		self.key = "key" <~~ json
		self.key2 = "key2" <~~ json
		self.owner = "owner" <~~ json
		self.column = "column" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"table" ~~> self.table,
			"key" ~~> self.key,
			"key2" ~~> self.key2,
			"owner" ~~> self.owner,
			"column" ~~> self.column
            ])
    }
}
public struct GdaCellsResult : Glossy {
	let request: GdaCellsRequest?
	let result: NSObject?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct GdaColumnRequest : Glossy {
	let table: String?
	let key: String?
	let owner: String?
	let column: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.table = "table" <~~ json
		self.key = "key" <~~ json
		self.owner = "owner" <~~ json
		self.column = "column" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"table" ~~> self.table,
			"key" ~~> self.key,
			"owner" ~~> self.owner,
			"column" ~~> self.column
            ])
    }
}
public struct ServiceVerbCall : Glossy {
	let parameter: NSDictionary?
	let deploymentId: String?
	let verb: String?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parameter = "parameter" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.verb = "verb" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parameter" ~~> self.parameter,
			"deploymentId" ~~> self.deploymentId,
			"verb" ~~> self.verb,
			"loud" ~~> self.loud
            ])
    }
}
public struct WorkflowStateDefinition : Glossy {
	let call: ServiceVerbCall?
	let stateId: String?
	let stateName: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.call = "call" <~~ json
		self.stateId = "stateId" <~~ json
		self.stateName = "stateName" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"call" ~~> self.call,
			"stateId" ~~> self.stateId,
			"stateName" ~~> self.stateName
            ])
    }
}
public struct MacroDebugToken : Glossy {
	let token: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token
            ])
    }
}
public struct UserSearchResponse : Glossy {
	let users: NSDictionary?
	let requestId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.users = "users" <~~ json
		self.requestId = "requestId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"users" ~~> self.users,
			"requestId" ~~> self.requestId
            ])
    }
}
public struct GdaTableRemoval : Glossy {
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name
            ])
    }
}
public struct NotifiableDeviceRegistration : Glossy {
	let deviceToken: String?
	let appId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.deviceToken = "deviceToken" <~~ json
		self.appId = "appId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"deviceToken" ~~> self.deviceToken,
			"appId" ~~> self.appId
            ])
    }
}
public struct HttpClientResponse : Glossy {
	let content: NSObject?
	let headers: [HttpClientHeader]?
	let httpStatus: Int?
	let requestId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.headers = "headers" <~~ json
		self.httpStatus = "httpStatus" <~~ json
		self.requestId = "requestId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"headers" ~~> self.headers,
			"httpStatus" ~~> self.httpStatus,
			"requestId" ~~> self.requestId
            ])
    }
}
public struct SnapshotItem : Glossy {
	let caseInsensitive: Bool?
	let path: String?
	let includes: [String]?
	let excludes: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.caseInsensitive = "caseInsensitive" <~~ json
		self.path = "path" <~~ json
		self.includes = "includes" <~~ json
		self.excludes = "excludes" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"caseInsensitive" ~~> self.caseInsensitive,
			"path" ~~> self.path,
			"includes" ~~> self.includes,
			"excludes" ~~> self.excludes
            ])
    }
}
public struct SnapshotCreationRequest : Glossy {
	let parents: Bool?
	let folder: String?
	let items: [SnapshotItem]?
	let flatten: Bool?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parents = "parents" <~~ json
		self.folder = "folder" <~~ json
		self.items = "items" <~~ json
		self.flatten = "flatten" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parents" ~~> self.parents,
			"folder" ~~> self.folder,
			"items" ~~> self.items,
			"flatten" ~~> self.flatten,
			"owner" ~~> self.owner
            ])
    }
}
public struct GrantListItem : Glossy {
	let resource: String?
	let action: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.action = "action" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"resource" ~~> self.resource,
			"action" ~~> self.action
            ])
    }
}
public struct GrantList : Glossy {
	let grants: [GrantListItem]?
	let group: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.grants = "grants" <~~ json
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"grants" ~~> self.grants,
			"group" ~~> self.group,
			"owner" ~~> self.owner
            ])
    }
}
public struct GameJoinWithCallback : Glossy {
	let msgId: String?
	let payload: GameJoin?
	let callerId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.msgId = "msgId" <~~ json
		self.payload = "payload" <~~ json
		self.callerId = "callerId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"msgId" ~~> self.msgId,
			"payload" ~~> self.payload,
			"callerId" ~~> self.callerId
            ])
    }
}
public struct HttpClientCall : Glossy {
	let name: String?
	let requestId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.requestId = "requestId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name,
			"requestId" ~~> self.requestId
            ])
    }
}
enum MacroDebugStepType : String {
	case STEP_OVER = "STEP_OVER"
	case RESUME = "RESUME"
	case TERMINATE = "TERMINATE"
	case STEP_INTO = "STEP_INTO"
}
public struct MacroDebugStep : Glossy {
	let token: String?
	let type: MacroDebugStepType?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.type = "type" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"type" ~~> self.type
            ])
    }
}
public struct GameOrganizationWithCallback : Glossy {
	let msgId: String?
	let payload: GameOrganization?
	let callerId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.msgId = "msgId" <~~ json
		self.payload = "payload" <~~ json
		self.callerId = "callerId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"msgId" ~~> self.msgId,
			"payload" ~~> self.payload,
			"callerId" ~~> self.callerId
            ])
    }
}
public struct GdaPutsResult : Glossy {
	let inserted: Int64?
	let table: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.inserted = "inserted" <~~ json
		self.table = "table" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"inserted" ~~> self.inserted,
			"table" ~~> self.table,
			"owner" ~~> self.owner
            ])
    }
}
public struct GdaGet : Glossy {
	let table: String?
	let key: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.table = "table" <~~ json
		self.key = "key" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"table" ~~> self.table,
			"key" ~~> self.key,
			"owner" ~~> self.owner
            ])
    }
}
public struct GdaGetResult : Glossy {
	let request: GdaGet?
	let result: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct SearchDocumentId : Glossy {
	let type: String?
	let id: String?
	let index: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.id = "id" <~~ json
		self.index = "index" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"type" ~~> self.type,
			"id" ~~> self.id,
			"index" ~~> self.index
            ])
    }
}
public struct AggregationPushes : Glossy {
	let items: [AggregationPush]?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.items = "items" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"items" ~~> self.items,
			"owner" ~~> self.owner
            ])
    }
}
public struct WorkflowTransitionDefinition : Glossy {
	let from: String?
	let to: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.from = "from" <~~ json
		self.to = "to" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"from" ~~> self.from,
			"to" ~~> self.to
            ])
    }
}
public struct WorkflowTemplate : Glossy {
	let states: [WorkflowStateDefinition]?
	let templateName: String?
	let transitions: [WorkflowTransitionDefinition]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.states = "states" <~~ json
		self.templateName = "templateName" <~~ json
		self.transitions = "transitions" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"states" ~~> self.states,
			"templateName" ~~> self.templateName,
			"transitions" ~~> self.transitions
            ])
    }
}
public struct WorkflowTransitionInfo : Glossy {
	let workflow: String?
	let newState: String?
	let state: String?
	let userData: NSObject?
	let creation: Int64?
	let firstState: String?
	let owner: String?
	let template: WorkflowTemplate?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.workflow = "workflow" <~~ json
		self.newState = "newState" <~~ json
		self.state = "state" <~~ json
		self.userData = "userData" <~~ json
		self.creation = "creation" <~~ json
		self.firstState = "firstState" <~~ json
		self.owner = "owner" <~~ json
		self.template = "template" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"workflow" ~~> self.workflow,
			"newState" ~~> self.newState,
			"state" ~~> self.state,
			"userData" ~~> self.userData,
			"creation" ~~> self.creation,
			"firstState" ~~> self.firstState,
			"owner" ~~> self.owner,
			"template" ~~> self.template
            ])
    }
}
public struct WorkflowTemplateListResult : Glossy {
	let request: WorkflowTemplateList?
	let result: PageContentWorkflowTemplate?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct UserInfoRequest : Glossy {
	let userKeys: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.userKeys = "userKeys" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"userKeys" ~~> self.userKeys
            ])
    }
}
public struct Grants : Glossy {
	let resource: String?
	let actions: [String]?
	let group: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.actions = "actions" <~~ json
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"resource" ~~> self.resource,
			"actions" ~~> self.actions,
			"group" ~~> self.group,
			"owner" ~~> self.owner
            ])
    }
}
public struct FolderListingRequest : Glossy {
	let folder: String?
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.folder = "folder" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"folder" ~~> self.folder,
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
enum Type : String {
	case BREAK = "BREAK"
	case CONTINUE = "CONTINUE"
}
public struct MacroJump : Glossy {
	let description: String?
	let type: Type?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.type = "type" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"type" ~~> self.type,
			"line" ~~> self.line
            ])
    }
}
public struct StackListRequest : Glossy {
	let stack: String?
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.stack = "stack" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"stack" ~~> self.stack,
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
public struct MacroDebugBreakpoint : Glossy {
	let line: Int?
	let location: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.line = "line" <~~ json
		self.location = "location" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"line" ~~> self.line,
			"location" ~~> self.location
            ])
    }
}
public struct MacroDebugSession : Glossy {
	let parameters: NSDictionary?
	let token: String?
	let breakpoints: [MacroDebugBreakpoint]?
	let hardFail: Bool?
	let name: String?
	let requestId: String?
	let debug: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parameters = "parameters" <~~ json
		self.token = "token" <~~ json
		self.breakpoints = "breakpoints" <~~ json
		self.hardFail = "hardFail" <~~ json
		self.name = "name" <~~ json
		self.requestId = "requestId" <~~ json
		self.debug = "debug" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parameters" ~~> self.parameters,
			"token" ~~> self.token,
			"breakpoints" ~~> self.breakpoints,
			"hardFail" ~~> self.hardFail,
			"name" ~~> self.name,
			"requestId" ~~> self.requestId,
			"debug" ~~> self.debug
            ])
    }
}
public struct UserMembership : Glossy {
	let user: String?
	let hardFail: Bool?
	let group: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.hardFail = "hardFail" <~~ json
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"user" ~~> self.user,
			"hardFail" ~~> self.hardFail,
			"group" ~~> self.group,
			"owner" ~~> self.owner
            ])
    }
}
public struct GameInfo : Glossy {
	let description: String?
	let commands: NSDictionary?
	let name: String?
	let options: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.commands = "commands" <~~ json
		self.name = "name" <~~ json
		self.options = "options" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"commands" ~~> self.commands,
			"name" ~~> self.name,
			"options" ~~> self.options
            ])
    }
}
public struct GameRunnerRegistration : Glossy {
	let maxGames: Int?
	let gameInfo: GameInfo?
	let location: GameRunnerFullLocation?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.maxGames = "maxGames" <~~ json
		self.gameInfo = "gameInfo" <~~ json
		self.location = "location" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"maxGames" ~~> self.maxGames,
			"gameInfo" ~~> self.gameInfo,
			"location" ~~> self.location
            ])
    }
}
public struct PingRequest : Glossy {
	let action: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.action = "action" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"action" ~~> self.action
            ])
    }
}
public struct UserControlRequest : Glossy {
	let publicToken: String?
	let fullRights: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.publicToken = "publicToken" <~~ json
		self.fullRights = "fullRights" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"publicToken" ~~> self.publicToken,
			"fullRights" ~~> self.fullRights
            ])
    }
}
public struct ApiTriggerListener : Glossy {
	let trigger: ApiTriggerId?
	let parameter: NSDictionary?
	let deploymentId: String?
	let verb: String?
	let loud: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.trigger = "trigger" <~~ json
		self.parameter = "parameter" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.verb = "verb" <~~ json
		self.loud = "loud" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"trigger" ~~> self.trigger,
			"parameter" ~~> self.parameter,
			"deploymentId" ~~> self.deploymentId,
			"verb" ~~> self.verb,
			"loud" ~~> self.loud
            ])
    }
}
public struct MassTriggers : Glossy {
	let triggers: [TriggerListener]?
	let purge: Bool?
	let apiTriggers: [ApiTriggerListener]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.triggers = "triggers" <~~ json
		self.purge = "purge" <~~ json
		self.apiTriggers = "apiTriggers" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"triggers" ~~> self.triggers,
			"purge" ~~> self.purge,
			"apiTriggers" ~~> self.apiTriggers
            ])
    }
}
public struct ImpersonatedRequest : Glossy {
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"owner" ~~> self.owner
            ])
    }
}
public struct MacroBlock : Glossy {
	let description: String?
	let steps: [MacroStep]?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.steps = "steps" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"steps" ~~> self.steps,
			"line" ~~> self.line
            ])
    }
}
public struct MacroTest : Glossy {
	let description: String?
	let steps: [MacroStep]?
	let otherwise: MacroBlock?
	let line: Int?
	let condition: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.description = "description" <~~ json
		self.steps = "steps" <~~ json
		self.otherwise = "otherwise" <~~ json
		self.line = "line" <~~ json
		self.condition = "condition" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"description" ~~> self.description,
			"steps" ~~> self.steps,
			"otherwise" ~~> self.otherwise,
			"line" ~~> self.line,
			"condition" ~~> self.condition
            ])
    }
}
public struct RdbmsSimpleQuery : Glossy {
	let statement: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.statement = "statement" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"statement" ~~> self.statement
            ])
    }
}
public struct DeviceAvailability : Glossy {
	let user: String?
	let resource: String?
	let available: Bool?
	let uid: String?
	let owner: String?
	let action: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.resource = "resource" <~~ json
		self.available = "available" <~~ json
		self.uid = "uid" <~~ json
		self.owner = "owner" <~~ json
		self.action = "action" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"user" ~~> self.user,
			"resource" ~~> self.resource,
			"available" ~~> self.available,
			"uid" ~~> self.uid,
			"owner" ~~> self.owner,
			"action" ~~> self.action
            ])
    }
}
enum GdaDataType : String {
	case LONG = "LONG"
	case STRING = "STRING"
	case BOOLEAN = "BOOLEAN"
	case DOUBLE = "DOUBLE"
	case OBJECT = "OBJECT"
}
public struct GdaTableColumn : Glossy {
	let type: GdaDataType?
	let name: String?
	let map: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.name = "name" <~~ json
		self.map = "map" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"type" ~~> self.type,
			"name" ~~> self.name,
			"map" ~~> self.map
            ])
    }
}
public struct GdaTableModification : Glossy {
	let columns: [GdaTableColumn]?
	let name: String?
	let idempotence: Idempotence?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.name = "name" <~~ json
		self.idempotence = "idempotence" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"name" ~~> self.name,
			"idempotence" ~~> self.idempotence
            ])
    }
}
public struct GdaTableStructure : Glossy {
	let columns: [GdaTableColumn]?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"name" ~~> self.name
            ])
    }
}
public struct MacroVariable : Glossy {
	let value: NSObject?
	let description: String?
	let _var: String?
	let line: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.description = "description" <~~ json
		self._var = "var" <~~ json
		self.line = "line" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"value" ~~> self.value,
			"description" ~~> self.description,
			"var" ~~> self._var,
			"line" ~~> self.line
            ])
    }
}
public struct GroupPresence : Glossy {
	let group: String?
	let owner: String?
	let presences: [Presence]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
		self.presences = "presences" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"group" ~~> self.group,
			"owner" ~~> self.owner,
			"presences" ~~> self.presences
            ])
    }
}
public struct MacroTypeDefinition : Glossy {
	let fields: [MacroScriptParam]?
	let name: String?
	let thisObject: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.fields = "fields" <~~ json
		self.name = "name" <~~ json
		self.thisObject = "thisObject" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"fields" ~~> self.fields,
			"name" ~~> self.name,
			"thisObject" ~~> self.thisObject
            ])
    }
}
public struct MacroInfos : Glossy {
	let macros: [MacroInfo]?
	let purge: Bool?
	let functions: [MacroFunction]?
	let deploymentId: String?
	let globals: NSDictionary?
	let types: [MacroTypeDefinition]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.macros = "macros" <~~ json
		self.purge = "purge" <~~ json
		self.functions = "functions" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.globals = "globals" <~~ json
		self.types = "types" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"macros" ~~> self.macros,
			"purge" ~~> self.purge,
			"functions" ~~> self.functions,
			"deploymentId" ~~> self.deploymentId,
			"globals" ~~> self.globals,
			"types" ~~> self.types
            ])
    }
}
public struct WorkflowCreationRequest : Glossy {
	let templateName: String?
	let userData: NSObject?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.templateName = "templateName" <~~ json
		self.userData = "userData" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"templateName" ~~> self.templateName,
			"userData" ~~> self.userData,
			"owner" ~~> self.owner
            ])
    }
}
public struct SmsMessage : Glossy {
	let sender: String?
	let message: String?
	let receivers: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.sender = "sender" <~~ json
		self.message = "message" <~~ json
		self.receivers = "receivers" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"sender" ~~> self.sender,
			"message" ~~> self.message,
			"receivers" ~~> self.receivers
            ])
    }
}
public struct GdaRemoveColumns : Glossy {
	let columns: [String]?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"name" ~~> self.name
            ])
    }
}
public struct MacroPlay : Glossy {
	let parameters: NSDictionary?
	let hardFail: Bool?
	let name: String?
	let requestId: String?
	let debug: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parameters = "parameters" <~~ json
		self.hardFail = "hardFail" <~~ json
		self.name = "name" <~~ json
		self.requestId = "requestId" <~~ json
		self.debug = "debug" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parameters" ~~> self.parameters,
			"hardFail" ~~> self.hardFail,
			"name" ~~> self.name,
			"requestId" ~~> self.requestId,
			"debug" ~~> self.debug
            ])
    }
}
public struct GdaPut : Glossy {
	let table: String?
	let data: NSObject?
	let key: String?
	let key2: String?
	let owner: String?
	let column: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.table = "table" <~~ json
		self.data = "data" <~~ json
		self.key = "key" <~~ json
		self.key2 = "key2" <~~ json
		self.owner = "owner" <~~ json
		self.column = "column" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"table" ~~> self.table,
			"data" ~~> self.data,
			"key" ~~> self.key,
			"key2" ~~> self.key2,
			"owner" ~~> self.owner,
			"column" ~~> self.column
            ])
    }
}
public struct ListOrSingle : Glossy {
	let values: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.values = "values" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"values" ~~> self.values
            ])
    }
}
public struct MacroDebugBreakpointSet : Glossy {
	let breakpoint: MacroDebugBreakpoint?
	let token: String?
	let enabled: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.breakpoint = "breakpoint" <~~ json
		self.token = "token" <~~ json
		self.enabled = "enabled" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"breakpoint" ~~> self.breakpoint,
			"token" ~~> self.token,
			"enabled" ~~> self.enabled
            ])
    }
}
public struct ResetRequest : Glossy {
	let key: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.key = "key" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"key" ~~> self.key
            ])
    }
}
public struct GdaPutsRow : Glossy {
	let data: NSDictionary?
	let key: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.data = "data" <~~ json
		self.key = "key" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"data" ~~> self.data,
			"key" ~~> self.key
            ])
    }
}
public struct GdaPuts : Glossy {
	let rows: [GdaPutsRow]?
	let table: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.rows = "rows" <~~ json
		self.table = "table" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"rows" ~~> self.rows,
			"table" ~~> self.table,
			"owner" ~~> self.owner
            ])
    }
}
public struct WorkflowTransitionRequest : Glossy {
	let workflow: String?
	let to: String?
	let userData: NSObject?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.workflow = "workflow" <~~ json
		self.to = "to" <~~ json
		self.userData = "userData" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"workflow" ~~> self.workflow,
			"to" ~~> self.to,
			"userData" ~~> self.userData,
			"owner" ~~> self.owner
            ])
    }
}
enum Format : String {
	case Y = "Y"
	case YMDHMSN = "YMDHMSN"
	case YMDHMS = "YMDHMS"
	case YMDHMSM = "YMDHMSM"
	case YMD = "YMD"
	case YMDH = "YMDH"
	case YMDHM = "YMDHM"
	case YM = "YM"
}
public struct NotificationMessage : Glossy {
	let resource: String?
	let target: String?
	let message: String?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.resource = "resource" <~~ json
		self.target = "target" <~~ json
		self.message = "message" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"resource" ~~> self.resource,
			"target" ~~> self.target,
			"message" ~~> self.message,
			"data" ~~> self.data
            ])
    }
}
public struct NotifiableApplication : Glossy {
	let credential: String?
	let applicationName: String?
	let platform: NotificationPlatform?
	let principal: String?
	let appId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.credential = "credential" <~~ json
		self.applicationName = "applicationName" <~~ json
		self.platform = "platform" <~~ json
		self.principal = "principal" <~~ json
		self.appId = "appId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"credential" ~~> self.credential,
			"applicationName" ~~> self.applicationName,
			"platform" ~~> self.platform,
			"principal" ~~> self.principal,
			"appId" ~~> self.appId
            ])
    }
}
public struct QueueTask : Glossy {
	let done: Bool?
	let request: TaskRequest?
	let businessId: String?
	let taskId: String?
	let comet: String?
	let deploymentId: String?
	let assignee: OwnerResource?
	let dispatched: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.done = "done" <~~ json
		self.request = "request" <~~ json
		self.businessId = "businessId" <~~ json
		self.taskId = "taskId" <~~ json
		self.comet = "comet" <~~ json
		self.deploymentId = "deploymentId" <~~ json
		self.assignee = "assignee" <~~ json
		self.dispatched = "dispatched" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"done" ~~> self.done,
			"request" ~~> self.request,
			"businessId" ~~> self.businessId,
			"taskId" ~~> self.taskId,
			"comet" ~~> self.comet,
			"deploymentId" ~~> self.deploymentId,
			"assignee" ~~> self.assignee,
			"dispatched" ~~> self.dispatched
            ])
    }
}
public struct WorkflowList : Glossy {
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
public struct CronTaskDeletion : Glossy {
	let cronName: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.cronName = "cronName" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"cronName" ~~> self.cronName,
			"owner" ~~> self.owner
            ])
    }
}
public struct TaskConsumerRegistration : Glossy {
	let capacity: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.capacity = "capacity" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"capacity" ~~> self.capacity
            ])
    }
}
public struct GrantCheckRequest : Glossy {
	let user: String?
	let resource: String?
	let owner: String?
	let action: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.resource = "resource" <~~ json
		self.owner = "owner" <~~ json
		self.action = "action" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"user" ~~> self.user,
			"resource" ~~> self.resource,
			"owner" ~~> self.owner,
			"action" ~~> self.action
            ])
    }
}
public struct GrantCheckResult : Glossy {
	let request: GrantCheckRequest?
	let ok: Bool?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.ok = "ok" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"ok" ~~> self.ok
            ])
    }
}
public struct ThumbnailResult : Glossy {
	let baseFile: UploadedFile?
	let thumbnails: [Thumbnail]?
	let failed: [ZetaApiError]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.baseFile = "baseFile" <~~ json
		self.thumbnails = "thumbnails" <~~ json
		self.failed = "failed" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"baseFile" ~~> self.baseFile,
			"thumbnails" ~~> self.thumbnails,
			"failed" ~~> self.failed
            ])
    }
}
public struct UserToken : Glossy {
	let token: String?
	let publicToken: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.publicToken = "publicToken" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"publicToken" ~~> self.publicToken
            ])
    }
}
public struct ProvisioningResult : Glossy {
	let users: [UserToken]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.users = "users" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"users" ~~> self.users
            ])
    }
}
public struct GdaColumnSpec : Glossy {
	let key2: [String]?
	let column: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.key2 = "key2" <~~ json
		self.column = "column" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"key2" ~~> self.key2,
			"column" ~~> self.column
            ])
    }
}
public struct GdaList : Glossy {
	let columns: [GdaColumnSpec]?
	let table: String?
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.table = "table" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"table" ~~> self.table,
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
public struct GdaListResult : Glossy {
	let request: GdaList?
	let result: PageContentNSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct GdaRemoveRange : Glossy {
	let columns: [GdaColumnSpec]?
	let start: String?
	let table: String?
	let stop: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.start = "start" <~~ json
		self.table = "table" <~~ json
		self.stop = "stop" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"start" ~~> self.start,
			"table" ~~> self.table,
			"stop" ~~> self.stop,
			"owner" ~~> self.owner
            ])
    }
}
public struct GdaRange : Glossy {
	let columns: [GdaColumnSpec]?
	let start: String?
	let table: String?
	let stop: String?
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.start = "start" <~~ json
		self.table = "table" <~~ json
		self.stop = "stop" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"start" ~~> self.start,
			"table" ~~> self.table,
			"stop" ~~> self.stop,
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
public struct GdaRangeResult : Glossy {
	let request: GdaRange?
	let result: PageContentNSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct GdaMultiGetRequest : Glossy {
	let columns: [GdaColumnSpec]?
	let table: String?
	let keys: [String]?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.table = "table" <~~ json
		self.keys = "keys" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"table" ~~> self.table,
			"keys" ~~> self.keys,
			"owner" ~~> self.owner
            ])
    }
}
public struct GdaMultiGetResult : Glossy {
	let request: GdaMultiGetRequest?
	let result: [NSDictionary]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct GdaReduceRequest : Glossy {
	let columns: [GdaColumnSpec]?
	let start: String?
	let initialValue: NSDictionary?
	let table: String?
	let stop: String?
	let function: NSObject?
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.columns = "columns" <~~ json
		self.start = "start" <~~ json
		self.initialValue = "initialValue" <~~ json
		self.table = "table" <~~ json
		self.stop = "stop" <~~ json
		self.function = "function" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"columns" ~~> self.columns,
			"start" ~~> self.start,
			"initialValue" ~~> self.initialValue,
			"table" ~~> self.table,
			"stop" ~~> self.stop,
			"function" ~~> self.function,
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
public struct GdaReduceResult : Glossy {
	let request: GdaReduceRequest?
	let result: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct SearchData : Glossy {
	let type: String?
	let id: String?
	let index: String?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.type = "type" <~~ json
		self.id = "id" <~~ json
		self.index = "index" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"type" ~~> self.type,
			"id" ~~> self.id,
			"index" ~~> self.index,
			"data" ~~> self.data
            ])
    }
}
public struct MacroDebugInfoRequest : Glossy {
	let token: String?
	let path: String?
	let exp: String?
	let requestId: String?
	let frame: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.token = "token" <~~ json
		self.path = "path" <~~ json
		self.exp = "exp" <~~ json
		self.requestId = "requestId" <~~ json
		self.frame = "frame" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"token" ~~> self.token,
			"path" ~~> self.path,
			"exp" ~~> self.exp,
			"requestId" ~~> self.requestId,
			"frame" ~~> self.frame
            ])
    }
}
public struct SearchIndex : Glossy {
	let index: String?
	let mappings: NSDictionary?
	let settings: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.index = "index" <~~ json
		self.mappings = "mappings" <~~ json
		self.settings = "settings" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"index" ~~> self.index,
			"mappings" ~~> self.mappings,
			"settings" ~~> self.settings
            ])
    }
}
public struct CronTaskListRequest : Glossy {
	let start: Int64?
	let stop: Int64?
	let owner: String?
	let page: Pagination?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.start = "start" <~~ json
		self.stop = "stop" <~~ json
		self.owner = "owner" <~~ json
		self.page = "page" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"start" ~~> self.start,
			"stop" ~~> self.stop,
			"owner" ~~> self.owner,
			"page" ~~> self.page
            ])
    }
}
public struct FileUploadLocation : Glossy {
	let httpMethod: String?
	let guid: String?
	let url: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.httpMethod = "httpMethod" <~~ json
		self.guid = "guid" <~~ json
		self.url = "url" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"httpMethod" ~~> self.httpMethod,
			"guid" ~~> self.guid,
			"url" ~~> self.url,
			"owner" ~~> self.owner
            ])
    }
}
public struct WorkflowInfo : Glossy {
	let workflow: String?
	let state: String?
	let userData: NSObject?
	let creation: Int64?
	let firstState: String?
	let owner: String?
	let template: WorkflowTemplate?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.workflow = "workflow" <~~ json
		self.state = "state" <~~ json
		self.userData = "userData" <~~ json
		self.creation = "creation" <~~ json
		self.firstState = "firstState" <~~ json
		self.owner = "owner" <~~ json
		self.template = "template" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"workflow" ~~> self.workflow,
			"state" ~~> self.state,
			"userData" ~~> self.userData,
			"creation" ~~> self.creation,
			"firstState" ~~> self.firstState,
			"owner" ~~> self.owner,
			"template" ~~> self.template
            ])
    }
}
public struct GameState : Glossy {
	let status: GameStatus?
	let gameId: String?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.status = "status" <~~ json
		self.gameId = "gameId" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"status" ~~> self.status,
			"gameId" ~~> self.gameId,
			"data" ~~> self.data
            ])
    }
}
public struct StackItem : Glossy {
	let guid: [Int8]?
	let ts: Int64?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.guid = "guid" <~~ json
		self.ts = "ts" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"guid" ~~> self.guid,
			"ts" ~~> self.ts,
			"data" ~~> self.data
            ])
    }
}
public struct StackListResponse : Glossy {
	let request: StackListRequest?
	let result: PageContentStackItem?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.result = "result" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"result" ~~> self.result
            ])
    }
}
public struct TemplateInfo : Glossy {
	let name: String?
	let languageTags: [String]?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.name = "name" <~~ json
		self.languageTags = "languageTags" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"name" ~~> self.name,
			"languageTags" ~~> self.languageTags
            ])
    }
}
public struct TemplateResult : Glossy {
	let content: String?
	let requestId: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.content = "content" <~~ json
		self.requestId = "requestId" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"content" ~~> self.content,
			"requestId" ~~> self.requestId
            ])
    }
}
public struct CronPlanning : Glossy {
	let request: CronTaskListRequest?
	let tasks: PageContentCronTaskRequest?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.request = "request" <~~ json
		self.tasks = "tasks" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"request" ~~> self.request,
			"tasks" ~~> self.tasks
            ])
    }
}
enum TraceLevel : String {
	case DEBUG = "DEBUG"
	case ERROR = "ERROR"
	case TRACE = "TRACE"
	case WARN = "WARN"
	case INFO = "INFO"
}
public struct MacroTrace : Glossy {
	let n: Int?
	let data: NSObject?
	let line: Int?
	let owner: String?
	let level: TraceLevel?
	let location: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.n = "n" <~~ json
		self.data = "data" <~~ json
		self.line = "line" <~~ json
		self.owner = "owner" <~~ json
		self.level = "level" <~~ json
		self.location = "location" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"n" ~~> self.n,
			"data" ~~> self.data,
			"line" ~~> self.line,
			"owner" ~~> self.owner,
			"level" ~~> self.level,
			"location" ~~> self.location
            ])
    }
}
public struct UserGroupMembership : Glossy {
	let user: String?
	let member: Bool?
	let group: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.user = "user" <~~ json
		self.member = "member" <~~ json
		self.group = "group" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"user" ~~> self.user,
			"member" ~~> self.member,
			"group" ~~> self.group,
			"owner" ~~> self.owner
            ])
    }
}
public struct StackItemAdd : Glossy {
	let guid: [Int8]?
	let stack: String?
	let data: NSDictionary?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.guid = "guid" <~~ json
		self.stack = "stack" <~~ json
		self.data = "data" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"guid" ~~> self.guid,
			"stack" ~~> self.stack,
			"data" ~~> self.data,
			"owner" ~~> self.owner
            ])
    }
}
enum ChronoUnit : String {
	case SECONDS = "SECONDS"
	case MICROS = "MICROS"
	case FOREVER = "FOREVER"
	case CENTURIES = "CENTURIES"
	case MILLIS = "MILLIS"
	case DAYS = "DAYS"
	case HALF_DAYS = "HALF_DAYS"
	case MONTHS = "MONTHS"
	case WEEKS = "WEEKS"
	case HOURS = "HOURS"
	case NANOS = "NANOS"
	case YEARS = "YEARS"
	case DECADES = "DECADES"
	case ERAS = "ERAS"
	case MILLENNIA = "MILLENNIA"
	case MINUTES = "MINUTES"
}
public struct FolderCreationRequest : Glossy {
	let parents: Bool?
	let folder: String?
	let owner: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.parents = "parents" <~~ json
		self.folder = "folder" <~~ json
		self.owner = "owner" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"parents" ~~> self.parents,
			"folder" ~~> self.folder,
			"owner" ~~> self.owner
            ])
    }
}
public struct TimerResult : Glossy {
	let id: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.id = "id" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"id" ~~> self.id
            ])
    }
}
public struct MacroDebugEventVar : Glossy {
	let value: MacroDebugFrameValue?
	let type: String?
	let _var: String?
	let error: ZetaApiError?
	let requestId: String?
	let frame: Int?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.type = "type" <~~ json
		self._var = "var" <~~ json
		self.error = "error" <~~ json
		self.requestId = "requestId" <~~ json
		self.frame = "frame" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"value" ~~> self.value,
			"type" ~~> self.type,
			"var" ~~> self._var,
			"error" ~~> self.error,
			"requestId" ~~> self.requestId,
			"frame" ~~> self.frame
            ])
    }
}
public struct MacroDebugFrameVariable : Glossy {
	let value: MacroDebugFrameValue?
	let type: String?
	let name: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.type = "type" <~~ json
		self.name = "name" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"value" ~~> self.value,
			"type" ~~> self.type,
			"name" ~~> self.name
            ])
    }
}
public struct MacroDebugFrame : Glossy {
	let vars: [MacroDebugFrameVariable]?
	let macroName: String?
	let line: Int?
	let location: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.vars = "vars" <~~ json
		self.macroName = "macroName" <~~ json
		self.line = "line" <~~ json
		self.location = "location" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"vars" ~~> self.vars,
			"macroName" ~~> self.macroName,
			"line" ~~> self.line,
			"location" ~~> self.location
            ])
    }
}
public struct MacroDebugFrameValue : Glossy {
	let value: NSObject?
	let vars: [MacroDebugFrameVariable]?
	let type: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.value = "value" <~~ json
		self.vars = "vars" <~~ json
		self.type = "type" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"value" ~~> self.value,
			"vars" ~~> self.vars,
			"type" ~~> self.type
            ])
    }
}
public struct MacroDebugEventPause : Glossy {
	let frames: [MacroDebugFrame]?
	let stepIntoPossible: Bool?
	let line: Int?
	let location: String?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.frames = "frames" <~~ json
		self.stepIntoPossible = "stepIntoPossible" <~~ json
		self.line = "line" <~~ json
		self.location = "location" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"frames" ~~> self.frames,
			"stepIntoPossible" ~~> self.stepIntoPossible,
			"line" ~~> self.line,
			"location" ~~> self.location
            ])
    }
}
public struct Message : Glossy {
	let target: NSObject?
	let channel: String?
	let source: String?
	let data: NSDictionary?
	// MARK: - Deserialization
	public init?(json: JSON) {
		self.target = "target" <~~ json
		self.channel = "channel" <~~ json
		self.source = "source" <~~ json
		self.data = "data" <~~ json
	}
	// MARK: - Serialization
	public func toJSON() -> JSON? {
		return jsonify([
			"target" ~~> self.target,
			"channel" ~~> self.channel,
			"source" ~~> self.source,
			"data" ~~> self.data
            ])
    }
}
