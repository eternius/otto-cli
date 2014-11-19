cliff = require('cliff')
tableHelpers = require('./table-helpers')

# TODO: Maybe there is a (sane) way to test this, given
# that the result is not automatically printed by cliff?
exports.horizontal = (contents, map, ordering, colours) ->
	contents = tableHelpers.processTableContents(contents, map)
	ordering = tableHelpers.normaliseOrdering(ordering, contents)
	return cliff.stringifyObjectRows(contents, ordering, colours)

exports.vertical = (contents, map, ordering) ->
	contents = tableHelpers.processTableContents(contents, map)
	ordering = tableHelpers.normaliseOrdering(ordering, contents)

	# TODO: Add some kind of separator to make clear
	# when we're printing another content item
	result = []
	for item in contents
		for next in ordering
			result.push("#{next}: #{item[next]}")
	return result.join('\n')