require "class_lister/version"

module ClassLister
  class << self
    def list(mod, filter = true)
      return [] unless mod.respond_to?(:constants)

      mod.constants.inject([]) do |collection, name|
        const = mod.const_get name
        collection << const
        collection += list const, false
      end.tap { |c| c.select! { |c| c.is_a? Class } if filter }
    end
  end
end
