function StressFinishAM_InitMask(block)


    vals = get_param(block, 'MaskValues');

    CM = str2double(vals{VLib_GetMaskParamPos(block, 'varCM')});
    Sfmin = str2double(vals{VLib_GetMaskParamPos(block, 'varSfmin')});
    Ms = str2double(vals{VLib_GetMaskParamPos(block, 'varMs')});

    prefix = sprintf('%s/', block);

    set_param([prefix 'CM'], 'Gain', num2str(CM));
    set_param([prefix 'Sfmin'], 'Value', num2str(Sfmin));
    set_param([prefix 'Ms'], 'Value', num2str(Ms));


end
