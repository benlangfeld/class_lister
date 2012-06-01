require "class_lister/version"

module ClassLister
  class << self
    def list(mod)
      list_all(mod).flatten.select { |c| c.is_a? Class }
    end

    def list_all(mod)
      mod.constants.map do |c|
        const = mod.const_get c
        [const] + ClassLister.list_all(const)
      end
    rescue
      []
    end
  end
end
