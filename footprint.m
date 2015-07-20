% [r l phi] = footprint(a, e)
%      a is the worst case altitude in [km]
%      e is the worst case elevation in [rad]
%      returns the coverage radius, the geocentric angle
%              and the chord of the ground coverage
% Reference: Space Systems Engineering (Third Edition)
function [r l phi] = footprint(a, e)
% Earth radius [km]
Re = 6371;

% Calculate the geocentric angle
phi = -e + acos((Re/(Re+a))*cos(e));

% Calculate the coverage radius (fooprint)
d = 2*Re*phi;
r = d/2;

% Calculate the chord (fooprint)
l = 2*Re*sin(phi);