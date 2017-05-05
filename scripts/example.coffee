# Description:
#   It is Bottan Main Module
#

random = (n) -> Math.floor(Math.random() * n)

module.exports = (robot) ->

  robot.respond /(((い|ゐ|居)(て?))(?!り)|(お|を|居)|((い|居)(て?)は)(?!ま))((る|ん(?=の))|((り?)ます)(?!ん))((の?ん?)(です)?|(んだ)(?!か))?(か(い?な?|よ|ね)?|(よ?)(ね|な))?\s?(\?|？)/i, (msg) ->
    if msg.message.user.name == "hayate"
      msg.send "いません"
    else if msg.message.user.name == "ハヤテ"
      msg.send "いません"
    else
      msg.send "はい、ここにいます!"

  robot.respond /(い|生|活)きて(((い|ゐ|居)(て?))(?!り)|(お|を|居)|)?((る|ん(?=の))|((り?)ます)(?!ん))((の?ん?)(です)?|(んだ)(?!か))?(か(い?な?|よ|ね)?|(よ?)(ね|な))?/i, (msg) ->
    if msg.message.user.name == "hayate"
      msg.send "いません"
    else if msg.message.user.name == "ハヤテ"
      msg.send "いません"
    else
      msg.send "はい、ここにいます!"

  robot.respond /(調子どう|元気)/i, (msg) ->
    if msg.message.user.name == "hayate"
      msg.send "あなたのおかげで元気なくした"
    else if msg.message.user.name == "ハヤテ"
      msg.send "あなたのおかげで元気なくした"
    else
      msg.send "はい、元気です！"

  robot.hear /(はやてす|はやて|ハヤテス|ハヤテ)(どう思う|どう|ってどう思う|とは|って誰)(？|)/i, (msg) ->
    himo = ["ゴミ", "カス", "ヒモ", "うんこ", "はなくそ"]
    msg.send msg.random himo

  robot.hear /(はやてす|はやて|ハヤテス|ハヤテ)(は|)(正社員|)(？|)/i, (msg) ->
    neet = "ニート"
    msg.send  neet

  robot.hear /(おなかすいた|腹減った|はらへった|おなかすいたよー|おなかすきました)/i, (msg) ->
    if msg.message.user.name == "hayate"
      msg.send "https://ima.goo.ne.jp/column/img2/erisu/20150904_unko_20.jpg"
    else if msg.message.user.name == "ハヤテ"
      msg.send "https://ima.goo.ne.jp/column/img2/erisu/20150904_unko_20.jpg"
    else
      mesi = ["https://pbs.twimg.com/media/BWNpjsRCQAALxjM.jpg", "https://pbs.twimg.com/media/BV_f36ECYAANSYI.jpg", "https://pbs.twimg.com/media/BWNTDWFCcAAhlKa.jpg", "https://pbs.twimg.com/media/BWJSy53CQAAIG54.jpg", "https://pbs.twimg.com/media/BWJVzRNCMAEF3to.jpg", "https://pbs.twimg.com/media/BWJXd-bCEAAyulS.jpg:large", "https://pbs.twimg.com/media/BWJL_7WCEAA6y85.jpg:large"]
      msg.send msg.random mesi

  robot.hear /(おはよう！|おは|おはよん|おはよ|おきた|起床|おはよう)/i, (msg) ->
    if msg.message.user.name == "hayate"
      msg.send "ねてろ"
    else if msg.message.user.name == "ハヤテ"
      msg.send "ねてろ"
    else
      goodmo = ['おはようございます！', 'おはようですー！', 'お早いですね！','今日も一日頑張りましょう！']
      result = goodmo[random(4)]
      msg.send "#{result}#{msg.message.user.name}さん"

  robot.hear /(今日の運勢|うらない|占い)/i, (msg) ->
    fortunes = [
      '大吉',
      '末吉',
      '凶',
      '吉'
    ]
    result = fortunes[random(4)]
    if msg.message.user.name == "hayate"
      msg.send "大凶"
    else if msg.message.user.name == "ハヤテ"
      msg.send "大凶"
    else
      msg.send "今日の運勢: #{result}"
