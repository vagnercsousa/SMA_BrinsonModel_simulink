%{
    Hadi10_Temperature_mask.m

    @ block's mask callback:
    Hadi10_Temperature_mask('Hadi10_Temperature_var???', gcb);

    m: spring mass
    Cp: specific heat
    RA: resistance in fully austenitic phase
    RM: resistance in fully martensitic phase
    hc: convection heat coefficient
    Ac: spring circunferential area
    T0: spring initial temperature
%}



function Hadi10_Temperature_callback(action, block)
% AERO_CALLBACK contains callbacks for aero block's mask.

    % action: a string indicating which mask parameter invoked the callback.
    % block: the handle to the associated Level-2 M-file S-Function block.
    
    
    %% Use function handle to call appropriate callback
    feval(action, block)

end



function Hadi10_Temperature_varm(block) %#ok<DEFNU>
    
end



function Hadi10_Temperature_varCp(block) %#ok<DEFNU>
    
end



function Hadi10_Temperature_varRA(block) %#ok<DEFNU>
    
end



function Hadi10_Temperature_varRM(block) %#ok<DEFNU>
    
end



function Hadi10_Temperature_varhc(block) %#ok<DEFNU>
    
end



function Hadi10_Temperature_varAc(block) %#ok<DEFNU>
    
end



function Hadi10_Temperature_varT0(block) %#ok<DEFNU>
    
end



% function aero_cspresent_callback(block) %#ok<DEFNU>
%     
%     % (des)habilita controles referentes a superficie de controle.
%     
%     vals = get_param(block, 'MaskValues');
%     enab = get_param(block, 'MaskEnables');
%     
%     csPresPos = aero_GetMaskParamPos(block, 'varCSPresent');
%     csParams = {vals{csPresPos}; vals{csPresPos}; vals{csPresPos}; ...
%                 vals{csPresPos}; vals{csPresPos}};
%     
%     set_param(block, 'MaskEnables', ...
%         [enab(1:csPresPos); ...
%         csParams; ...
%         enab(csPresPos+(length(csParams)+1):end-2); ...
%         vals{csPresPos}; vals{csPresPos}]);
%     
%     
%     aero_getflutterspeed_callback(block); % atualiza velocidade na tela
%     
% end



% function aero_getflutterspeed_callback(block)
%     
%     vals = get_param(block, 'MaskValues');
%     
%     gfsPos = aero_GetMaskParamPos(block, 'varGetFlutterSpeed');
%     getFlutterSpeed = strcmp(vals{gfsPos}, 'on');    
%     
%     
%     if getFlutterSpeed
%         
%         % pega valores informados
%         aero_dimless_InitFcn(block);
%         nad = get_param([gcs '/Subsystem'], 'UserData');
%         
%         % encontra velocidade linear de flutter
%         vel = num2str(nad.ReducedLinearFlutterSpeed());
%         
%         % mostra na tela
%         set_param(block, 'MaskValues', [vals(1:gfsPos); vel; vals(gfsPos+2:end)]);
%         
%     end
% 
% end
