%%%%%%%%%%%%%
%%% MODEL %%%
%%%%%%%%%%%%%

#display orf/1.

%===========================================================
% orf(
%   1. identifier (string)
% ).
% orf_label(
%   1. systematic name, identifier (string)
%   2. standard name (string)
%   3. extended name (string)
% ).
orf("BYO999S").
orf("YHR137W").

%===========================================================
% complex(
%   1. identifier (string)
% ).
% complex_label(
%   1. complex identifier (string)
%   2. EC number (string)
% ).
% component(
%   1. reaction identifier (string)
%   2. complex identifier (string)
% ).
% catalyst(
%   1. orf identifier (string)
%   2. complex identifier (string)
% ).
complex("E00001").
complex_label("E00001","2.6.1.7").
  component("YHR137W","E00001").
    catalyst("R00045","E00001").
    catalyst("R00044","E00001").

complex("E05011").
    catalyst("R00011","E05011").

complex("E00999").
  component("BYO999S","E00999").
    catalyst("R00999","E00999").

%===========================================================
% reaction(
%   1. identifier (string)
% ).
% substrate(
%   1. metabolite identifier (string)
%   2. compartment identifier (string)
%   3. reaction identifier (string)
%   4. direction identifier (string)
% ).
% product(
%   1. metabolite identifier (string)
%   2. compartment identifier (string)
%   3. reaction identifier (string)
%   4. direction identifier (string)
% ).
reaction("R00011").
  substrate("C00279",medium,"R00011",forward).
  product("C00279",cytosol,"R00011",forward).

reaction("R00044").
  substrate("C00025",cytosol,"R00044",forward).
  substrate("C00166",cytosol,"R00044",forward).
  product("C00026",cytosol,"R00044",forward).
  product("C00079",cytosol,"R00044",forward).

reaction("R00045").
  substrate("C00025",cytosol,"R00045",forward).
  substrate("C01179",cytosol,"R00045",forward).
  product("C00026",cytosol,"R00045",forward).
  product("C00082",cytosol,"R00045",forward).

reaction("R00999").
  substrate("C00279",cytosol,"R00999",forward).
  product("C00166",cytosol,"R00999",forward).

%===========================================================
% compartment(
%   1. identifier (string)
% ).
compartment(cytosol).
compartment(medium).

%===========================================================
% direction(
%   1. identifier (string)
% ).
direction(forward).
