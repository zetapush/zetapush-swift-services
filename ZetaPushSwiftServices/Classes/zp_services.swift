//	Generated file for Swift SDK services
//  Copyright © 2017 zetapush. All rights reserved.
//


import Foundation
import ZetaPushSwift
import Gloss
import PromiseKit

/**
 * Data aggregation
 * 
 * Provides data aggregation over time and across different items
 *  User devices push items data on developer-defined categories
 *  This service automatically aggregates the data
 * Raw data is not available for reading, only the generated aggregation result
 * 
 * */
/**
 * User API for item aggregation
 * 
 * Users can push data and be notified of aggregated data.
 * This service does not allow you to read the data. To achieve that kind of behavior, you could configure a callback to store the data.
 * @access public
 * */
public class AggregPublisher : ZetaPushServicePublisher {
	/**
	 * Pushes some data
	 * 
	 * Pushes the given data.
	 * All the items are processed according to the defined rules.
	 * At least one push for a given item is needed during a time period to trigger processing and calling of the corresponding callback verb/macro.
	 * */
	func push(parameter: AggregationPushes) {
		self.zetaPushService.publishGeneric(verb: "push", parameters: parameter)
	}
}
/**
 * Data stacks
 * 
 * Stacks are a per-user named persistent queue of data
 *  An administrator creates a stack service
 *  End-users can push data on an arbitrary number of their own arbitrary named stacks
 * */
/**
 * Data stack user API
 * 
 * Data is stored on a per user basis. However, notifications can be sent to a configurable set of listeners.
 * Stack names are arbitrary and do not need to be explicitly initialized.
 * @access public
 * */
public class StackPublisher : ZetaPushServicePublisher {
	/**
	 * Lists the listeners
	 * 
	 * Returns the whole list of listeners for the given stack.
	 * */
	func getListeners(parameter: StackRequest) {
		self.zetaPushService.publishGeneric(verb: "getListeners", parameters: parameter)
	}
	/**
	 * Lists content
	 * 
	 * Returns a paginated list of contents for the given stack.
	 * Content is sorted according to the statically configured order.
	 * */
	func list(parameter: StackListRequest) {
		self.zetaPushService.publishGeneric(verb: "list", parameters: parameter)
	}
	/**
	 * Empties a stack
	 * 
	 * Removes all items from the given stack.
	 * */
	func purge(parameter: StackRequest) {
		self.zetaPushService.publishGeneric(verb: "purge", parameters: parameter)
	}
	/**
	 * Pushes an item
	 * 
	 * Pushes an item onto the given stack.
	 * The stack does not need to be created.
	 * */
	func push(parameter: StackItemAdd) {
		self.zetaPushService.publishGeneric(verb: "push", parameters: parameter)
	}
	/**
	 * Removes items
	 * 
	 * Removes the item with the given guid from the given stack.
	 * */
	func remove(parameter: StackItemRemove) {
		self.zetaPushService.publishGeneric(verb: "remove", parameters: parameter)
	}
	/**
	 * Sets the listeners
	 * 
	 * Sets the listeners for the given stack.
	 * */
	func setListeners(parameter: StackListeners) {
		self.zetaPushService.publishGeneric(verb: "setListeners", parameters: parameter)
	}
	/**
	 * Updates an item
	 * 
	 * Updates an existing item of the given stack.
	 * The item MUST exist prior to the call.
	 * */
	func update(parameter: StackItemAdd) {
		self.zetaPushService.publishGeneric(verb: "update", parameters: parameter)
	}
}
public class StackListener : ZetaPushServiceListener {

	// Listener for "getListeners"
	open func on_getListeners(_ parameter: StackListeners) { }
	// Listener for "list"
	open func on_list(_ parameter: StackListResponse) { }
	// Listener for "purge"
	open func on_purge(_ parameter: StackRequest) { }
	// Listener for "push"
	open func on_push(_ parameter: StackItemAdd) { }
	// Listener for "remove"
	open func on_remove(_ parameter: StackItemRemove) { }
	// Listener for "setListeners"
	open func on_setListeners(_ parameter: StackListeners) { }
	// Listener for "update"
	open func on_update(_ parameter: StackItemAdd) { }
	public override func register() {
		self.genericSubscribe(verb: "getListeners") { (data) in
			self.on_getListeners(data)
		}
		self.genericSubscribe(verb: "list") { (data) in
			self.on_list(data)
		}
		self.genericSubscribe(verb: "purge") { (data) in
			self.on_purge(data)
		}
		self.genericSubscribe(verb: "push") { (data) in
			self.on_push(data)
		}
		self.genericSubscribe(verb: "remove") { (data) in
			self.on_remove(data)
		}
		self.genericSubscribe(verb: "setListeners") { (data) in
			self.on_setListeners(data)
		}
		self.genericSubscribe(verb: "update") { (data) in
			self.on_update(data)
		}
	}
}
/**
 * Echo
 * 
 * Echo
 * */
/**
 * Echo service
 * 
 * Simple echo service, for development purposes.
 * @access public
 * */
public class EchoPublisher : ZetaPushServicePublisher {
	/**
	 * Echoes an object
	 * 
	 * Echoes an object: the server will echo that object on channel 'echo' for the current user.
	 * */
	func echo(parameter: NSDictionary) {
		self.zetaPushService.publishGeneric(verb: "echo", parameters: parameter)
	}
}
public class EchoListener : ZetaPushServiceListener {

	// Listener for "echo"
	open func on_echo(_ parameter: NSDictionary) { }
	public override func register() {
		self.genericSubscribe(verb: "echo") { (data) in
			self.on_echo(data)
		}
	}
}
/**
 * Game engine
 * 
 * Abstract Game Engine
 *  Concrete game engines are remote cometd clients or internal macros
 * */
/**
 * Game Engine API
 * 
 * The Game Engine API is for game engine clients, not end-users.
 * @access public
 * */
public class GameEnginePublisher : ZetaPushServicePublisher {
	/**
	 * Notify the result for a join request
	 * 
	 * A Game Engine notifies the STR of the result of a join request that it received on join_callback
	 * */
	func join_result(parameter: GameJoinResponse) {
		self.zetaPushService.publishGeneric(verb: "join_result", parameters: parameter)
	}
	/**
	 * Notify the result for an organization request
	 * 
	 * A Game Engine notifies the STR of the result of an organization request that it received on organize_callback
	 * */
	func organize_result(parameter: GameOrganizationResponse) {
		self.zetaPushService.publishGeneric(verb: "organize_result", parameters: parameter)
	}
	/**
	 * Registers a game engine
	 * 
	 * A client registers itself to the STR as a Game Engine.
	 * The STR may, from now on, dispatch game of the given game type to said client.
	 * Unregistration is done automatically on logoff.
	 * */
	func register(parameter: GameRunnerRegistration) {
		self.zetaPushService.publishGeneric(verb: "register", parameters: parameter)
	}
	/**
	 * Notify the result for a start request
	 * 
	 * A Game Engine notifies the STR of the result of a start request that it received on start_callback
	 * */
	func start_result(parameter: GameStart) {
		self.zetaPushService.publishGeneric(verb: "start_result", parameters: parameter)
	}
	/**
	 * Notify a game event
	 * 
	 * A Game Engine notifies the STR of some arbitrary game event.
	 * */
	func state(parameter: GameState) {
		self.zetaPushService.publishGeneric(verb: "state", parameters: parameter)
	}
	/**
	 * Notify the result for an unjoin request
	 * 
	 * A Game Engine notifies the STR of the result of an unjoin request that it received on unjoin_callback
	 * */
	func unjoin_result(parameter: GameJoinResponse) {
		self.zetaPushService.publishGeneric(verb: "unjoin_result", parameters: parameter)
	}
}
/**
 * User API for games
 * 
 * Users can list, start, join games, and play.
 * @access public
 * */
