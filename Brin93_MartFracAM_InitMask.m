function Brin93_MartFracAM_InitMask(block)


    vals = get_param(block, 'MaskValues');
    
    Ssmin = str2double(vals{VLib_GetMaskParamPos(block, 'varSsmin')});
    Sfmin = str2double(vals{VLib_GetMaskParamPos(block, 'varSfmin')});
    CM = str2double(vals{VLib_GetMaskParamPos(block, 'varCM')});
    Ms = str2double(vals{VLib_GetMaskParamPos(block, 'varMs')});
    
    
    prefix = sprintf('%s/', block);
    
    
    set_param([prefix 'Ssmin'], 'Value', num2str(Ssmin));
    set_param([prefix 'Sfmin'], 'Value', num2str(Sfmin));
    
    
    % 'StressFinishAM' is a custom block inside 'Brin93_MartFracAM' block
    
    set_param([prefix 'StressFinishAM'], 'varCM', num2str(CM));
    set_param([prefix 'StressFinishAM'], 'varSfmin', num2str(Sfmin));
    set_param([prefix 'StressFinishAM'], 'varMs', num2str(Ms));


end
