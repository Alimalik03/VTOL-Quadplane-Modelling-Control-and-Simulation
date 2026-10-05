% Quad Rotor propulsion data
% Importing Quad motor data from lookup table
warning('off','MATLAB:table:ModifiedAndSavedVarnames')
Quad_motor_data = readtable('QUAD PROP DATA.xlsx','Sheet','TEST DATA','Range','D4:K23','ReadVariableNames', true);

%converting to array
Quad_motor = table2array(Quad_motor_data);

 % Extracting required columns
 params.quad.Throttle = Quad_motor(:,1);
 params.quad.Voltage = Quad_motor(:,2);
 params.quad.Thrust = Quad_motor(:,3) * (9.81/1000);% N
 params.quad.Torque = Quad_motor(:,4);
 params.quad.Current = Quad_motor(:,5);
 params.quad.RPM =  Quad_motor(:,6);
 params.quad.Power = Quad_motor(:,7);
 params.quad.Efficiency = Quad_motor(:,8);

 % Simulink.Bus.createObject(params)
