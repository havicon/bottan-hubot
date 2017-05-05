# -*- mode:coffee; coding:utf-8 -*-
# Description:
#   SSH commands
#

cipher = '''
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
'''

Connection = require('ssh2')
crypto = require('crypto')
aes = crypto.createDecipher('aes-256-cbc', new Buffer(process.env['DECIPHER_PASSWORD']))
privateKey = aes.update(data, 'base64', 'utf8')
privateKey += aes.final('utf8')

cron = require('cron').CronJob

module.exports = (robot) ->

  new cron '* * * * *', () =>

    cmd = 'echo test'

    result = ""
    conn = new Connection()
    conn.on 'ready', () ->
      console.log 'Connection :: ready'
      conn.exec cmd, (err, stream) ->
        if err
          console.log err
          msg.send err
          conn.end()
          return
        stream.on 'exit', (code, signal) ->
          console.log 'Stream :: exit :: code: ' + code + ', signal: ' + signal
        .on 'close', () ->
          console.log 'Stream :: close'
          conn.end()
          msg.send ">>> #{result.toString()}"
        .on 'data', (data) ->
          console.log 'STDOUT: ' + data
          result = data
        .stderr.on 'data', (data) ->
          console.log 'STDERR: ' + data
          result = data
    .connect({
      host: '104.198.121.210',
      port: 22,
      username: 'shouta',
      privateKey: privateKey
    })

  , null, true, "Asia/Tokyo"
