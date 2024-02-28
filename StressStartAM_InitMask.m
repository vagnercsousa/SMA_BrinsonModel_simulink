function StressStartAM_InitMask(block)


    vals = get_param(block, 'MaskValues');

    CM = str2double(vals{VLib_GetMaskParamPos(block, 'varCM')});
    Ssmin = str2double(vals{VLib_GetMaskParamPos(block, 'varSsmin')});
    Ms = str2double(vals{VLib_GetMaskParamPos(block, 'varMs')});

    prefix = sprintf('%s/', block);

    set_param([prefix 'CM'], 'Gain', num2str(CM));
    set_param([prefix 'Ssmin'], 'Value', num2str(Ssmin));
    set_param([prefix 'Ms'], 'Value', num2str(Ms));


end
