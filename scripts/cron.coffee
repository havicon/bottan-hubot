CronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '02 4 * * *', () =>
    robot.messageRoom "277289069086507009", "30秒後にサーバーの定期再起動を実行するよ"

  new CronJob '03 4 * * *', () =>
    robot.messageRoom "277289069086507009", "再起動キューを送信したよ"

    request = msg.http('http://104.198.121.210:25575/restart')
                          .get()
    request (err, res, body) ->
      json = JSON.parse body
      robot.messageRoom "277289069086507009", json['message']

  , null, true, "Asia/Tokyo"
