function StressStartMA_InitMask(block)


    vals = get_param(block, 'MaskValues');

    CA = str2double(vals{VLib_GetMaskParamPos(block, 'varCA')});
    As = str2double(vals{VLib_GetMaskParamPos(block, 'varAs')});

    prefix = sprintf('%s/', block);

    set_param([prefix 'CA'], 'Gain', num2str(CA));
    set_param([prefix 'As'], 'Value', num2str(As));


end