public class GamePublisher : ZetaPushServicePublisher {
	/**
	 * Lists game types
	 * 
	 * Returns the list of game types supported by the server and the currently registered game engines.
	 * */
	func available() {
		self.zetaPushService.publishGeneric(verb: "available")
	}
	/**A user joins a game*/
	func join(parameter: GameJoin) {
		self.zetaPushService.publishGeneric(verb: "join", parameters: parameter)
	}
	/**Organizes a game*/
	func organize(parameter: GameOrganization) {
		self.zetaPushService.publishGeneric(verb: "organize", parameters: parameter)
	}
	/**Gives some command to the game engine*/
	func play(parameter: GamePlay) {
		self.zetaPushService.publishGeneric(verb: "play", parameters: parameter)
	}
	/**Starts a game*/
	func start(parameter: GameStart) {
		self.zetaPushService.publishGeneric(verb: "start", parameters: parameter)
	}
	/**A user cancels joining a game*/
	func unjoin(parameter: GameJoin) {
		self.zetaPushService.publishGeneric(verb: "unjoin", parameters: parameter)
	}
}
public class GameListener : ZetaPushServiceListener {

	// Listener for "available"
	open func on_available(_ parameter: [GameInfo]) { }
	public override func register() {
		self.genericSubscribe(verb: "available") { (data) in
			self.on_available(data)
		}
	}
}
/**
 * Generic Data Access
 * 
 * Generic Data Access Service : NoSQL storage
 * */
/**
 * GDA User API
 * 
 * User API for Generic Data Access.
 * The data are stored on a per-user basis.
 * Users can put, get, list their data.
 * @access public
 * */
public class GdaPublisher : ZetaPushServicePublisher {
	/**
	 * Asks for a data row
	 * 
	 * Returns a full data row.
	 * */
	func get(parameter: GdaGet) {
		self.zetaPushService.publishGeneric(verb: "get", parameters: parameter)
	}
	/**
	 * Asks for a data cell
	 * 
	 * Returns a precise list of cells from a column in a data row.
	 * */
	func getCells(parameter: GdaCellsRequest) {
		self.zetaPushService.publishGeneric(verb: "getCells", parameters: parameter)
	}
	/**
	 * Increments an integer value
	 * 
	 * Increments a cell 64-bit signed integer value and returns the result in the data field.
	 * The increment is atomic : if you concurrently increment 10 times a value by 1, the final result will be the initial value plus 10. The actual individual resulting values seen by the 10 concurrent callers may vary discontinuously, with duplicates : at least one of them will see the final (+10) result.
	 * */
	func inc(parameter: GdaPut) {
		self.zetaPushService.publishGeneric(verb: "inc", parameters: parameter)
	}
	/**
	 * Asks for a list of rows
	 * 
	 * Returns a paginated list of rows from the given table.
	 * */
	func list(parameter: GdaList) {
		self.zetaPushService.publishGeneric(verb: "list", parameters: parameter)
	}
	/**
	 * Asks for several data rows
	 * 
	 * Returns full data rows, in the order they were asked.
	 * */
	func mget(parameter: GdaMultiGetRequest) {
		self.zetaPushService.publishGeneric(verb: "mget", parameters: parameter)
	}
	/**
	 * Puts some data into a cell
	 * 
	 * Creates or replaces the contents of a particular cell.
	 * */
	func put(parameter: GdaPut) {
		self.zetaPushService.publishGeneric(verb: "put", parameters: parameter)
	}
	/**
	 * Puts several rows
	 * 
	 * Creates or replaces the (maybe partial) contents of a collection of rows.
	 * This method only creates or replaces cells for non-null input values.
	 * */
	func puts(parameter: GdaPuts) {
		self.zetaPushService.publishGeneric(verb: "puts", parameters: parameter)
	}
	/**
	 * Asks for a range of rows
	 * 
	 * Returns a paginated range of rows from the given table.
	 * A range consists of consecutive rows from the start key (inclusive) to the stop key (exclusive).
	 * You can specify partial keys for the start and stop fields.
	 * */
	func range(parameter: GdaRange) {
		self.zetaPushService.publishGeneric(verb: "range", parameters: parameter)
	}
	/**
	 * Removes one cell inside a column of a row
	 * 
	 * Removes only one cell of the given column of the given row from the given table.
	 * */
	func removeCell(parameter: GdaCellRequest) {
		self.zetaPushService.publishGeneric(verb: "removeCell", parameters: parameter)
	}
	/**
	 * Removes one full column of a row
	 * 
	 * Removes all cells of the given column of the given row from the given table.
	 * */
	func removeColumn(parameter: GdaColumnRequest) {
		self.zetaPushService.publishGeneric(verb: "removeColumn", parameters: parameter)
	}
	/**
	 * Removes a range of rows
	 * 
	 * Removes the specified columns of the given range of rows from the given table.
	 * */
	func removeRange(parameter: GdaRemoveRange) {
		self.zetaPushService.publishGeneric(verb: "removeRange", parameters: parameter)
	}
	/**
	 * Removes one full row
	 * 
	 * Removes all columns of the given row from the given table.
	 * */
	func removeRow(parameter: GdaRowRequest) {
		self.zetaPushService.publishGeneric(verb: "removeRow", parameters: parameter)
	}
}
public class GdaListener : ZetaPushServiceListener {

	// Listener for "get"
	open func on_get(_ parameter: GdaGetResult) { }
	// Listener for "getCells"
	open func on_getCells(_ parameter: GdaCellsResult) { }
	// Listener for "inc"
	open func on_inc(_ parameter: GdaPut) { }
	// Listener for "list"
	open func on_list(_ parameter: GdaListResult) { }
	// Listener for "mget"
	open func on_mget(_ parameter: GdaMultiGetResult) { }
	// Listener for "put"
	open func on_put(_ parameter: GdaPut) { }
	// Listener for "puts"
	open func on_puts(_ parameter: GdaPutsResult) { }
	// Listener for "range"
	open func on_range(_ parameter: GdaRangeResult) { }
	// Listener for "removeCell"
	open func on_removeCell(_ parameter: GdaCellRequest) { }
	// Listener for "removeColumn"
	open func on_removeColumn(_ parameter: GdaColumnRequest) { }
	// Listener for "removeRange"
	open func on_removeRange(_ parameter: GdaRemoveRange) { }
	// Listener for "removeRow"
	open func on_removeRow(_ parameter: GdaRowRequest) { }
	public override func register() {
		self.genericSubscribe(verb: "get") { (data) in
			self.on_get(data)
		}
		self.genericSubscribe(verb: "getCells") { (data) in
			self.on_getCells(data)
		}
		self.genericSubscribe(verb: "inc") { (data) in
			self.on_inc(data)
		}
		self.genericSubscribe(verb: "list") { (data) in
			self.on_list(data)
		}
		self.genericSubscribe(verb: "mget") { (data) in
			self.on_mget(data)
		}
		self.genericSubscribe(verb: "put") { (data) in
			self.on_put(data)
		}
		self.genericSubscribe(verb: "puts") { (data) in
			self.on_puts(data)
		}
		self.genericSubscribe(verb: "range") { (data) in
			self.on_range(data)
		}
		self.genericSubscribe(verb: "removeCell") { (data) in
			self.on_removeCell(data)
		}
		self.genericSubscribe(verb: "removeColumn") { (data) in
			self.on_removeColumn(data)
		}
		self.genericSubscribe(verb: "removeRange") { (data) in
			self.on_removeRange(data)
		}
		self.genericSubscribe(verb: "removeRow") { (data) in
			self.on_removeRow(data)
		}
	}
}
/**
 * Groups Management
 * 
 * Groups management for users, grants on resources, remote commands on devices
 *  This is where you can configure rights for any resource
 * 
 * */
