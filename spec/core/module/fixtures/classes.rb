module ModuleSpecs
  class SubModule < Module
    attr_reader :special
    def initialize
      @special = 10
    end
  end

  module A
    cm = def self.a
      :added
    end

    # TODO: there is no MethodContext
    # MethodContext.current.__add_method__ :b, cm
  end

  class F
    include A
  end
end
