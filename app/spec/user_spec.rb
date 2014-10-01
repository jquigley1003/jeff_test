require 'spec_helper'
require './lib/user'

describe "User" do
  let(:user) { User.new( { age: 75 } ) }

  subject { user  }

  describe "age_based_message_75" do
    context "@age == 75" do
      it "returns proper message" do
        user = User.new( { age: 75} )
        expected_message = "You're 75!"
        expect(user.age_based_message_75).to eq(expected_message)
      end
    end
  end
end