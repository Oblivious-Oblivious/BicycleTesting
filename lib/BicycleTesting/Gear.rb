class Gear
    attr_reader :chainring, :cog, :wheel, :observer;

    def initialize(args)
        @chainring = args[:chainring];
        @cog       = args[:cog];
        @wheel     = args[:wheel];
        @observer  = args[:observer];
    end

    def changed
        observer.changed chainring, cog;
    end

    def set_cog(new_cog)
        @cog = new_cog;
        changed;
    end

    def set_chainring(new_chainring)
        @chainring = new_chainring;
        changed;
    end

    def ratio
        chainring / cog.to_f;
    end

    def gear_inches
        ratio * wheel.diameter;
    end
end
