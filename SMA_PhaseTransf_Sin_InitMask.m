function SMA_PhaseTransf_Sin_InitMask(block)


    vals = get_param(block, 'MaskValues');
    
    Ssmin = str2double(vals{VLib_GetMaskParamPos(block, 'varSsmin')});
    Sfmin = str2double(vals{VLib_GetMaskParamPos(block, 'varSfmin')});
    CM = str2double(vals{VLib_GetMaskParamPos(block, 'varCM')});
    CA = str2double(vals{VLib_GetMaskParamPos(block, 'varCA')});
    Ms = str2double(vals{VLib_GetMaskParamPos(block, 'varMs')});
    As = str2double(vals{VLib_GetMaskParamPos(block, 'varAs')});
    Af = str2double(vals{VLib_GetMaskParamPos(block, 'varAf')});
    
    
    prefix = sprintf('%s/', block);
    
    
    %% A -> M
    
    % 'StressStartAM' is a custom block inside 'SMA_PhaseTransf_Sin' block
    
    set_param([prefix 'StressStartAM'], 'varCM', num2str(CM));
    set_param([prefix 'StressStartAM'], 'varSsmin', num2str(Ssmin));
    set_param([prefix 'StressStartAM'], 'varMs', num2str(Ms));
    
    
    % 'StressFinishAM' is a custom block inside 'SMA_PhaseTransf_Sin' block
    
    set_param([prefix 'StressFinishAM'], 'varCM', num2str(CM));
    set_param([prefix 'StressFinishAM'], 'varSfmin', num2str(Sfmin));
    set_param([prefix 'StressFinishAM'], 'varMs', num2str(Ms));
    
    
    % 'Brin93_MartFracAM' is a custom block inside 'SMA_PhaseTransf_Sin' block
    
    set_param([prefix 'Brin93_MartFracAM'], 'varCM', num2str(CM));
    set_param([prefix 'Brin93_MartFracAM'], 'varSsmin', num2str(Ssmin));
    set_param([prefix 'Brin93_MartFracAM'], 'varSfmin', num2str(Sfmin));
    set_param([prefix 'Brin93_MartFracAM'], 'varMs', num2str(Ms));
    
    
    
    %% M -> A
    
    % 'StressStartMA' is a custom block inside 'SMA_PhaseTransf_Sin' block
    
    set_param([prefix 'StressStartMA'], 'varCA', num2str(CA));
    set_param([prefix 'StressStartMA'], 'varAs', num2str(As));
    
    
    % 'StressFinishMA' is a custom block inside 'SMA_PhaseTransf_Sin' block
    
    set_param([prefix 'StressFinishMA'], 'varCA', num2str(CA));
    set_param([prefix 'StressFinishMA'], 'varAf', num2str(Af));
    
    
    % 'Brin93_MartFracMA' is a custom block inside 'SMA_PhaseTransf_Sin' block
    
    set_param([prefix 'Brin93_MartFracMA'], 'varCA', num2str(CA));
    set_param([prefix 'Brin93_MartFracMA'], 'varAs', num2str(As));
    set_param([prefix 'Brin93_MartFracMA'], 'varAf', num2str(Af));
    
    
    
    %% A -> M or M -> A output selection
    
    % 'SMA_TransformingState' is a custom block inside 'SMA_PhaseTransf_Sin' block
    % 'SMA_TransformingState' has no inner masked subsystems
    


end
