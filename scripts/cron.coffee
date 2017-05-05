CronJob = require('cron').CronJob

module.exports = (robot) ->
  new CronJob '0 * * * * *', () =>
    robot.messageRoom "general", "テスト"
  , null, true, "Asia/Tokyo"
