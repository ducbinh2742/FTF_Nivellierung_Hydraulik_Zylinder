clear;
% === Valve ===
valve.pS  = 9e6;        % Pa
valve.pT  = 1e5;        % Pa
valve.rho = 850;        % kg/m^3
valve.Cd  = 0.62;
valve.Amax = 1e-6;      % m^2 (max. Orifice area pro Weg) -> anpassen!
valve.udz = 0.02;       % Totzone auf x (oder u), 0..1

% optional dynamics
valve.tau = 0.02;       % s (1. Ordnung)
valve.Td  = 0.0;        % s (Transport delay), 0 wenn nicht genutzt

% Lookup (wie dein Screenshot)
valve.bp = [0.01 0.05 0.1 0.2 0.3 0.4 1];
valve.tbl_SA = [0.01 0.039 0.078 0.16 0.23 0.31 0.78];
valve.tbl_BT = valve.tbl_SA;   % erstmal gleichsetzen
valve.tbl_SB = valve.tbl_SA;
valve.tbl_AT = valve.tbl_SA;

% === Cylinder ===
cyl.AA  = 0.0020;       % m^2 (Kolbenseite)
cyl.AB  = 0.0030;       % m^2 (Stangenseite) -> bei dir ggf kleiner!
cyl.L   = 0.5;          % m
cyl.VA0 = 5e-4;         % m^3
cyl.VB0 = 5e-4;         % m^3
cyl.Vmin = 1e-6;        % m^3
cyl.be  = 8e8;          % Pa (Bulkmodul)
cyl.CL  = 1e-12;        % m^3/(s*Pa) Leckage A<->B

% friction
cyl.Bv = 2000;          % N*s/m
cyl.Fc = 200;           % N
cyl.vs = 1e-3;          % m/s smoothing
cyl.pMin = 1e5;         % Pa (Kavitation vermeiden)
cyl.pMax = 3e7;         % Pa

% === Load (gate_load_mass) ===
loadm.m = 200;          % kg
loadm.B = 30;           % N*s/m
loadm.Fext = 0;         % N