/**
 * User API for groups and rights.
 * 
 * Groups are stored per user.
 * This means that two users can own a group with the same identifier. A couple (owner, group) is needed to uniquely identify a group inside a group management service.
 * The triplet (deploymentId, owner, group) is actually needed to fully qualify a group outside of the scope of this service.
 * @access public
 * */
public class GroupManagementPublisher : ZetaPushServicePublisher {
	/**
	 * Adds me to a group
	 * 
	 * Adds me (the caller) to a group.
	 * This verb exists so that group owners may grant the right to join their groups without granting the right to add other users to those groups.
	 * The 'user' field is implicitly set to the current user's key.
	 * */
	func addMe(parameter: UserGroup) {
		self.zetaPushService.publishGeneric(verb: "addMe", parameters: parameter)
	}
	/**
	 * Adds a user to a group
	 * 
	 * Adds the given user to the given group.
	 * Addition may fail if the given group does not already exist.
	 * */
	func addUser(parameter: UserGroup) {
		self.zetaPushService.publishGeneric(verb: "addUser", parameters: parameter)
	}
	/**Adds users to a group*/
	func addUsers(parameter: GroupUsers) {
		self.zetaPushService.publishGeneric(verb: "addUsers", parameters: parameter)
	}
	/**
	 * Lists my owned groups, with details
	 * 
	 * Returns the whole list of groups owned by the current user, with their members
	 * */
	func allGroups(parameter: ImpersonatedRequest) {
		self.zetaPushService.publishGeneric(verb: "allGroups", parameters: parameter)
	}
	/**
	 * Creates a group
	 * 
	 * Creates a group owned by the current user.
	 * Group creation may fail if the group already exists.
	 * */
	func createGroup(parameter: GroupInfo) {
		self.zetaPushService.publishGeneric(verb: "createGroup", parameters: parameter)
	}
	/**
	 * Removes a group
	 * 
	 * Removes the given group owned by the current user or the given owner.
	 * Also removes all grants to that group.
	 * */
	func delGroup(parameter: GroupRelated) {
		self.zetaPushService.publishGeneric(verb: "delGroup", parameters: parameter)
	}
	/**Removes a user from a group*/
	func delUser(parameter: UserGroup) {
		self.zetaPushService.publishGeneric(verb: "delUser", parameters: parameter)
	}
	/**Removes users from a group*/
	func delUsers(parameter: GroupUsers) {
		self.zetaPushService.publishGeneric(verb: "delUsers", parameters: parameter)
	}
	/**
	 * Tests for a group's existence
	 * 
	 * Returns whether a group exists or not.
	 * */
	func exists(parameter: GroupRelated) {
		self.zetaPushService.publishGeneric(verb: "exists", parameters: parameter)
	}
	/**
	 * Grants a right to a group
	 * 
	 * The granting API does not do any check when storing permissions.
	 * In particular when granting rights on a verb and resource of another API, the existence of said verb and resource is not checked.
	 * */
	func grant(parameter: Grant) {
		self.zetaPushService.publishGeneric(verb: "grant", parameters: parameter)
	}
	/**
	 * Lists the group users
	 * 
	 * Returns the whole list of users configured inside the given group.
	 * */
	func groupUsers(parameter: GroupRelated) {
		self.zetaPushService.publishGeneric(verb: "groupUsers", parameters: parameter)
	}
	/**
	 * Lists my owned groups
	 * 
	 * Returns the whole list of groups owned by the current user
	 * */
	func groups(parameter: ImpersonatedRequest) {
		self.zetaPushService.publishGeneric(verb: "groups", parameters: parameter)
	}
	/**
	 * Lists rights for a group
	 * 
	 * This API lists explicitly configured rights.
	 * Effective rights include configured rights, implicit rights and inherited rights.
	 * */
	func listGrants(parameter: GroupRelated) {
		self.zetaPushService.publishGeneric(verb: "listGrants", parameters: parameter)
	}
	/**
	 * Lists presences for a group
	 * 
	 * Returns the list of members of the given groups, along with their actual and current presence on the zetapush server.
	 * The current implementation does not include information about the particular devices users are connected with.
	 * If a user is connected twice with two different devices, two identical entries will be returned.
	 * */
	func listPresences(parameter: GroupRelated) {
		self.zetaPushService.publishGeneric(verb: "listPresences", parameters: parameter)
	}
	/**
	 * Tests membership
	 * 
	 * Tests whether I (the caller) am a member of the given group.
	 * This verb exists so that users can determine if they are part of a group without being granted particular rights.
	 * The 'user' field is implicitly set to the current user's key.
	 * */
	func memberOf(parameter: UserMembership) {
		self.zetaPushService.publishGeneric(verb: "memberOf", parameters: parameter)
	}
	/**
	 * Grants rights to a group
	 * 
	 * Grant several rights at once.
	 * */
	func mgrant(parameter: Grants) {
		self.zetaPushService.publishGeneric(verb: "mgrant", parameters: parameter)
	}
	/**Revokes rights for a group*/
	func mrevoke(parameter: Grants) {
		self.zetaPushService.publishGeneric(verb: "mrevoke", parameters: parameter)
	}
	/**
	 * Lists the groups I am part of
	 * 
	 * Returns the whole list of groups the current user is part of.
	 * Groups may be owned by anyone, including the current user.
	 * */
	func myGroups(parameter: ImpersonatedRequest) {
		self.zetaPushService.publishGeneric(verb: "myGroups", parameters: parameter)
	}
	/**Revokes a right for a group*/
	func revoke(parameter: Grant) {
		self.zetaPushService.publishGeneric(verb: "revoke", parameters: parameter)
	}
}
public class GroupManagementListener : ZetaPushServiceListener {

	// Listener for "addMe"
	open func on_addMe(_ parameter: UserGroup) { }
	// Listener for "addUser"
	open func on_addUser(_ parameter: UserGroup) { }
	// Listener for "allGroups"
	open func on_allGroups(_ parameter: [GroupUsers]) { }
	// Listener for "createGroup"
	open func on_createGroup(_ parameter: GroupInfo) { }
	// Listener for "delGroup"
	open func on_delGroup(_ parameter: GroupRelated) { }
	// Listener for "delUser"
	open func on_delUser(_ parameter: UserGroup) { }
	// Listener for "exists"
	open func on_exists(_ parameter: GroupExistence) { }
	// Listener for "grant"
	open func on_grant(_ parameter: Grant) { }
	// Listener for "groupUsers"
	open func on_groupUsers(_ parameter: GroupUsers) { }
	// Listener for "groups"
	open func on_groups(_ parameter: [GroupInfo]) { }
	// Listener for "listGrants"
	open func on_listGrants(_ parameter: GrantList) { }
	// Listener for "listPresences"
	open func on_listPresences(_ parameter: GroupPresence) { }
	// Listener for "memberOf"
	open func on_memberOf(_ parameter: UserGroupMembership) { }
	// Listener for "mgrant"
	open func on_mgrant(_ parameter: Grants) { }
	// Listener for "mrevoke"
	open func on_mrevoke(_ parameter: Grants) { }
	// Listener for "myGroups"
	open func on_myGroups(_ parameter: [GroupInfo]) { }
	// Listener for "revoke"
	open func on_revoke(_ parameter: Grant) { }
	public override func register() {
		self.genericSubscribe(verb: "addMe") { (data) in
			self.on_addMe(data)
		}
		self.genericSubscribe(verb: "addUser") { (data) in
			self.on_addUser(data)
		}
		self.genericSubscribe(verb: "allGroups") { (data) in
			self.on_allGroups(data)
		}
		self.genericSubscribe(verb: "createGroup") { (data) in
			self.on_createGroup(data)
		}
		self.genericSubscribe(verb: "delGroup") { (data) in
			self.on_delGroup(data)
		}
		self.genericSubscribe(verb: "delUser") { (data) in
			self.on_delUser(data)
		}
		self.genericSubscribe(verb: "exists") { (data) in
			self.on_exists(data)
		}
		self.genericSubscribe(verb: "grant") { (data) in
			self.on_grant(data)
		}
		self.genericSubscribe(verb: "groupUsers") { (data) in
			self.on_groupUsers(data)
		}
		self.genericSubscribe(verb: "groups") { (data) in
			self.on_groups(data)
		}
		self.genericSubscribe(verb: "listGrants") { (data) in
			self.on_listGrants(data)
		}
		self.genericSubscribe(verb: "listPresences") { (data) in
			self.on_listPresences(data)
		}
		self.genericSubscribe(verb: "memberOf") { (data) in
			self.on_memberOf(data)
		}
		self.genericSubscribe(verb: "mgrant") { (data) in
			self.on_mgrant(data)
		}
		self.genericSubscribe(verb: "mrevoke") { (data) in
			self.on_mrevoke(data)
		}
		self.genericSubscribe(verb: "myGroups") { (data) in
			self.on_myGroups(data)
		}
		self.genericSubscribe(verb: "revoke") { (data) in
			self.on_revoke(data)
		}
	}
}
/**
 * User API for remote control
 * 
 * @access public
 * */
