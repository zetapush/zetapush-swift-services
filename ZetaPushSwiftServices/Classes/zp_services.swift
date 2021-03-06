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
	public func push(parameter: AggregationPushes) {
		self.zetaPushService.publish(verb: "push", parameters: parameter)
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
	public func getListeners(parameter: StackRequest) {
		self.zetaPushService.publish(verb: "getListeners", parameters: parameter)
	}
	/**
	 * Lists content
	 * 
	 * Returns a paginated list of contents for the given stack.
	 * Content is sorted according to the statically configured order.
	 * */
	public func list(parameter: StackListRequest) {
		self.zetaPushService.publish(verb: "list", parameters: parameter)
	}
	/**
	 * Empties a stack
	 * 
	 * Removes all items from the given stack.
	 * */
	public func purge(parameter: StackRequest) {
		self.zetaPushService.publish(verb: "purge", parameters: parameter)
	}
	/**
	 * Pushes an item
	 * 
	 * Pushes an item onto the given stack.
	 * The stack does not need to be created.
	 * */
	public func push(parameter: StackItemAdd) {
		self.zetaPushService.publish(verb: "push", parameters: parameter)
	}
	/**
	 * Removes items
	 * 
	 * Removes the item with the given guid from the given stack.
	 * */
	public func remove(parameter: StackItemRemove) {
		self.zetaPushService.publish(verb: "remove", parameters: parameter)
	}
	/**
	 * Sets the listeners
	 * 
	 * Sets the listeners for the given stack.
	 * */
	public func setListeners(parameter: StackListeners) {
		self.zetaPushService.publish(verb: "setListeners", parameters: parameter)
	}
	/**
	 * Updates an item
	 * 
	 * Updates an existing item of the given stack.
	 * The item MUST exist prior to the call.
	 * */
	public func update(parameter: StackItemAdd) {
		self.zetaPushService.publish(verb: "update", parameters: parameter)
	}
}
open class StackListener : ZetaPushServiceListener {

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
	open override func register() {
		self.subscribe(verb: "getListeners") { (data) in
			self.on_getListeners(data)
		}
		self.subscribe(verb: "list") { (data) in
			self.on_list(data)
		}
		self.subscribe(verb: "purge") { (data) in
			self.on_purge(data)
		}
		self.subscribe(verb: "push") { (data) in
			self.on_push(data)
		}
		self.subscribe(verb: "remove") { (data) in
			self.on_remove(data)
		}
		self.subscribe(verb: "setListeners") { (data) in
			self.on_setListeners(data)
		}
		self.subscribe(verb: "update") { (data) in
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
	public func echo(parameter: NSDictionary) {
		self.zetaPushService.publish(verb: "echo", parameters: parameter)
	}
}
open class EchoListener : ZetaPushServiceListener {

	// Listener for "echo"
	open func on_echo(_ parameter: NSDictionary) { }
	open override func register() {
		self.subscribe(verb: "echo") { (data) in
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
	public func available() {
		self.zetaPushService.publish(verb: "available")
	}
	/**A user joins a game*/
	public func join(parameter: GameJoin) {
		self.zetaPushService.publish(verb: "join", parameters: parameter)
	}
	/**Organizes a game*/
	public func organize(parameter: GameOrganization) {
		self.zetaPushService.publish(verb: "organize", parameters: parameter)
	}
	/**Gives some command to the game engine*/
	public func play(parameter: GamePlay) {
		self.zetaPushService.publish(verb: "play", parameters: parameter)
	}
	/**Starts a game*/
	public func start(parameter: GameStart) {
		self.zetaPushService.publish(verb: "start", parameters: parameter)
	}
	/**A user cancels joining a game*/
	public func unjoin(parameter: GameJoin) {
		self.zetaPushService.publish(verb: "unjoin", parameters: parameter)
	}
}
open class GameListener : ZetaPushServiceListener {

	// Listener for "available"
	open func on_available(_ parameter: [GameInfo]) { }
	open override func register() {
		self.subscribe(verb: "available") { (data) in
			self.on_available(data)
		}
	}
}
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
	public func join_result(parameter: GameJoinResponse) {
		self.zetaPushService.publish(verb: "join_result", parameters: parameter)
	}
	/**
	 * Notify the result for an organization request
	 * 
	 * A Game Engine notifies the STR of the result of an organization request that it received on organize_callback
	 * */
	public func organize_result(parameter: GameOrganizationResponse) {
		self.zetaPushService.publish(verb: "organize_result", parameters: parameter)
	}
	/**
	 * Registers a game engine
	 * 
	 * A client registers itself to the STR as a Game Engine.
	 * The STR may, from now on, dispatch game of the given game type to said client.
	 * Unregistration is done automatically on logoff.
	 * */
	public func register(parameter: GameRunnerRegistration) {
		self.zetaPushService.publish(verb: "register", parameters: parameter)
	}
	/**
	 * Notify the result for a start request
	 * 
	 * A Game Engine notifies the STR of the result of a start request that it received on start_callback
	 * */
	public func start_result(parameter: GameStart) {
		self.zetaPushService.publish(verb: "start_result", parameters: parameter)
	}
	/**
	 * Notify a game event
	 * 
	 * A Game Engine notifies the STR of some arbitrary game event.
	 * */
	public func state(parameter: GameState) {
		self.zetaPushService.publish(verb: "state", parameters: parameter)
	}
	/**
	 * Notify the result for an unjoin request
	 * 
	 * A Game Engine notifies the STR of the result of an unjoin request that it received on unjoin_callback
	 * */
	public func unjoin_result(parameter: GameJoinResponse) {
		self.zetaPushService.publish(verb: "unjoin_result", parameters: parameter)
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
	public func get(parameter: GdaGet) {
		self.zetaPushService.publish(verb: "get", parameters: parameter)
	}
	/**
	 * Asks for a data cell
	 * 
	 * Returns a precise list of cells from a column in a data row.
	 * */
	public func getCells(parameter: GdaCellsRequest) {
		self.zetaPushService.publish(verb: "getCells", parameters: parameter)
	}
	/**
	 * Increments an integer value
	 * 
	 * Increments a cell 64-bit signed integer value and returns the result in the data field.
	 * The increment is atomic : if you concurrently increment 10 times a value by 1, the final result will be the initial value plus 10. The actual individual resulting values seen by the 10 concurrent callers may vary discontinuously, with duplicates : at least one of them will see the final (+10) result.
	 * */
	public func inc(parameter: GdaPut) {
		self.zetaPushService.publish(verb: "inc", parameters: parameter)
	}
	/**
	 * Asks for a list of rows
	 * 
	 * Returns a paginated list of rows from the given table.
	 * */
	public func list(parameter: GdaList) {
		self.zetaPushService.publish(verb: "list", parameters: parameter)
	}
	/**
	 * Asks for several data rows
	 * 
	 * Returns full data rows, in the order they were asked.
	 * */
	public func mget(parameter: GdaMultiGetRequest) {
		self.zetaPushService.publish(verb: "mget", parameters: parameter)
	}
	/**
	 * Puts some data into a cell
	 * 
	 * Creates or replaces the contents of a particular cell.
	 * */
	public func put(parameter: GdaPut) {
		self.zetaPushService.publish(verb: "put", parameters: parameter)
	}
	/**
	 * Puts several rows
	 * 
	 * Creates or replaces the (maybe partial) contents of a collection of rows.
	 * This method only creates or replaces cells for non-null input values.
	 * */
	public func puts(parameter: GdaPuts) {
		self.zetaPushService.publish(verb: "puts", parameters: parameter)
	}
	/**
	 * Asks for a range of rows
	 * 
	 * Returns a paginated range of rows from the given table.
	 * A range consists of consecutive rows from the start key (inclusive) to the stop key (exclusive).
	 * You can specify partial keys for the start and stop fields.
	 * */
	public func range(parameter: GdaRange) {
		self.zetaPushService.publish(verb: "range", parameters: parameter)
	}
	/**
	 * Removes one cell inside a column of a row
	 * 
	 * Removes only one cell of the given column of the given row from the given table.
	 * */
	public func removeCell(parameter: GdaCellRequest) {
		self.zetaPushService.publish(verb: "removeCell", parameters: parameter)
	}
	/**
	 * Removes one full column of a row
	 * 
	 * Removes all cells of the given column of the given row from the given table.
	 * */
	public func removeColumn(parameter: GdaColumnRequest) {
		self.zetaPushService.publish(verb: "removeColumn", parameters: parameter)
	}
	/**
	 * Removes a range of rows
	 * 
	 * Removes the specified columns of the given range of rows from the given table.
	 * */
	public func removeRange(parameter: GdaRemoveRange) {
		self.zetaPushService.publish(verb: "removeRange", parameters: parameter)
	}
	/**
	 * Removes one full row
	 * 
	 * Removes all columns of the given row from the given table.
	 * */
	public func removeRow(parameter: GdaRowRequest) {
		self.zetaPushService.publish(verb: "removeRow", parameters: parameter)
	}
}
open class GdaListener : ZetaPushServiceListener {

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
	open override func register() {
		self.subscribe(verb: "get") { (data) in
			self.on_get(data)
		}
		self.subscribe(verb: "getCells") { (data) in
			self.on_getCells(data)
		}
		self.subscribe(verb: "inc") { (data) in
			self.on_inc(data)
		}
		self.subscribe(verb: "list") { (data) in
			self.on_list(data)
		}
		self.subscribe(verb: "mget") { (data) in
			self.on_mget(data)
		}
		self.subscribe(verb: "put") { (data) in
			self.on_put(data)
		}
		self.subscribe(verb: "puts") { (data) in
			self.on_puts(data)
		}
		self.subscribe(verb: "range") { (data) in
			self.on_range(data)
		}
		self.subscribe(verb: "removeCell") { (data) in
			self.on_removeCell(data)
		}
		self.subscribe(verb: "removeColumn") { (data) in
			self.on_removeColumn(data)
		}
		self.subscribe(verb: "removeRange") { (data) in
			self.on_removeRange(data)
		}
		self.subscribe(verb: "removeRow") { (data) in
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
	public func addMe(parameter: UserGroup) {
		self.zetaPushService.publish(verb: "addMe", parameters: parameter)
	}
	/**
	 * Adds a user to a group
	 * 
	 * Adds the given user to the given group.
	 * Addition may fail if the given group does not already exist.
	 * */
	public func addUser(parameter: UserGroup) {
		self.zetaPushService.publish(verb: "addUser", parameters: parameter)
	}
	/**Adds users to a group*/
	public func addUsers(parameter: GroupUsers) {
		self.zetaPushService.publish(verb: "addUsers", parameters: parameter)
	}
	/**
	 * Lists my owned groups, with details
	 * 
	 * Returns the whole list of groups owned by the current user, with their members
	 * */
	public func allGroups(parameter: ImpersonatedRequest) {
		self.zetaPushService.publish(verb: "allGroups", parameters: parameter)
	}
	/**
	 * Creates a group
	 * 
	 * Creates a group owned by the current user.
	 * Group creation may fail if the group already exists.
	 * */
	public func createGroup(parameter: GroupInfo) {
		self.zetaPushService.publish(verb: "createGroup", parameters: parameter)
	}
	/**
	 * Removes a group
	 * 
	 * Removes the given group owned by the current user or the given owner.
	 * Also removes all grants to that group.
	 * */
	public func delGroup(parameter: GroupRelated) {
		self.zetaPushService.publish(verb: "delGroup", parameters: parameter)
	}
	/**Removes a user from a group*/
	public func delUser(parameter: UserGroup) {
		self.zetaPushService.publish(verb: "delUser", parameters: parameter)
	}
	/**Removes users from a group*/
	public func delUsers(parameter: GroupUsers) {
		self.zetaPushService.publish(verb: "delUsers", parameters: parameter)
	}
	/**
	 * Tests for a group's existence
	 * 
	 * Returns whether a group exists or not.
	 * */
	public func exists(parameter: GroupRelated) {
		self.zetaPushService.publish(verb: "exists", parameters: parameter)
	}
	/**
	 * Grants a right to a group
	 * 
	 * The granting API does not do any check when storing permissions.
	 * In particular when granting rights on a verb and resource of another API, the existence of said verb and resource is not checked.
	 * */
	public func grant(parameter: Grant) {
		self.zetaPushService.publish(verb: "grant", parameters: parameter)
	}
	/**
	 * Lists the group users
	 * 
	 * Returns the whole list of users configured inside the given group.
	 * */
	public func groupUsers(parameter: GroupRelated) {
		self.zetaPushService.publish(verb: "groupUsers", parameters: parameter)
	}
	/**
	 * Lists my owned groups
	 * 
	 * Returns the whole list of groups owned by the current user
	 * */
	public func groups(parameter: ImpersonatedRequest) {
		self.zetaPushService.publish(verb: "groups", parameters: parameter)
	}
	/**
	 * Lists rights for a group
	 * 
	 * This API lists explicitly configured rights.
	 * Effective rights include configured rights, implicit rights and inherited rights.
	 * */
	public func listGrants(parameter: GroupRelated) {
		self.zetaPushService.publish(verb: "listGrants", parameters: parameter)
	}
	/**
	 * Lists presences for a group
	 * 
	 * Returns the list of members of the given groups, along with their actual and current presence on the zetapush server.
	 * The current implementation does not include information about the particular devices users are connected with.
	 * If a user is connected twice with two different devices, two identical entries will be returned.
	 * */
	public func listPresences(parameter: GroupRelated) {
		self.zetaPushService.publish(verb: "listPresences", parameters: parameter)
	}
	/**
	 * Tests membership
	 * 
	 * Tests whether I (the caller) am a member of the given group.
	 * This verb exists so that users can determine if they are part of a group without being granted particular rights.
	 * The 'user' field is implicitly set to the current user's key.
	 * */
	public func memberOf(parameter: UserMembership) {
		self.zetaPushService.publish(verb: "memberOf", parameters: parameter)
	}
	/**
	 * Grants rights to a group
	 * 
	 * Grant several rights at once.
	 * */
	public func mgrant(parameter: Grants) {
		self.zetaPushService.publish(verb: "mgrant", parameters: parameter)
	}
	/**Revokes rights for a group*/
	public func mrevoke(parameter: Grants) {
		self.zetaPushService.publish(verb: "mrevoke", parameters: parameter)
	}
	/**
	 * Lists the groups I am part of
	 * 
	 * Returns the whole list of groups the current user is part of.
	 * Groups may be owned by anyone, including the current user.
	 * */
	public func myGroups(parameter: ImpersonatedRequest) {
		self.zetaPushService.publish(verb: "myGroups", parameters: parameter)
	}
	/**Revokes a right for a group*/
	public func revoke(parameter: Grant) {
		self.zetaPushService.publish(verb: "revoke", parameters: parameter)
	}
}
open class GroupManagementListener : ZetaPushServiceListener {

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
	open override func register() {
		self.subscribe(verb: "addMe") { (data) in
			self.on_addMe(data)
		}
		self.subscribe(verb: "addUser") { (data) in
			self.on_addUser(data)
		}
		self.subscribe(verb: "allGroups") { (data) in
			self.on_allGroups(data)
		}
		self.subscribe(verb: "createGroup") { (data) in
			self.on_createGroup(data)
		}
		self.subscribe(verb: "delGroup") { (data) in
			self.on_delGroup(data)
		}
		self.subscribe(verb: "delUser") { (data) in
			self.on_delUser(data)
		}
		self.subscribe(verb: "exists") { (data) in
			self.on_exists(data)
		}
		self.subscribe(verb: "grant") { (data) in
			self.on_grant(data)
		}
		self.subscribe(verb: "groupUsers") { (data) in
			self.on_groupUsers(data)
		}
		self.subscribe(verb: "groups") { (data) in
			self.on_groups(data)
		}
		self.subscribe(verb: "listGrants") { (data) in
			self.on_listGrants(data)
		}
		self.subscribe(verb: "listPresences") { (data) in
			self.on_listPresences(data)
		}
		self.subscribe(verb: "memberOf") { (data) in
			self.on_memberOf(data)
		}
		self.subscribe(verb: "mgrant") { (data) in
			self.on_mgrant(data)
		}
		self.subscribe(verb: "mrevoke") { (data) in
			self.on_mrevoke(data)
		}
		self.subscribe(verb: "myGroups") { (data) in
			self.on_myGroups(data)
		}
		self.subscribe(verb: "revoke") { (data) in
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
	public func addListener(parameter: RemoteCommand) {
		self.zetaPushService.publish(verb: "addListener", parameters: parameter)
	}
	/**Response to 'getCapabilities'*/
	public func capabilities(parameter: DeviceCapabilities) {
		self.zetaPushService.publish(verb: "capabilities", parameters: parameter)
	}
	/**
	 * Executes a command
	 * 
	 * A user executes a command on a device owned by anyone who granted him the right authorizations.
	 * The command is issued on channel 'command'
	 * */
	public func execute(parameter: RemoteCommand) {
		self.zetaPushService.publish(verb: "execute", parameters: parameter)
	}
	/**
	 * Requests capabilities
	 * 
	 * A user requests all his devices for the whole list of their capabilities.
	 * Devices are expected to answer on channel 'capabilities'
	 * */
	public func getCapabilities() {
		self.zetaPushService.publish(verb: "getCapabilities")
	}
	/**
	 * Notifies of some event
	 * 
	 * A device notifies the registered users/devices on this channel.
	 * The server forwards the notification to said users.
	 * */
	public func notify(parameter: RemoteCommand) {
		self.zetaPushService.publish(verb: "notify", parameters: parameter)
	}
	/**
	 * Pings devices
	 * 
	 * A user requests all devices (of all owners) on which he has authorizations to respond on channel 'pong'
	 * */
	public func ping(parameter: PingRequest) {
		self.zetaPushService.publish(verb: "ping", parameters: parameter)
	}
	/**Response to ping*/
	public func pong(parameter: DeviceAvailability) {
		self.zetaPushService.publish(verb: "pong", parameters: parameter)
	}
	/**
	 * Removes a listener
	 * 
	 * A user stops requesting notifications from a device owned by anyone who granted him the right authorizations
	 * */
	public func removeListener(parameter: RemoteCommand) {
		self.zetaPushService.publish(verb: "removeListener", parameters: parameter)
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
	public func call(parameter: HttpClientCall) {
		self.zetaPushService.publish(verb: "call", parameters: parameter)
	}
}
open class HttpclientListener : ZetaPushServiceListener {

	// Listener for "call"
	open func on_call(_ parameter: HttpClientResponse) { }
	open override func register() {
		self.subscribe(verb: "call") { (data) in
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
 * User API for macro debugging
 * 
 * Debugger API for macro.
 * These API verbs are not intended for use by most developers.
 * @access public
 * */
public class MacroDebugPublisher : ZetaPushServicePublisher {
	/**Enables or disables a breakpoint*/
	public func breakpoint(parameter: MacroDebugBreakpointSet) {
		self.zetaPushService.publish(verb: "breakpoint", parameters: parameter)
	}
	/**Requests some information*/
	public func info(parameter: MacroDebugInfoRequest) {
		self.zetaPushService.publish(verb: "info", parameters: parameter)
	}
	/**
	 * Debugs a previously recorded macro
	 * 
	 * The given breakpoints will be honored, causing a suspension of the execution, resumable via 'resume'.
	 * Only one debug session can be active at any given time.
	 * */
	public func livedebug(parameter: MacroDebugSession) {
		self.zetaPushService.publish(verb: "livedebug", parameters: parameter)
	}
	/**Resumes a paused macro*/
	public func resume(parameter: MacroDebugStep) {
		self.zetaPushService.publish(verb: "resume", parameters: parameter)
	}
	/**Sets a variable value*/
	public func variable(parameter: MacroDebugVariableChange) {
		self.zetaPushService.publish(verb: "variable", parameters: parameter)
	}
}
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
	public func call(parameter: MacroPlay) {
		self.zetaPushService.publish(verb: "call", parameters: parameter)
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
	public func send(parameter: Message) {
		self.zetaPushService.publish(verb: "send", parameters: parameter)
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
	public func call(parameter: TaskRequest) {
		self.zetaPushService.publish(verb: "call", parameters: parameter)
	}
	/**
	 * Notifies completion of a task
	 * 
	 * Consumer API.
	 * The tasker notifies completion of the given task to the server.
	 * The tasker can optionally include a result or an error code.
	 * */
	public func done(parameter: TaskCompletion) {
		self.zetaPushService.publish(verb: "done", parameters: parameter)
	}
	/**
	 * Registers a consumer
	 * 
	 * Consumer API.
	 * Registers the current user resource as an available task consumer.
	 * Tasks will be then dispatched to that consumer.
	 * */
	public func register(parameter: TaskConsumerRegistration) {
		self.zetaPushService.publish(verb: "register", parameters: parameter)
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
	public func submit(parameter: TaskRequest) {
		self.zetaPushService.publish(verb: "submit", parameters: parameter)
	}
	/**
	 * Unregisters a consumer
	 * 
	 * Consumer API.
	 * Unregisters the current user resource as an available task consumer.
	 * All non finished tasks are returned to the server.
	 * */
	public func unregister() {
		self.zetaPushService.publish(verb: "unregister")
	}
}
open class QueueListener : ZetaPushServiceListener {

	// Listener for "call"
	open func on_call(_ parameter: TaskCompletion) { }
	open override func register() {
		self.subscribe(verb: "call") { (data) in
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
	public func list(parameter: CronTaskListRequest) {
		self.zetaPushService.publish(verb: "list", parameters: parameter)
	}
}
open class CronListener : ZetaPushServiceListener {

	// Listener for "list"
	open func on_list(_ parameter: CronPlanning) { }
	open override func register() {
		self.subscribe(verb: "list") { (data) in
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
	public func delete(parameter: SearchDocumentId) {
		self.zetaPushService.publish(verb: "delete", parameters: parameter)
	}
	/**
	 * Gets data
	 * 
	 * Retrieves a document from the elasticsearch engine by id.
	 * */
	public func get(parameter: SearchDocumentId) {
		self.zetaPushService.publish(verb: "get", parameters: parameter)
	}
	/**
	 * Indexes data
	 * 
	 * Inserts or updates a document into the elasticsearch engine.
	 * */
	public func index(parameter: SearchData) {
		self.zetaPushService.publish(verb: "index", parameters: parameter)
	}
	/**Searches for data*/
	public func search(parameter: SearchRequest) {
		self.zetaPushService.publish(verb: "search", parameters: parameter)
	}
}
open class SearchListener : ZetaPushServiceListener {

	// Listener for "get"
	open func on_get(_ parameter: SearchData) { }
	// Listener for "search"
	open func on_search(_ parameter: SearchResults) { }
	open override func register() {
		self.subscribe(verb: "get") { (data) in
			self.on_get(data)
		}
		self.subscribe(verb: "search") { (data) in
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
	public func getTemplate(parameter: WorkflowTemplateInfoRequest) {
		self.zetaPushService.publish(verb: "getTemplate", parameters: parameter)
	}
	/**
	 * Asks for a list of templates
	 * 
	 * Returns a paginated list of templates.
	 * */
	public func listTemplates(parameter: WorkflowTemplateList) {
		self.zetaPushService.publish(verb: "listTemplates", parameters: parameter)
	}
}
open class WorkflowDefinitionServiceListener : ZetaPushServiceListener {

	// Listener for "getTemplate"
	open func on_getTemplate(_ parameter: WorkflowTemplate) { }
	// Listener for "listTemplates"
	open func on_listTemplates(_ parameter: WorkflowTemplateListResult) { }
	open override func register() {
		self.subscribe(verb: "getTemplate") { (data) in
			self.on_getTemplate(data)
		}
		self.subscribe(verb: "listTemplates") { (data) in
			self.on_listTemplates(data)
		}
	}
}
/**
 * Simple workflow service : workflow usage API
 * 
 * Instantiate workflows.
 * Transition requests trigger the registered code for the target state.
 * @access public
 * */
public class WorkflowServicePublisher : ZetaPushServicePublisher {
	/**Creates a new workflow.*/
	public func create(parameter: WorkflowCreationRequest) {
		self.zetaPushService.publish(verb: "create", parameters: parameter)
	}
	/**
	 * Forces a transition
	 * 
	 * The state is forcefully changed to the given state
	 * Theoretically forbidden transitions are authorized.
	 * Otherwise, this verb behaves as 'transition'
	 * */
	public func forceTransition(parameter: WorkflowTransitionRequest) {
		self.zetaPushService.publish(verb: "forceTransition", parameters: parameter)
	}
	/**Lists this user's workflows.*/
	public func list(parameter: WorkflowList) {
		self.zetaPushService.publish(verb: "list", parameters: parameter)
	}
	/**
	 * Transitions this workflow to another state.
	 * 
	 * The wanted transition must be one of the allowed transitions of the workflow.
	 * If the call is a macro, it has the possibility to prevent the transition by returning {'transition':'failed', 'message':'optional error message'}.
	 * The transition is synchronous if and only if it triggers a macro (use the @Workflow ZMS annotation).
	 * The data passed to the macro has the type 'WorkflowTransitionInfo'
	 * */
	public func transition(parameter: WorkflowTransitionRequest) {
		self.zetaPushService.publish(verb: "transition", parameters: parameter)
	}
}
open class WorkflowServiceListener : ZetaPushServiceListener {

	// Listener for "create"
	open func on_create(_ parameter: WorkflowInfo) { }
	// Listener for "forceTransition"
	open func on_forceTransition(_ parameter: WorkflowTransitionRequest) { }
	// Listener for "list"
	open func on_list(_ parameter: PageContentWorkflowInfo) { }
	// Listener for "transition"
	open func on_transition(_ parameter: WorkflowTransitionRequest) { }
	open override func register() {
		self.subscribe(verb: "create") { (data) in
			self.on_create(data)
		}
		self.subscribe(verb: "forceTransition") { (data) in
			self.on_forceTransition(data)
		}
		self.subscribe(verb: "list") { (data) in
			self.on_list(data)
		}
		self.subscribe(verb: "transition") { (data) in
			self.on_transition(data)
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
	public func evaluate(parameter: TemplateRequest) {
		self.zetaPushService.publish(verb: "evaluate", parameters: parameter)
	}
}
open class TemplateListener : ZetaPushServiceListener {

	// Listener for "evaluate"
	open func on_evaluate(_ parameter: TemplateResult) { }
	open override func register() {
		self.subscribe(verb: "evaluate") { (data) in
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
	public func cp(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "cp", parameters: parameter)
	}
	/**
	 * Returns disk usage
	 * 
	 * Returns an recursively aggregated number of used bytes, starting at the given path.
	 * */
	public func du(parameter: ZpfsRequest) {
		self.zetaPushService.publish(verb: "du", parameters: parameter)
	}
	/**
	 * Links a file
	 * 
	 * Links a file or folder to another location.
	 * May fail if the target location is not empty.
	 * */
	public func link(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "link", parameters: parameter)
	}
	/**
	 * Lists a folder content
	 * 
	 * Returns a paginated list of the folder's content.
	 * */
	public func ls(parameter: FolderListingRequest) {
		self.zetaPushService.publish(verb: "ls", parameters: parameter)
	}
	/**
	 * Creates a folder
	 * 
	 * Creates a new folder.
	 * May fail if the target location is not empty.
	 * */
	public func mkdir(parameter: FolderCreationRequest) {
		self.zetaPushService.publish(verb: "mkdir", parameters: parameter)
	}
	/**
	 * Moves a file
	 * 
	 * Moves a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	public func mv(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "mv", parameters: parameter)
	}
	/**
	 * Notifies of upload completion
	 * 
	 * The client application calls this verb to notify that it's done uploading to the cloud.
	 * Calling that verb MAY trigger additional events such as thumbnail/metadata creation.
	 * */
	public func newFile(parameter: FileUploadComplete) {
		self.zetaPushService.publish(verb: "newFile", parameters: parameter)
	}
	/**
	 * Requests an upload URL
	 * 
	 * Requests an HTTP upload URL.
	 * The URL contains temporary credentials (typically valid for a few minutes) and is meant for immediate use.
	 * */
	public func newUploadUrl(parameter: FileUploadRequest) {
		self.zetaPushService.publish(verb: "newUploadUrl", parameters: parameter)
	}
	/**
	 * Removes a file
	 * 
	 * Removes a file or folder (recursively).
	 * */
	public func rm(parameter: FileRemoval) {
		self.zetaPushService.publish(verb: "rm", parameters: parameter)
	}
	/**
	 * Creates a snapshot in a new folder
	 * 
	 * Creates a new folder and then copies the given files inside
	 * */
	public func snapshot(parameter: SnapshotCreationRequest) {
		self.zetaPushService.publish(verb: "snapshot", parameters: parameter)
	}
	/**
	 * Returns information about a file
	 * 
	 * Returns information about a single file.
	 * The entry field will be null if the path does not exist
	 * */
	public func stat(parameter: FileStatRequest) {
		self.zetaPushService.publish(verb: "stat", parameters: parameter)
	}
	/**Updates a file's metadata*/
	public func updateMeta(parameter: FileMetaUpdate) {
		self.zetaPushService.publish(verb: "updateMeta", parameters: parameter)
	}
}
open class Zpfs_s3Listener : ZetaPushServiceListener {

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
	open override func register() {
		self.subscribe(verb: "cp") { (data) in
			self.on_cp(data)
		}
		self.subscribe(verb: "du") { (data) in
			self.on_du(data)
		}
		self.subscribe(verb: "link") { (data) in
			self.on_link(data)
		}
		self.subscribe(verb: "ls") { (data) in
			self.on_ls(data)
		}
		self.subscribe(verb: "mkdir") { (data) in
			self.on_mkdir(data)
		}
		self.subscribe(verb: "mv") { (data) in
			self.on_mv(data)
		}
		self.subscribe(verb: "newFile") { (data) in
			self.on_newFile(data)
		}
		self.subscribe(verb: "newUploadUrl") { (data) in
			self.on_newUploadUrl(data)
		}
		self.subscribe(verb: "rm") { (data) in
			self.on_rm(data)
		}
		self.subscribe(verb: "snapshot") { (data) in
			self.on_snapshot(data)
		}
		self.subscribe(verb: "stat") { (data) in
			self.on_stat(data)
		}
		self.subscribe(verb: "updateMeta") { (data) in
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
	public func cp(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "cp", parameters: parameter)
	}
	/**
	 * Returns disk usage
	 * 
	 * Returns an recursively aggregated number of used bytes, starting at the given path.
	 * */
	public func du(parameter: ZpfsRequest) {
		self.zetaPushService.publish(verb: "du", parameters: parameter)
	}
	/**
	 * Links a file
	 * 
	 * Links a file or folder to another location.
	 * May fail if the target location is not empty.
	 * */
	public func link(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "link", parameters: parameter)
	}
	/**
	 * Lists a folder content
	 * 
	 * Returns a paginated list of the folder's content.
	 * */
	public func ls(parameter: FolderListingRequest) {
		self.zetaPushService.publish(verb: "ls", parameters: parameter)
	}
	/**
	 * Creates a folder
	 * 
	 * Creates a new folder.
	 * May fail if the target location is not empty.
	 * */
	public func mkdir(parameter: FolderCreationRequest) {
		self.zetaPushService.publish(verb: "mkdir", parameters: parameter)
	}
	/**
	 * Moves a file
	 * 
	 * Moves a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	public func mv(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "mv", parameters: parameter)
	}
	/**
	 * Notifies of upload completion
	 * 
	 * The client application calls this verb to notify that it's done uploading to the cloud.
	 * Calling that verb MAY trigger additional events such as thumbnail/metadata creation.
	 * */
	public func newFile(parameter: FileUploadComplete) {
		self.zetaPushService.publish(verb: "newFile", parameters: parameter)
	}
	/**
	 * Requests an upload URL
	 * 
	 * Requests an HTTP upload URL.
	 * The URL contains temporary credentials (typically valid for a few minutes) and is meant for immediate use.
	 * */
	public func newUploadUrl(parameter: FileUploadRequest) {
		self.zetaPushService.publish(verb: "newUploadUrl", parameters: parameter)
	}
	/**
	 * Removes a file
	 * 
	 * Removes a file or folder (recursively).
	 * */
	public func rm(parameter: FileRemoval) {
		self.zetaPushService.publish(verb: "rm", parameters: parameter)
	}
	/**
	 * Creates a snapshot in a new folder
	 * 
	 * Creates a new folder and then copies the given files inside
	 * */
	public func snapshot(parameter: SnapshotCreationRequest) {
		self.zetaPushService.publish(verb: "snapshot", parameters: parameter)
	}
	/**
	 * Returns information about a file
	 * 
	 * Returns information about a single file.
	 * The entry field will be null if the path does not exist
	 * */
	public func stat(parameter: FileStatRequest) {
		self.zetaPushService.publish(verb: "stat", parameters: parameter)
	}
	/**Updates a file's metadata*/
	public func updateMeta(parameter: FileMetaUpdate) {
		self.zetaPushService.publish(verb: "updateMeta", parameters: parameter)
	}
}
open class Zpfs_hdfsListener : ZetaPushServiceListener {

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
	open override func register() {
		self.subscribe(verb: "cp") { (data) in
			self.on_cp(data)
		}
		self.subscribe(verb: "du") { (data) in
			self.on_du(data)
		}
		self.subscribe(verb: "link") { (data) in
			self.on_link(data)
		}
		self.subscribe(verb: "ls") { (data) in
			self.on_ls(data)
		}
		self.subscribe(verb: "mkdir") { (data) in
			self.on_mkdir(data)
		}
		self.subscribe(verb: "mv") { (data) in
			self.on_mv(data)
		}
		self.subscribe(verb: "newFile") { (data) in
			self.on_newFile(data)
		}
		self.subscribe(verb: "newUploadUrl") { (data) in
			self.on_newUploadUrl(data)
		}
		self.subscribe(verb: "rm") { (data) in
			self.on_rm(data)
		}
		self.subscribe(verb: "snapshot") { (data) in
			self.on_snapshot(data)
		}
		self.subscribe(verb: "stat") { (data) in
			self.on_stat(data)
		}
		self.subscribe(verb: "updateMeta") { (data) in
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
	public func cp(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "cp", parameters: parameter)
	}
	/**
	 * Returns disk usage
	 * 
	 * Returns an recursively aggregated number of used bytes, starting at the given path.
	 * */
	public func du(parameter: ZpfsRequest) {
		self.zetaPushService.publish(verb: "du", parameters: parameter)
	}
	/**
	 * Links a file
	 * 
	 * Links a file or folder to another location.
	 * May fail if the target location is not empty.
	 * */
	public func link(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "link", parameters: parameter)
	}
	/**
	 * Lists a folder content
	 * 
	 * Returns a paginated list of the folder's content.
	 * */
	public func ls(parameter: FolderListingRequest) {
		self.zetaPushService.publish(verb: "ls", parameters: parameter)
	}
	/**
	 * Creates a folder
	 * 
	 * Creates a new folder.
	 * May fail if the target location is not empty.
	 * */
	public func mkdir(parameter: FolderCreationRequest) {
		self.zetaPushService.publish(verb: "mkdir", parameters: parameter)
	}
	/**
	 * Moves a file
	 * 
	 * Moves a file or folder (recursively) to a new location.
	 * May fail if the target location is not empty.
	 * */
	public func mv(parameter: CreatedFile) {
		self.zetaPushService.publish(verb: "mv", parameters: parameter)
	}
	/**
	 * Notifies of upload completion
	 * 
	 * The client application calls this verb to notify that it's done uploading to the cloud.
	 * Calling that verb MAY trigger additional events such as thumbnail/metadata creation.
	 * */
	public func newFile(parameter: FileUploadComplete) {
		self.zetaPushService.publish(verb: "newFile", parameters: parameter)
	}
	/**
	 * Requests an upload URL
	 * 
	 * Requests an HTTP upload URL.
	 * The URL contains temporary credentials (typically valid for a few minutes) and is meant for immediate use.
	 * */
	public func newUploadUrl(parameter: FileUploadRequest) {
		self.zetaPushService.publish(verb: "newUploadUrl", parameters: parameter)
	}
	/**
	 * Removes a file
	 * 
	 * Removes a file or folder (recursively).
	 * */
	public func rm(parameter: FileRemoval) {
		self.zetaPushService.publish(verb: "rm", parameters: parameter)
	}
	/**
	 * Creates a snapshot in a new folder
	 * 
	 * Creates a new folder and then copies the given files inside
	 * */
	public func snapshot(parameter: SnapshotCreationRequest) {
		self.zetaPushService.publish(verb: "snapshot", parameters: parameter)
	}
	/**
	 * Returns information about a file
	 * 
	 * Returns information about a single file.
	 * The entry field will be null if the path does not exist
	 * */
	public func stat(parameter: FileStatRequest) {
		self.zetaPushService.publish(verb: "stat", parameters: parameter)
	}
	/**Updates a file's metadata*/
	public func updateMeta(parameter: FileMetaUpdate) {
		self.zetaPushService.publish(verb: "updateMeta", parameters: parameter)
	}
}
open class Zpfs_s3compatListener : ZetaPushServiceListener {

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
	open override func register() {
		self.subscribe(verb: "cp") { (data) in
			self.on_cp(data)
		}
		self.subscribe(verb: "du") { (data) in
			self.on_du(data)
		}
		self.subscribe(verb: "link") { (data) in
			self.on_link(data)
		}
		self.subscribe(verb: "ls") { (data) in
			self.on_ls(data)
		}
		self.subscribe(verb: "mkdir") { (data) in
			self.on_mkdir(data)
		}
		self.subscribe(verb: "mv") { (data) in
			self.on_mv(data)
		}
		self.subscribe(verb: "newFile") { (data) in
			self.on_newFile(data)
		}
		self.subscribe(verb: "newUploadUrl") { (data) in
			self.on_newUploadUrl(data)
		}
		self.subscribe(verb: "rm") { (data) in
			self.on_rm(data)
		}
		self.subscribe(verb: "snapshot") { (data) in
			self.on_snapshot(data)
		}
		self.subscribe(verb: "stat") { (data) in
			self.on_stat(data)
		}
		self.subscribe(verb: "updateMeta") { (data) in
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
	public func search(parameter: UserSearchRequest) {
		self.zetaPushService.publish(verb: "search", parameters: parameter)
	}
	/**Requests public data for the specified users*/
	public func userInfo(parameter: UserInfoRequest) {
		self.zetaPushService.publish(verb: "userInfo", parameters: parameter)
	}
}
open class UserdirListener : ZetaPushServiceListener {

	// Listener for "search"
	open func on_search(_ parameter: UserSearchResponse) { }
	// Listener for "userInfo"
	open func on_userInfo(_ parameter: UserInfoResponse) { }
	open override func register() {
		self.subscribe(verb: "search") { (data) in
			self.on_search(data)
		}
		self.subscribe(verb: "userInfo") { (data) in
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
	public func control(parameter: UserControlRequest) {
		self.zetaPushService.publish(verb: "control", parameters: parameter)
	}
	/**
	 * Returns the current token
	 * 
	 * Returns your current session's private token. The token field may be null, if you did not log in with this authentication.
	 * The token can be used to log in as the same weak user another time.
	 * */
	public func getToken() {
		self.zetaPushService.publish(verb: "getToken")
	}
	/**
	 * Releases a session
	 * 
	 * Releases control of a weak user session, identified by the given public token.
	 * The weak user session must have been previously controlled by a call to 'control'.
	 * */
	public func release(parameter: UserControlRequest) {
		self.zetaPushService.publish(verb: "release", parameters: parameter)
	}
}
open class WeakListener : ZetaPushServiceListener {

	// Listener for "control"
	open func on_control(_ parameter: UserControlStatus) { }
	// Listener for "getToken"
	open func on_getToken(_ parameter: UserToken) { }
	// Listener for "release"
	open func on_release(_ parameter: UserControlStatus) { }
	open override func register() {
		self.subscribe(verb: "control") { (data) in
			self.on_control(data)
		}
		self.subscribe(verb: "getToken") { (data) in
			self.on_getToken(data)
		}
		self.subscribe(verb: "release") { (data) in
			self.on_release(data)
		}
	}
}
