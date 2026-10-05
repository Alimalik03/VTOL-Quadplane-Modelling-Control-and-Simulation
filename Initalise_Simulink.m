%% Script to initialize Params to use in simulink model
%% Aircraft Params %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('C:\SAGE Project\VTOL MODEL practice\Simulink\Initialise_Simulink')
Params1;

%% Loading propulsion data look-up table for pusher motor
FW_propulsion_data;
% params.fw.Throttle = Throttle;
% params.fw.Thrust   = Thrust;
% params.fw.Torque   = Torque;

%% Loading propulsion data look-up table for pusher motor
Quad_propulsion_data;  % run it here once
% params.quad.Throttle = Throttle;
% params.quad.Thrust   = Thrust;
% params.quad.Torque   = Torque; 
% params.quad.RPM      = RPM; 

%% Loading Trim data
trim_data = load('op_trim3.mat');
load('hover_trim.mat');

% States Initializations
params.trim_States.Euler_anles       = trim_data.op_trim3.States(1).x; %initializing Euler angles
params.trim_States.Body_rates        = trim_data.op_trim3.States(2).x; %initializing Body Rates 
params.trim_States.Body_velocities   = trim_data.op_trim3.States(3).x; %initializing Body velocities
params.trim_States.Position          = trim_data.op_trim3.States(4).x; %initializing Postion XYZ

% Inputs Initialization
params.trim_Inputs.delta_ail   = trim_data.op_trim3.Inputs(1).u;  %Trimmed Aileron Input
params.trim_Inputs.delta_ele   = trim_data.op_trim3.Inputs(2).u;  %Trimmed Elevator Input
params.trim_Inputs.delta_rud   = trim_data.op_trim3.Inputs(3).u;  %Trimmed Rudder Input
params.trim_Inputs.delta_Thr   = trim_data.op_trim3.Inputs(4).u;  %Trimmed Throttle Input

%% Simulation Time 
params.Sim_time = 100;

% Creating simulink object
Simulink.Bus.createObject(params)