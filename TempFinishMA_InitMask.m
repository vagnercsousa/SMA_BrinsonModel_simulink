function TempFinishMA_InitMask(block)


    vals = get_param(block, 'MaskValues');

    CA = str2double(vals{VLib_GetMaskParamPos(block, 'varCA')});
    Af = str2double(vals{VLib_GetMaskParamPos(block, 'varAf')});

    prefix = sprintf('%s/', block);

    set_param([prefix 'CA'], 'Value', num2str(CA));
    set_param([prefix 'Af'], 'Value', num2str(Af));


end
