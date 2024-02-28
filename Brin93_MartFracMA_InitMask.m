function Brin93_MartFracMA_InitMask(block)


    vals = get_param(block, 'MaskValues');
    
    CA = str2double(vals{VLib_GetMaskParamPos(block, 'varCA')});
    As = str2double(vals{VLib_GetMaskParamPos(block, 'varAs')});
    Af = str2double(vals{VLib_GetMaskParamPos(block, 'varAf')});
    
    
    prefix = sprintf('%s/', block);
    
    
    set_param([prefix 'As'], 'Value', num2str(As));
    set_param([prefix 'Af'], 'Value', num2str(Af));
    
    
    % 'TempStartMA' is a custom block inside 'Brin93_MartFracMA' block
    
    set_param([prefix 'TempStartMA'], 'varCA', num2str(CA));
    set_param([prefix 'TempStartMA'], 'varAs', num2str(As));


end
