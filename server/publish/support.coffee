Meteor.publish 'support', ->

	if Roles.userIsInRole @userId, 'support', Roles.GLOBAL_GROUP
		[
			Projects.find {},
				fields: name: 1
				sort: name: 1
		,
			Meteor.users.find {},
				fields:
					roles: 1
					username: 1
					'profile.firstname': 1
					'profile.lastname': 1
					'profile.language': 1
				sort:
					'profile.lastname': 1
					'profile.firstname': 1
		]
	else
		@ready()