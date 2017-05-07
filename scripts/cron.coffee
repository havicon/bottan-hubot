CronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '02 4 * * *', () =>
    robot.messageRoom "183769538192605184", "30秒後にサーバーの定期再起動を実行するよ"
  , null, true, "Asia/Tokyo"

  new CronJob '03 4 * * *', () =>
    request = msg.http('http://104.198.121.210:25575/restart')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      robot.messageRoom "183769538192605184", json['message']
  , null, true, "Asia/Tokyo"
