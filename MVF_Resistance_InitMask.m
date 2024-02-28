function MVF_Resistance_InitMask(block)


    vals = get_param(block, 'MaskValues');

    RA = str2double(vals{VLib_GetMaskParamPos(block, 'varRA')});
    RM = str2double(vals{VLib_GetMaskParamPos(block, 'varRM')});

    prefix = sprintf('%s/', block);

    set_param([prefix 'RA'], 'Value', num2str(RA));
    set_param([prefix 'RM'], 'Value', num2str(RM));


end
