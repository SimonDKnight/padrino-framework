require 'active_support/option_merger'

module I18n
  def self.with_options(options, &block)
    option_merger = ActiveSupport::OptionMerger.new(self, options)
    block.arity.zero? ? option_merger.instance_eval(&block) : block.call(option_merger)
  end
end