public class RemotingPublisher : ZetaPushServicePublisher {
	/**
	 * Adds a listener
	 * 
	 * A user requests notifications from a device owned by anyone who granted him the right authorizations.
	 * Whenever the device calls 'notify', notifications will be sent to the caller of this verb.
	 * */
	func addListener(parameter: RemoteCommand) {
		self.zetaPushService.publishGeneric(verb: "addListener", parameters: parameter)
	}
	/**Response to 'getCapabilities'*/
	func capabilities(parameter: DeviceCapabilities) {
		self.zetaPushService.publishGeneric(verb: "capabilities", parameters: parameter)
	}
	/**
	 * Executes a command
	 * 
	 * A user executes a command on a device owned by anyone who granted him the right authorizations.
	 * The command is issued on channel 'command'
	 * */
	func execute(parameter: RemoteCommand) {
		self.zetaPushService.publishGeneric(verb: "execute", parameters: parameter)
	}
	/**
	 * Requests capabilities
	 * 
	 * A user requests all his devices for the whole list of their capabilities.
	 * Devices are expected to answer on channel 'capabilities'
	 * */
	func getCapabilities() {
		self.zetaPushService.publishGeneric(verb: "getCapabilities")
	}
	/**
	 * Notifies of some event
	 * 
	 * A device notifies the registered users/devices on this channel.
	 * The server forwards the notification to said users.
	 * */
	func notify(parameter: RemoteCommand) {
		self.zetaPushService.publishGeneric(verb: "notify", parameters: parameter)
	}
	/**
	 * Pings devices
	 * 
	 * A user requests all devices (of all owners) on which he has authorizations to respond on channel 'pong'
	 * */
	func ping(parameter: PingRequest) {
		self.zetaPushService.publishGeneric(verb: "ping", parameters: parameter)
	}
	/**Response to ping*/
	func pong(parameter: DeviceAvailability) {
		self.zetaPushService.publishGeneric(verb: "pong", parameters: parameter)
	}
	/**
	 * Removes a listener
	 * 
	 * A user stops requesting notifications from a device owned by anyone who granted him the right authorizations
	 * */
	func removeListener(parameter: RemoteCommand) {
		self.zetaPushService.publishGeneric(verb: "removeListener", parameters: parameter)
	}
}
/**
 * HTTP client
 * 
 * Web-service client
 *  An admin records URL templates that can be called by users
 *  Calls are not configurable by end-users
 *  However an admin may leverage the macro service to achieve URL, headers and body configurability
 * */
/**
 * User API for http requests
 * 
 * @access public
 * */
public class HttpclientPublisher : ZetaPushServicePublisher {
	/**
	 * Makes a predefined request
	 * 
	 * Lookups a predefined request by name, and executes it.
	 * */
	func call(parameter: HttpClientCall) {
		self.zetaPushService.publishGeneric(verb: "call", parameters: parameter)
	}
}
public class HttpclientListener : ZetaPushServiceListener {

	// Listener for "call"
	open func on_call(_ parameter: HttpClientResponse) { }
	public override func register() {
		self.genericSubscribe(verb: "call") { (data) in
			self.on_call(data)
		}
	}
}
/**
 * Macros
 * 
 * Macro-command service
 *  An admin defines macro-commands that can sequentially call any number of other api verbs, loop on collections of data, make decisions, etc
 * 
 * 
 *  End-users play them, with contextual parameters
 * */
/**
 * User API for macro execution
 * 
 * Simple errors are reported as usual.
 * However, the macro execution verbs treat most errors in a particular way : instead of reporting errors on the usual 'error' channel, errors are put in the returned 'MacroCompletion' result.
 * This behavior can be tuned on a per-call basis with the hardFail parameter.
 * Note that some particular errors will always behave as if hardFail were true, because they are related to programming errors, or prevent processing from ending gracefully : STACK_OVERFLOW, NO_SUCH_FUNCTION, RAM_EXCEEDED, CYCLES_EXCEEDED, TIME_EXCEEDED, QUOTA_EXCEEDED, RATE_EXCEEDED, BAD_COMPARATOR_VALUE
 * @access public
 * */
public class MacroPublisher : ZetaPushServicePublisher {
	/**
	 * Plays a previously recorded macro
	 * 
	 * DO NOT use this verb from inside an enclosing macro when you need the result in order to proceed with the enclosing macro.
	 * You can override the default notification channel when defining the macro.
	 * */
	func call(parameter: MacroPlay) {
		self.zetaPushService.publishGeneric(verb: "call", parameters: parameter)
	}
}
/**
 * User API for macro debugging
 * 
 * Debugger API for macro.
 * These API verbs are not intended for use by most developers.
 * @access public
 * */
public class MacroDebugPublisher : ZetaPushServicePublisher {
	/**Enables or disables a breakpoint*/
	func breakpoint(parameter: MacroDebugBreakpointSet) {
		self.zetaPushService.publishGeneric(verb: "breakpoint", parameters: parameter)
	}
	/**Requests some information*/
	func info(parameter: MacroDebugInfoRequest) {
		self.zetaPushService.publishGeneric(verb: "info", parameters: parameter)
	}
	/**
	 * Debugs a previously recorded macro
	 * 
	 * The given breakpoints will be honored, causing a suspension of the execution, resumable via 'resume'.
	 * Only one debug session can be active at any given time.
	 * */
	func livedebug(parameter: MacroDebugSession) {
		self.zetaPushService.publishGeneric(verb: "livedebug", parameters: parameter)
	}
	/**Resumes a paused macro*/
	func resume(parameter: MacroDebugStep) {
		self.zetaPushService.publishGeneric(verb: "resume", parameters: parameter)
	}
	/**Sets a variable value*/
	func variable(parameter: MacroDebugVariableChange) {
		self.zetaPushService.publishGeneric(verb: "variable", parameters: parameter)
	}
}
/**
 * Mail sender
 * 
 * Sends email through SMTP
 * */
/**
 * Messaging service
 * 
 * Messaging service
 * */
/**
 * Messaging service
 * 
 * Simple and flexible user-to-user or user-to-group messaging service.
 * @access public
 * */
public class MessagingPublisher : ZetaPushServicePublisher {
	/**
	 * Sends a message to a target
	 * 
	 * Sends the given message to the specified target on the given (optional) channel.
	 * The administratively given default channel name is used when none is provided in the message itself.
	 * */
	func send(parameter: Message) {
		self.zetaPushService.publishGeneric(verb: "send", parameters: parameter)
	}
}
/**
 * Producer consumer
 * 
 * Producer consumer service
 *  Users can submit tasks and other users consume them
 * */
