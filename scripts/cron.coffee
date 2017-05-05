cronJob = require('cron').CronJob

module.exports = (robot) ->
  send = (room, msg) ->
    response = new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])
    response.send msg

  # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  new cronJob('* * * * * *', () ->
    currentTime = new Date
    send '277289069086507009', "定期メッセージ"
  ).start()
