 %% script to get fw and quad motor data
 %% importing FW data
 warning('off','MATLAB:table:ModifiedAndSavedVarnames');
FW_motor_data = readtable('FIXED WING PROP DATA.xlsx', ...
    'Sheet', 'TEST DATA', ...
    'Range', 'D4:K14', ...
    'ReadVariableNames', true);

 FW_motor = table2array(FW_motor_data);

 % Extracting required columns
 params.fw.Throttle = FW_motor(:,1);
 params.fw.Voltage = FW_motor(:,2);
 params.fw.Current = FW_motor(:,3);
 params.fw.Power = FW_motor(:,4);
 params.fw.RPM =  FW_motor(:,5);
 params.fw.Torque = FW_motor(:,6);
 params.fw.Thrust = FW_motor(:,7) * (9.81/1000);
 params.fw.Efficiency = FW_motor(:,8);

