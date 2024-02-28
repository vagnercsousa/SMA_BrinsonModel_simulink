function MVF_Modulus_InitMask(block)


    vals = get_param(block, 'MaskValues');

    DA = str2double(vals{VLib_GetMaskParamPos(block, 'varDA')});
    DM = str2double(vals{VLib_GetMaskParamPos(block, 'varDM')});

    prefix = sprintf('%s/', block);

    set_param([prefix 'DA'], 'Value', num2str(DA));
    set_param([prefix 'DM'], 'Value', num2str(DM));


end
