function val = VLib_GetMaskParamPos(block, parname)
    % VLib_GetMaskParamPos returns the index of a given mask parameter.

    
    vars = get_param(block, 'MaskVariables');
    vars = strrep(vars, '@', '');
    
    spos = strfind(vars, parname); % 1st letter
    epos = spos + length(parname) + 1; % equality char
    
    scpos = strfind(vars(epos:end), ';'); % semi-colon position
    scpos = scpos(1);
    
    % the index of the parameter is between '=' and ';'
    val = str2num(vars(epos:(epos+scpos-1))); %#ok<ST2NM>
    
end
