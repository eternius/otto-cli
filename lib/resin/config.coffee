path = require('path')

config =

	# TODO: Should be configurable
	remoteUrl: 'https://staging.resin.io'
	apiPrefix: '/ewa/'

	# TODO: Check if not running on UNIX environment
	# and add a custom path accordingly
	dataPrefix: path.join(process.env.HOME, '.resin')
	sshKeyWidth: 43

	pubnub:
		subscribe_key: 'sub-c-bbc12eba-ce4a-11e3-9782-02ee2ddab7fe'
		publish_key: 'pub-c-6cbce8db-bfd1-4fdf-a8c8-53671ae2b226'
		ssl: true

	events:
		deviceLogs: 'device-<%= uuid %>-logs'

	urls:
		signup: '/signup'
		preferences: '/preferences'
		keys: '/user/keys'
		identify: '/blink'
		authenticate: '/login_'
		applicationRestart: '/application/<%= id %>/restart'
		sshKey: '/user/keys/<%= id %>'
		download: '/download'

config.pluginsDirectory = path.join(config.dataPrefix, 'plugins')
config.osDirectory = path.join(config.dataPrefix, 'os')

module.exports = config