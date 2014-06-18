# Description:
#   Display quote from "Paye ta shnek <http://payetashnek.tumblr.com>".
#
# Dependencies:
#   "cheerio": "0.7.0"
#   "he": "0.4.1"
#
# Configuration:
#   None
#
# Commands:
#   hubot paye ta shnek- Returns last quote
#   hubot shnek - Returns random quote
#
# Author:
#   Eunomie

cheerio = require('cheerio')
he = require('he')

module.exports = (robot)->
  robot.respond /paye ta shnek/i, (message)->
    send_quote message, 'http://payetashnek.tumblr.com', (text)->
      message.send text
  robot.respond /shnek/i, (message)->
    send_quote message, 'http://payetashnek.tumblr.com/random', (text)->
      message.send text

send_quote = (message, location, response_handler)->
  url = location

  message.http(url).get() (error, response, body)->
    return response_handler "Sorry, something went wrong" if error

    if response.statusCode == 302 || response.statusCode == 301
      location = response.headers['location']
      return send_meme(message, location, response_handler)

    txt = get_quote(body, ".post h2")

    response_handler txt

get_quote = (body, selector)->
  $ = cheerio.load(body)
  he.decode $(selector).first().text()