/**
 * Producer / consumer real-time API
 * 
 * Task producers submits their tasks.
 * The server dispatches the tasks.
 * Consumers process them and report completion back to the server.
 * Tasks are global to the service (i.e. NOT per user).
 * @access public
 * */
public class QueuePublisher : ZetaPushServicePublisher {
	/**
	 * Submits a task
	 * 
	 * Producer API.
	 * A task producer submits the given task to the server.
	 * The server will find a tasker with processing capacity and dispatch the task.
	 * The task result will be returned to the caller.
	 * When called from inside a macro, the comsumer generated result is available for further use.
	 * */
	func call(parameter: TaskRequest) {
		self.zetaPushService.publishGeneric(verb: "call", parameters: parameter)
	}
	/**
	 * Notifies completion of a task
	 * 
	 * Consumer API.
	 * The tasker notifies completion of the given task to the server.
	 * The tasker can optionally include a result or an error code.
	 * */
	func done(parameter: TaskCompletion) {
		self.zetaPushService.publishGeneric(verb: "done", parameters: parameter)
	}
	/**
	 * Registers a consumer
	 * 
	 * Consumer API.
	 * Registers the current user resource as an available task consumer.
	 * Tasks will be then dispatched to that consumer.
	 * */
	func register(parameter: TaskConsumerRegistration) {
		self.zetaPushService.publishGeneric(verb: "register", parameters: parameter)
	}
	/**
	 * Submits a task
	 * 
	 * Producer API.
	 * A task producer submits the given task to the server.
	 * The server will find a tasker with processing capacity and dispatch the task.
	 * The task result will be ignored : the producer will not receive any notification of any kind, even in case of errors (including capacity exceeded errors).
	 * This verb will return immediately : you can use this API to asynchronously submit a task.
	 * */
	func submit(parameter: TaskRequest) {
		self.zetaPushService.publishGeneric(verb: "submit", parameters: parameter)
	}
	/**
	 * Unregisters a consumer
	 * 
	 * Consumer API.
	 * Unregisters the current user resource as an available task consumer.
	 * All non finished tasks are returned to the server.
	 * */
	func unregister() {
		self.zetaPushService.publishGeneric(verb: "unregister")
	}
}
public class QueueListener : ZetaPushServiceListener {

	// Listener for "call"
	open func on_call(_ parameter: TaskCompletion) { }
	public override func register() {
		self.genericSubscribe(verb: "call") { (data) in
			self.on_call(data)
		}
	}
}
/**
 * Push Notifications
 * 
 * Native Push Notifications for Android, iOS 
 * 
 * 
 * 
 * */
/**
 * RDBMS
 * 
 * Relational Database : SQL storage
 * */
/**
 * SMS via OVH
 * 
 * SMS sender, to send text messages to mobile phones
 * This SMS sending service uses the OVH API
 * 
 * */
/**
 * Scheduler
 * 
 * Scheduler service
 *  End-users can schedule one-time or repetitive tasks using a classical cron syntax (with the year field) or a timestamp (milliseconds from the epoch)
 * */
/**
 * User API for the Scheduler
 * 
 * User endpoints for scheduling : users can schedule, list and delete tasks.
 * Tasks are stored on a per-user basis: a task will run with the priviledges of the user who stored it.
 * Tasks are run on the server and thus can call api verbs marked as server-only.
 * @access public
 * */
public class CronPublisher : ZetaPushServicePublisher {
	/**
	 * List the configured tasks
	 * 
	 * Returns a paginated list of the asking user's tasks.
	 * */
	func list(parameter: CronTaskListRequest) {
		self.zetaPushService.publishGeneric(verb: "list", parameters: parameter)
	}
}
public class CronListener : ZetaPushServiceListener {

	// Listener for "list"
	open func on_list(_ parameter: CronPlanning) { }
	public override func register() {
		self.genericSubscribe(verb: "list") { (data) in
			self.on_list(data)
		}
	}
}
/**
 * Search engine
 * 
 * ElasticSearch engine, to index and search data
 *  An admin creates indices
 *  Users index and search documents
 * 
 * */
/**
 * ElasticSearch Service
 * 
 * This API is a very thin wrapper around ElasticSearch's API.
 * @access public
 * */
public class SearchPublisher : ZetaPushServicePublisher {
	/**
	 * Deletes data
	 * 
	 * Deletes a document from the elasticsearch engine by id.
	 * */
	func delete(parameter: SearchDocumentId) {
		self.zetaPushService.publishGeneric(verb: "delete", parameters: parameter)
	}
	/**
	 * Gets data
	 * 
	 * Retrieves a document from the elasticsearch engine by id.
	 * */
	func get(parameter: SearchDocumentId) {
		self.zetaPushService.publishGeneric(verb: "get", parameters: parameter)
	}
	/**
	 * Indexes data
	 * 
	 * Inserts or updates a document into the elasticsearch engine.
	 * */
	func index(parameter: SearchData) {
		self.zetaPushService.publishGeneric(verb: "index", parameters: parameter)
	}
	/**Searches for data*/
	func search(parameter: SearchRequest) {
		self.zetaPushService.publishGeneric(verb: "search", parameters: parameter)
	}
}
public class SearchListener : ZetaPushServiceListener {

	// Listener for "get"
	open func on_get(_ parameter: SearchData) { }
	// Listener for "search"
	open func on_search(_ parameter: SearchResults) { }
	public override func register() {
		self.genericSubscribe(verb: "get") { (data) in
			self.on_get(data)
		}
		self.genericSubscribe(verb: "search") { (data) in
			self.on_search(data)
		}
	}
}
/**
 * Simple workflow
 * 
 * Simple workflow
 * */
/**
 * Simple workflow service : workflow usage API
 * 
 * Instantiate workflows.
 * Transition requests trigger the registered code for the target state.
 * @access public
 * */
public class WorkflowServicePublisher : ZetaPushServicePublisher {
	/**Creates a new workflow.*/
	func create(parameter: WorkflowCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "create", parameters: parameter)
	}
	/**
	 * Forces a transition
	 * 
	 * The state is forcefully changed to the given state
	 * Theoretically forbidden transitions are authorized.
	 * Otherwise, this verb behaves as 'transition'
	 * */
	func forceTransition(parameter: WorkflowTransitionRequest) {
		self.zetaPushService.publishGeneric(verb: "forceTransition", parameters: parameter)
	}
	/**Lists this user's workflows.*/
	func list(parameter: WorkflowList) {
		self.zetaPushService.publishGeneric(verb: "list", parameters: parameter)
	}
	/**
	 * Transitions this workflow to another state.
	 * 
	 * The wanted transition must be one of the allowed transitions of the workflow.
	 * If the call is a macro, it has the possibility to prevent the transition by returning {'transition':'failed', 'message':'optional error message'}.
	 * The transition is synchronous if and only if it triggers a macro (use the @Workflow ZMS annotation).
	 * The data passed to the macro has the type 'WorkflowTransitionInfo'
	 * */
	func transition(parameter: WorkflowTransitionRequest) {
		self.zetaPushService.publishGeneric(verb: "transition", parameters: parameter)
	}
}
public class WorkflowServiceListener : ZetaPushServiceListener {

	// Listener for "create"
	open func on_create(_ parameter: WorkflowInfo) { }
	// Listener for "forceTransition"
	open func on_forceTransition(_ parameter: WorkflowTransitionRequest) { }
	// Listener for "list"
	open func on_list(_ parameter: PageContentWorkflowInfo) { }
	// Listener for "transition"
	open func on_transition(_ parameter: WorkflowTransitionRequest) { }
	public override func register() {
		self.genericSubscribe(verb: "create") { (data) in
			self.on_create(data)
		}
		self.genericSubscribe(verb: "forceTransition") { (data) in
			self.on_forceTransition(data)
		}
		self.genericSubscribe(verb: "list") { (data) in
			self.on_list(data)
		}
		self.genericSubscribe(verb: "transition") { (data) in
			self.on_transition(data)
		}
	}
}
/**
 * Simple workflow service : workflow definition API
 * 
 * Manage workflow templates.
 * Consider using the @Workflow annotation to ease configuration.
 * @access public
 * */
