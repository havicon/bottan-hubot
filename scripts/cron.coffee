CronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '0 * * * * *', () =>
    robot.messageRoom "277289069086507009", "30秒後にサーバーの定期再起動を実行するよ"

    request = msg.http('http://104.198.121.210:25575/autorestart')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json['message']

  , null, true, "Asia/Tokyo"
