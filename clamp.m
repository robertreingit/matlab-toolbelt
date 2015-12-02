function val = clamp(val,a,b)
% clamp
% clamps values val between a and b.
%
% INPUT:
% val = value to be clamped (scalar,vector,matrix)
% a = lower limit
% b = upper limit
% OUTPUT:
% SIDEEFFECTS:
% None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

val = max(min(val,b),a);