public class WorkflowDefinitionServicePublisher : ZetaPushServicePublisher {
	/**
	 * Fetches templates
	 * 
	 * Returns a existing template, by identifier.
	 * */
	func getTemplate(parameter: WorkflowTemplateInfoRequest) {
		self.zetaPushService.publishGeneric(verb: "getTemplate", parameters: parameter)
	}
	/**
	 * Asks for a list of templates
	 * 
	 * Returns a paginated list of templates.
	 * */
	func listTemplates(parameter: WorkflowTemplateList) {
		self.zetaPushService.publishGeneric(verb: "listTemplates", parameters: parameter)
	}
}
public class WorkflowDefinitionServiceListener : ZetaPushServiceListener {

	// Listener for "getTemplate"
	open func on_getTemplate(_ parameter: WorkflowTemplate) { }
	// Listener for "listTemplates"
	open func on_listTemplates(_ parameter: WorkflowTemplateListResult) { }
	public override func register() {
		self.genericSubscribe(verb: "getTemplate") { (data) in
			self.on_getTemplate(data)
		}
		self.genericSubscribe(verb: "listTemplates") { (data) in
			self.on_listTemplates(data)
		}
	}
}
/**
 * Template engine
 * 
 * Template engine to produce documents from parameterized templates
 * <br>An admin creates templates
 * <br> Users produce documents
 * <br>The implementation uses the <a href='http://freemarker
 * org/'>freemarker</a> engine
 * 
 * */
/**
 * User API for templates
 * 
 * Users use this API to evaluate pre-configured templates.
 * @access public
 * */
public class TemplatePublisher : ZetaPushServicePublisher {
	/**
	 * Evaluates a template
	 * 
	 * Evaluates the given template and returns the result as a string.
	 * Templates are parsed the first time they are evaluated. Evaluation may fail early due to a parsing error.
	 * */
	func evaluate(parameter: TemplateRequest) {
		self.zetaPushService.publishGeneric(verb: "evaluate", parameters: parameter)
	}
}
public class TemplateListener : ZetaPushServiceListener {

	// Listener for "evaluate"
	open func on_evaluate(_ parameter: TemplateResult) { }
	public override func register() {
		self.genericSubscribe(verb: "evaluate") { (data) in
			self.on_evaluate(data)
		}
	}
}
/**
 * Triggers
 * 
 * Register callbacks for events and trigger them when needed
 * 
 * */
/**
 * Upload: S3
 * 
 * Upload service with S3 storage
 * */
/**
 * User API for file management
 * 
 * User API for virtual file management and http file upload
 * This API contains all the verbs needed to browse, upload and remove files.
 * Files are stored on a per-user basis: each user has his or her own whole virtual filesystem.
 * Uploading a file is a 3-step process : request an upload URL, upload via HTTP, notify this service of completion.
 * @access public
 * */
public class Zpfs_s3Publisher : ZetaPushServicePublisher {
	/**
	 * Copies a file
	 * 
	 * Copies a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	func cp(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "cp", parameters: parameter)
	}
	/**
	 * Returns disk usage
	 * 
	 * Returns an recursively aggregated number of used bytes, starting at the given path.
	 * */
	func du(parameter: ZpfsRequest) {
		self.zetaPushService.publishGeneric(verb: "du", parameters: parameter)
	}
	/**
	 * Links a file
	 * 
	 * Links a file or folder to another location.
	 * May fail if the target location is not empty.
	 * */
	func link(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "link", parameters: parameter)
	}
	/**
	 * Lists a folder content
	 * 
	 * Returns a paginated list of the folder's content.
	 * */
	func ls(parameter: FolderListingRequest) {
		self.zetaPushService.publishGeneric(verb: "ls", parameters: parameter)
	}
	/**
	 * Creates a folder
	 * 
	 * Creates a new folder.
	 * May fail if the target location is not empty.
	 * */
	func mkdir(parameter: FolderCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "mkdir", parameters: parameter)
	}
	/**
	 * Moves a file
	 * 
	 * Moves a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	func mv(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "mv", parameters: parameter)
	}
	/**
	 * Notifies of upload completion
	 * 
	 * The client application calls this verb to notify that it's done uploading to the cloud.
	 * Calling that verb MAY trigger additional events such as thumbnail/metadata creation.
	 * */
	func newFile(parameter: FileUploadComplete) {
		self.zetaPushService.publishGeneric(verb: "newFile", parameters: parameter)
	}
	/**
	 * Requests an upload URL
	 * 
	 * Requests an HTTP upload URL.
	 * The URL contains temporary credentials (typically valid for a few minutes) and is meant for immediate use.
	 * */
	func newUploadUrl(parameter: FileUploadRequest) {
		self.zetaPushService.publishGeneric(verb: "newUploadUrl", parameters: parameter)
	}
	/**
	 * Removes a file
	 * 
	 * Removes a file or folder (recursively).
	 * */
	func rm(parameter: FileRemoval) {
		self.zetaPushService.publishGeneric(verb: "rm", parameters: parameter)
	}
	/**
	 * Creates a snapshot in a new folder
	 * 
	 * Creates a new folder and then copies the given files inside
	 * */
	func snapshot(parameter: SnapshotCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "snapshot", parameters: parameter)
	}
	/**
	 * Returns information about a file
	 * 
	 * Returns information about a single file.
	 * The entry field will be null if the path does not exist
	 * */
	func stat(parameter: FileStatRequest) {
		self.zetaPushService.publishGeneric(verb: "stat", parameters: parameter)
	}
	/**Updates a file's metadata*/
	func updateMeta(parameter: FileMetaUpdate) {
		self.zetaPushService.publishGeneric(verb: "updateMeta", parameters: parameter)
	}
}
public class Zpfs_s3Listener : ZetaPushServiceListener {

	// Listener for "cp"
	open func on_cp(_ parameter: CreatedFile) { }
	// Listener for "du"
	open func on_du(_ parameter: ZpfsDiskUsage) { }
	// Listener for "link"
	open func on_link(_ parameter: CreatedFile) { }
	// Listener for "ls"
	open func on_ls(_ parameter: FolderListing) { }
	// Listener for "mkdir"
	open func on_mkdir(_ parameter: CreatedFile) { }
	// Listener for "mv"
	open func on_mv(_ parameter: CreatedFile) { }
	// Listener for "newFile"
	open func on_newFile(_ parameter: ListingEntryInfo) { }
	// Listener for "newUploadUrl"
	open func on_newUploadUrl(_ parameter: FileUploadLocation) { }
	// Listener for "rm"
	open func on_rm(_ parameter: FileRemoval) { }
	// Listener for "snapshot"
	open func on_snapshot(_ parameter: CreatedFile) { }
	// Listener for "stat"
	open func on_stat(_ parameter: FileStatResult) { }
	// Listener for "updateMeta"
	open func on_updateMeta(_ parameter: ListingEntryInfo) { }
	public override func register() {
		self.genericSubscribe(verb: "cp") { (data) in
			self.on_cp(data)
		}
		self.genericSubscribe(verb: "du") { (data) in
			self.on_du(data)
		}
		self.genericSubscribe(verb: "link") { (data) in
			self.on_link(data)
		}
		self.genericSubscribe(verb: "ls") { (data) in
			self.on_ls(data)
		}
		self.genericSubscribe(verb: "mkdir") { (data) in
			self.on_mkdir(data)
		}
		self.genericSubscribe(verb: "mv") { (data) in
			self.on_mv(data)
		}
		self.genericSubscribe(verb: "newFile") { (data) in
			self.on_newFile(data)
		}
		self.genericSubscribe(verb: "newUploadUrl") { (data) in
			self.on_newUploadUrl(data)
		}
		self.genericSubscribe(verb: "rm") { (data) in
			self.on_rm(data)
		}
		self.genericSubscribe(verb: "snapshot") { (data) in
			self.on_snapshot(data)
		}
		self.genericSubscribe(verb: "stat") { (data) in
			self.on_stat(data)
		}
		self.genericSubscribe(verb: "updateMeta") { (data) in
			self.on_updateMeta(data)
		}
	}
}
/**
 * Upload: local
 * 
 * Upload service with local HDFS storage
 * */
