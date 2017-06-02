% CONJUGATE Fenchel conjugate function (of some other given function)

classdef Conjugate < Proximable
    properties
        f
    end
    methods
        function obj = Conjugate(f)
            obj.f = f;
        end
    end
end
