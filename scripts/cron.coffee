CronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '0 * * * * *', () =>
    robot.messageRoom "277289069086507009", "テスト"
  , null, true, "Asia/Tokyo"
