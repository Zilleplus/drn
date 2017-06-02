% PRESCALE Scales and translates a function input
%
%   PRESCALE(f, a, b) returns the function f(a.*x - b).
% 
%   Only scalar a (i.e., uniform scaling) is currently available.

classdef Prescale < Proximable
    properties
        f, a, b
    end
    methods
        function obj = Prescale(f, a, b)
            if nargin < 1, a = 1.0; end
            if nargin < 2, b = 0.0; end
            if ~isscalar(a)
                error('only uniform scaling is currently available; a should be a scalar');
            end
            obj.f = f;
            obj.a = a;
            obj.b = b;
        end
    end
end
