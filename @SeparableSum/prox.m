function [p, v] = prox(obj, x, gam)
    p = zeros(obj.dimsum(end), 1);
    v = 0;
    baseidx = 1;
    for i = 1:length(obj.idx)
        xcurr = x(baseidx:obj.dimsum(i));
        [p1, v1] = obj.objs{obj.idx(i)}.prox(xcurr, gam);
        p(baseidx:obj.dimsum(i)) = p1;
        v = v + v1;
        baseidx = obj.dimsum(i)+1;
    end
end