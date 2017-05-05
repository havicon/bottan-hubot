module.exports = (robot) ->
  robot.respond /(鯖|サーバー|サーバ)(再起動|再起|さいきどう|さいき)(して|お願いします|おねがいします|おね|よろしく)/i, (msg) ->
    request = msg.http('http://104.198.121.210:25575/restart')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json['message']

  robot.respond /(鯖|サーバー|サーバ)(停止|終了|キル|kill|ストップ|stop)(して|お願いします|おねがいします|おね|よろしく)/i, (msg) ->
    request = msg.http('http://104.198.121.210:25575/stop')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json['message']

  robot.respond /(鯖|サーバー|サーバ|しゃば)(起動|スタート|start)(して|お願いします|おねがいします|おね|よろしく|してください)/i, (msg) ->
    request = msg.http('http://104.198.121.210:25575/start')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json['message']