/**
 * User API for local file management
 * 
 * User API for file content manipulation
 * @access public
 * */
public class Zpfs_hdfsPublisher : ZetaPushServicePublisher {
	/**
	 * Copies a file
	 * 
	 * Copies a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	func cp(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "cp", parameters: parameter)
	}
	/**
	 * Returns disk usage
	 * 
	 * Returns an recursively aggregated number of used bytes, starting at the given path.
	 * */
	func du(parameter: ZpfsRequest) {
		self.zetaPushService.publishGeneric(verb: "du", parameters: parameter)
	}
	/**
	 * Links a file
	 * 
	 * Links a file or folder to another location.
	 * May fail if the target location is not empty.
	 * */
	func link(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "link", parameters: parameter)
	}
	/**
	 * Lists a folder content
	 * 
	 * Returns a paginated list of the folder's content.
	 * */
	func ls(parameter: FolderListingRequest) {
		self.zetaPushService.publishGeneric(verb: "ls", parameters: parameter)
	}
	/**
	 * Creates a folder
	 * 
	 * Creates a new folder.
	 * May fail if the target location is not empty.
	 * */
	func mkdir(parameter: FolderCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "mkdir", parameters: parameter)
	}
	/**
	 * Moves a file
	 * 
	 * Moves a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	func mv(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "mv", parameters: parameter)
	}
	/**
	 * Notifies of upload completion
	 * 
	 * The client application calls this verb to notify that it's done uploading to the cloud.
	 * Calling that verb MAY trigger additional events such as thumbnail/metadata creation.
	 * */
	func newFile(parameter: FileUploadComplete) {
		self.zetaPushService.publishGeneric(verb: "newFile", parameters: parameter)
	}
	/**
	 * Requests an upload URL
	 * 
	 * Requests an HTTP upload URL.
	 * The URL contains temporary credentials (typically valid for a few minutes) and is meant for immediate use.
	 * */
	func newUploadUrl(parameter: FileUploadRequest) {
		self.zetaPushService.publishGeneric(verb: "newUploadUrl", parameters: parameter)
	}
	/**
	 * Removes a file
	 * 
	 * Removes a file or folder (recursively).
	 * */
	func rm(parameter: FileRemoval) {
		self.zetaPushService.publishGeneric(verb: "rm", parameters: parameter)
	}
	/**
	 * Creates a snapshot in a new folder
	 * 
	 * Creates a new folder and then copies the given files inside
	 * */
	func snapshot(parameter: SnapshotCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "snapshot", parameters: parameter)
	}
	/**
	 * Returns information about a file
	 * 
	 * Returns information about a single file.
	 * The entry field will be null if the path does not exist
	 * */
	func stat(parameter: FileStatRequest) {
		self.zetaPushService.publishGeneric(verb: "stat", parameters: parameter)
	}
	/**Updates a file's metadata*/
	func updateMeta(parameter: FileMetaUpdate) {
		self.zetaPushService.publishGeneric(verb: "updateMeta", parameters: parameter)
	}
}
public class Zpfs_hdfsListener : ZetaPushServiceListener {

	// Listener for "cp"
	open func on_cp(_ parameter: CreatedFile) { }
	// Listener for "du"
	open func on_du(_ parameter: ZpfsDiskUsage) { }
	// Listener for "link"
	open func on_link(_ parameter: CreatedFile) { }
	// Listener for "ls"
	open func on_ls(_ parameter: FolderListing) { }
	// Listener for "mkdir"
	open func on_mkdir(_ parameter: CreatedFile) { }
	// Listener for "mv"
	open func on_mv(_ parameter: CreatedFile) { }
	// Listener for "newFile"
	open func on_newFile(_ parameter: ListingEntryInfo) { }
	// Listener for "newUploadUrl"
	open func on_newUploadUrl(_ parameter: FileUploadLocation) { }
	// Listener for "rm"
	open func on_rm(_ parameter: FileRemoval) { }
	// Listener for "snapshot"
	open func on_snapshot(_ parameter: CreatedFile) { }
	// Listener for "stat"
	open func on_stat(_ parameter: FileStatResult) { }
	// Listener for "updateMeta"
	open func on_updateMeta(_ parameter: ListingEntryInfo) { }
	public override func register() {
		self.genericSubscribe(verb: "cp") { (data) in
			self.on_cp(data)
		}
		self.genericSubscribe(verb: "du") { (data) in
			self.on_du(data)
		}
		self.genericSubscribe(verb: "link") { (data) in
			self.on_link(data)
		}
		self.genericSubscribe(verb: "ls") { (data) in
			self.on_ls(data)
		}
		self.genericSubscribe(verb: "mkdir") { (data) in
			self.on_mkdir(data)
		}
		self.genericSubscribe(verb: "mv") { (data) in
			self.on_mv(data)
		}
		self.genericSubscribe(verb: "newFile") { (data) in
			self.on_newFile(data)
		}
		self.genericSubscribe(verb: "newUploadUrl") { (data) in
			self.on_newUploadUrl(data)
		}
		self.genericSubscribe(verb: "rm") { (data) in
			self.on_rm(data)
		}
		self.genericSubscribe(verb: "snapshot") { (data) in
			self.on_snapshot(data)
		}
		self.genericSubscribe(verb: "stat") { (data) in
			self.on_stat(data)
		}
		self.genericSubscribe(verb: "updateMeta") { (data) in
			self.on_updateMeta(data)
		}
	}
}
/**
 * Upload: pseudo-S3
 * 
 * Upload service with pseudo-S3compatible storage
 * */
/**
 * User API for file management
 * 
 * User API for virtual file management and http file upload
 * This API contains all the verbs needed to browse, upload and remove files.
 * Files are stored on a per-user basis: each user has his or her own whole virtual filesystem.
 * Uploading a file is a 3-step process : request an upload URL, upload via HTTP, notify this service of completion.
 * @access public
 * */
