chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'payetashnek', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/payetashnek')(@robot)

  it 'registers respond listeners', ->
    expect(@robot.respond.args[0][0].toString()).to.equal("/paye ta shnek/i")
    expect(@robot.respond.args[1][0].toString()).to.equal("/shnek/i")
