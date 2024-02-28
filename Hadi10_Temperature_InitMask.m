function Hadi10_Temperature_InitMask(block)


    vals = get_param(block, 'MaskValues');
    
    m = str2double(vals{VLib_GetMaskParamPos(block, 'varm')});
    L = str2double(vals{VLib_GetMaskParamPos(block, 'varL')});
    Cp = str2double(vals{VLib_GetMaskParamPos(block, 'varCp')});
    RA = str2double(vals{VLib_GetMaskParamPos(block, 'varRA')});
    RM = str2double(vals{VLib_GetMaskParamPos(block, 'varRM')});
    hc = str2double(vals{VLib_GetMaskParamPos(block, 'varhc')});
    Ac = str2double(vals{VLib_GetMaskParamPos(block, 'varAc')});
    T0 = str2double(vals{VLib_GetMaskParamPos(block, 'varT0')});
    
    imCp = 1 / (m * Cp);
    
    
    prefix = sprintf('%s/', block);
    
    
    set_param([prefix 'm'], 'Gain', num2str(m));
    set_param([prefix 'L'], 'Gain', num2str(L));
    
    set_param([prefix 'hc'], 'Gain', num2str(hc));
    set_param([prefix 'Ac'], 'Gain', num2str(Ac));
    
    set_param([prefix 'hc1'], 'Gain', num2str(hc));
    set_param([prefix 'Ac1'], 'Gain', num2str(Ac));
    
    set_param([prefix 'imCp'], 'Gain', num2str(imCp));
    set_param([prefix 'imCp1'], 'Gain', num2str(imCp));
    set_param([prefix 'imCp2'], 'Gain', num2str(imCp));
    set_param([prefix 'imCp3'], 'Gain', num2str(imCp));
    
    set_param([prefix 'Integrator'], 'InitialCondition', num2str(T0));
    
    
    % 'Hadi10_Resistance' is a custom block inside 'Hadi10_Temperature' block
    
    set_param([prefix 'MVF_Resistance'], 'varRA', num2str(RA));
    set_param([prefix 'MVF_Resistance'], 'varRM', num2str(RM));


end