public class Zpfs_s3compatPublisher : ZetaPushServicePublisher {
	/**
	 * Copies a file
	 * 
	 * Copies a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	func cp(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "cp", parameters: parameter)
	}
	/**
	 * Returns disk usage
	 * 
	 * Returns an recursively aggregated number of used bytes, starting at the given path.
	 * */
	func du(parameter: ZpfsRequest) {
		self.zetaPushService.publishGeneric(verb: "du", parameters: parameter)
	}
	/**
	 * Links a file
	 * 
	 * Links a file or folder to another location.
	 * May fail if the target location is not empty.
	 * */
	func link(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "link", parameters: parameter)
	}
	/**
	 * Lists a folder content
	 * 
	 * Returns a paginated list of the folder's content.
	 * */
	func ls(parameter: FolderListingRequest) {
		self.zetaPushService.publishGeneric(verb: "ls", parameters: parameter)
	}
	/**
	 * Creates a folder
	 * 
	 * Creates a new folder.
	 * May fail if the target location is not empty.
	 * */
	func mkdir(parameter: FolderCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "mkdir", parameters: parameter)
	}
	/**
	 * Moves a file
	 * 
	 * Moves a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	func mv(parameter: CreatedFile) {
		self.zetaPushService.publishGeneric(verb: "mv", parameters: parameter)
	}
	/**
	 * Notifies of upload completion
	 * 
	 * The client application calls this verb to notify that it's done uploading to the cloud.
	 * Calling that verb MAY trigger additional events such as thumbnail/metadata creation.
	 * */
	func newFile(parameter: FileUploadComplete) {
		self.zetaPushService.publishGeneric(verb: "newFile", parameters: parameter)
	}
	/**
	 * Requests an upload URL
	 * 
	 * Requests an HTTP upload URL.
	 * The URL contains temporary credentials (typically valid for a few minutes) and is meant for immediate use.
	 * */
	func newUploadUrl(parameter: FileUploadRequest) {
		self.zetaPushService.publishGeneric(verb: "newUploadUrl", parameters: parameter)
	}
	/**
	 * Removes a file
	 * 
	 * Removes a file or folder (recursively).
	 * */
	func rm(parameter: FileRemoval) {
		self.zetaPushService.publishGeneric(verb: "rm", parameters: parameter)
	}
	/**
	 * Creates a snapshot in a new folder
	 * 
	 * Creates a new folder and then copies the given files inside
	 * */
	func snapshot(parameter: SnapshotCreationRequest) {
		self.zetaPushService.publishGeneric(verb: "snapshot", parameters: parameter)
	}
	/**
	 * Returns information about a file
	 * 
	 * Returns information about a single file.
	 * The entry field will be null if the path does not exist
	 * */
	func stat(parameter: FileStatRequest) {
		self.zetaPushService.publishGeneric(verb: "stat", parameters: parameter)
	}
	/**Updates a file's metadata*/
	func updateMeta(parameter: FileMetaUpdate) {
		self.zetaPushService.publishGeneric(verb: "updateMeta", parameters: parameter)
	}
}
public class Zpfs_s3compatListener : ZetaPushServiceListener {

	// Listener for "cp"
	open func on_cp(_ parameter: CreatedFile) { }
	// Listener for "du"
	open func on_du(_ parameter: ZpfsDiskUsage) { }
	// Listener for "link"
	open func on_link(_ parameter: CreatedFile) { }
	// Listener for "ls"
	open func on_ls(_ parameter: FolderListing) { }
	// Listener for "mkdir"
	open func on_mkdir(_ parameter: CreatedFile) { }
	// Listener for "mv"
	open func on_mv(_ parameter: CreatedFile) { }
	// Listener for "newFile"
	open func on_newFile(_ parameter: ListingEntryInfo) { }
	// Listener for "newUploadUrl"
	open func on_newUploadUrl(_ parameter: FileUploadLocation) { }
	// Listener for "rm"
	open func on_rm(_ parameter: FileRemoval) { }
	// Listener for "snapshot"
	open func on_snapshot(_ parameter: CreatedFile) { }
	// Listener for "stat"
	open func on_stat(_ parameter: FileStatResult) { }
	// Listener for "updateMeta"
	open func on_updateMeta(_ parameter: ListingEntryInfo) { }
	public override func register() {
		self.genericSubscribe(verb: "cp") { (data) in
			self.on_cp(data)
		}
		self.genericSubscribe(verb: "du") { (data) in
			self.on_du(data)
		}
		self.genericSubscribe(verb: "link") { (data) in
			self.on_link(data)
		}
		self.genericSubscribe(verb: "ls") { (data) in
			self.on_ls(data)
		}
		self.genericSubscribe(verb: "mkdir") { (data) in
			self.on_mkdir(data)
		}
		self.genericSubscribe(verb: "mv") { (data) in
			self.on_mv(data)
		}
		self.genericSubscribe(verb: "newFile") { (data) in
			self.on_newFile(data)
		}
		self.genericSubscribe(verb: "newUploadUrl") { (data) in
			self.on_newUploadUrl(data)
		}
		self.genericSubscribe(verb: "rm") { (data) in
			self.on_rm(data)
		}
		self.genericSubscribe(verb: "snapshot") { (data) in
			self.on_snapshot(data)
		}
		self.genericSubscribe(verb: "stat") { (data) in
			self.on_stat(data)
		}
		self.genericSubscribe(verb: "updateMeta") { (data) in
			self.on_updateMeta(data)
		}
	}
}
/**
 * User directory service
 * 
 * User directory service
 * */
/**
 * User API for user information
 * 
 * @access public
 * */
public class UserdirPublisher : ZetaPushServicePublisher {
	/**Searches for users matching the request*/
	func search(parameter: UserSearchRequest) {
		self.zetaPushService.publishGeneric(verb: "search", parameters: parameter)
	}
	/**Requests public data for the specified users*/
	func userInfo(parameter: UserInfoRequest) {
		self.zetaPushService.publishGeneric(verb: "userInfo", parameters: parameter)
	}
}
public class UserdirListener : ZetaPushServiceListener {

	// Listener for "search"
	open func on_search(_ parameter: UserSearchResponse) { }
	// Listener for "userInfo"
	open func on_userInfo(_ parameter: UserInfoResponse) { }
	public override func register() {
		self.genericSubscribe(verb: "search") { (data) in
			self.on_search(data)
		}
		self.genericSubscribe(verb: "userInfo") { (data) in
			self.on_userInfo(data)
		}
	}
}
/**
 * Delegating authentication
 * 
 * This authentication delegates authentication to an external auth provider
 * <br>When a zetapush client handshakes with a delegated authentication, the 'token' field given by the client is sent to the configured remote server as part of the URL
 * <br>The response must be in JSON format
 *  Each key of the response will be considered a user information field name
 * <br>The handshake from the server will return the primary key in a field named 'login' (regardless of the actual key name you might have chosen)
 * */
/**
 * Local authentication
 * 
 * Zetapush local authentication
 *  The configurer can choose the primary key and mandatory user fields for account creation
 *  The field 'zetapushKey' is generated by the server and MUST not be used : it contains the unique key of the user inside a sandbox (it can be obtained from inside a macro with the <b>__userKey</b> pseudo-constant)
 * */
/**
 * Weak authentication
 * 
 * The weak authentication allows for anonymous authentication of devices
 *  Such devices can display a qrcode to allow regular users to take control of them
 * */
/**
 * User API for weak devices control
 * 
 * User API for control and release of weakly authenticated user sessions.
 * @access public
 * */
public class WeakPublisher : ZetaPushServicePublisher {
	/**
	 * Controls a session
	 * 
	 * Takes control of a weak user session, identified by the given public token.
	 * The public token has been previously made available by the controlled device, for example by displaying a QRCode.
	 * Upon control notification, the client SDK of the controlled session is expected to re-handshake.
	 * */
	func control(parameter: UserControlRequest) {
		self.zetaPushService.publishGeneric(verb: "control", parameters: parameter)
	}
	/**
	 * Returns the current token
	 * 
	 * Returns your current session's private token. The token field may be null, if you did not log in with this authentication.
	 * The token can be used to log in as the same weak user another time.
	 * */
	func getToken() {
		self.zetaPushService.publishGeneric(verb: "getToken")
	}
	/**
	 * Releases a session
	 * 
	 * Releases control of a weak user session, identified by the given public token.
	 * The weak user session must have been previously controlled by a call to 'control'.
	 * */
	func release(parameter: UserControlRequest) {
		self.zetaPushService.publishGeneric(verb: "release", parameters: parameter)
	}
}
public class WeakListener : ZetaPushServiceListener {

	// Listener for "control"
	open func on_control(_ parameter: UserControlStatus) { }
	// Listener for "getToken"
	open func on_getToken(_ parameter: UserToken) { }
	// Listener for "release"
	open func on_release(_ parameter: UserControlStatus) { }
	public override func register() {
		self.genericSubscribe(verb: "control") { (data) in
			self.on_control(data)
		}
		self.genericSubscribe(verb: "getToken") { (data) in
			self.on_getToken(data)
		}
		self.genericSubscribe(verb: "release") { (data) in
			self.on_release(data)
		}
	}
}
