# frozen_string_literal: true

require_relative '../ba_support/message_helpers'

module Ba
  module BaEvents
    module MessageEvent
      extend Discordrb::EventContainer
      message do |event|
        Ba::BaSupport::MessageHelpers.get_message_reactions(event)
                                     .each do |emote|
          event.message.react emote
        end
      end
    end
  end
end
