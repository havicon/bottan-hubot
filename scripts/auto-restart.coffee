module.exports = (robot) ->
  robot.respond /server stop/i, (msg) ->
    request = msg.http('http://104.198.121.210:25575/stop')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json
