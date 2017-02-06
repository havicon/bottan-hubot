# Description:
#   It is Bottan Main Module
#

random = (n) -> Math.floor(Math.random() * n)

module.exports = (robot) ->

  robot.respond /(((い|ゐ|居)(て?))(?!り)|(お|を|居)|((い|居)(て?)は)(?!ま))((る|ん(?=の))|((り?)ます)(?!ん))((の?ん?)(です)?|(んだ)(?!か))?(か(い?な?|よ|ね)?|(よ?)(ね|な))?\s?(\?|？)/i, (msg) ->
    msg.send "はい、ここにいます!"

  robot.respond /(い|生|活)きて(((い|ゐ|居)(て?))(?!り)|(お|を|居)|)?((る|ん(?=の))|((り?)ます)(?!ん))((の?ん?)(です)?|(んだ)(?!か))?(か(い?な?|よ|ね)?|(よ?)(ね|な))?/i, (msg) ->
    msg.send "はい、ここにいます。"

  robot.respond /(調子どう|元気)/i, (msg) ->
    msg.send "はい、元気です！"

  robot.hear /(はやてす|はやて|ハヤテス|ハヤテ)(どう思う|どう|ってどう思う|とは|って誰)(？|)/i, (msg) ->
    himo = ["ゴミ", "カス", "ヒモ", "うんこ", "はなくそ"]
    msg.send msg.random himo

  robot.hear /(おなかすいた|腹減った|はらへった|おなかすいたよー|おなかすきました)/i, (msg) ->
    mesi = ["https://pbs.twimg.com/media/BWNpjsRCQAALxjM.jpg", "https://pbs.twimg.com/media/BV_f36ECYAANSYI.jpg", "https://pbs.twimg.com/media/BWNTDWFCcAAhlKa.jpg", "https://pbs.twimg.com/media/BWJSy53CQAAIG54.jpg", "https://pbs.twimg.com/media/BWJVzRNCMAEF3to.jpg", "https://pbs.twimg.com/media/BWJXd-bCEAAyulS.jpg:large", "https://pbs.twimg.com/media/BWJL_7WCEAA6y85.jpg:large"]
    msg.send msg.random mesi

  robot.hear /(おはよう！|おは|おはよん|おはよ|おきた|起床|おはよう)/i, (msg) ->
    if msg.message.user.name == "hayate"
      msg.send "永遠に地の底に眠れ。ゴミ"
    goodmo = ['おはようございます！', 'おはようですー！', 'お早いですね！','今日も一日頑張りましょう！']
    result = goodmo[random(4)]
    msg.send "#{result}#{msg.message.user.name}さん"
