###

    Friendly Dragon

                    __                  __
                   ( _)                ( _)
                  / / \\              / /\_\_
                 / /   \\            / / | \ \
                / /     \\          / /  |\ \ \
               /  /   ,  \ ,       / /   /|  \ \
              /  /    |\_ /|      / /   / \   \_\
             /  /  |\/ _ '_| \   / /   /   \    \\
            |  /   |/  0 \0\    / |    |    \    \\
            |    |\|      \_\_ /  /    |     \    \\
            |  | |/    \.\ o\o)  /      \     |    \\
            \    |     /\\`v-v  /        |    |     \\
             | \/    /_| \\_|  /         |    | \    \\
             | |    /__/_     /   _____  |    |  \    \\
             \|    [__]  \_/  |_________  \   |   \    ()
              /    [___] (    \         \  |\ |   |   //
             |    [___]                  |\| \|   /  |/
            /|    [____]                  \  |/\ / / ||
           (  \   [____ /     ) _\      \  \    \| | ||
            \  \  [_____|    / /     __/    \   / / //
            |   \ [_____/   / /        \    |   \/ //
            |   /  '----|   /=\____   _/    |   / //
         __ /  /        |  /   ___/  _/\    \  | ||
        (/-(/-\)       /   \  (/\/\)/  |    /  | /
                      (/\/\)           /   /   //
                             _________/   /    /
                            \____________/    (

###
'use strict'

_ = require 'lodash'
debug = require 'debug'
logger = debug 'FDServer'

nconf = require 'nconf'
express = require 'express'

class FriendlyDragonServer

	constructor: (options) ->
		@expressServer = express()
		if not options then options = nconf.env()

	listen: -> @expressServer.listen arguments

module.exports = FriendlyDragonServer
