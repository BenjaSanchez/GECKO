%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function simpleGenesSet = getGenesSet(originalSTR)
% 
% Function that gets a cell array with all the simple geneSets in a given 
% grRule string 
%
% INPUTS:
%       originalSTR      grRule string for the i-th reaction
%
% OUTPUTS:
%       simpleGenesSet   Cell array containing the different simple genes
%                        sets in a given grRule.
%
% Ivan Domenzain.   Last edited 2018-03-28
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function simpleGenesSet = getGenesSet(originalSTR)
    simpleGenesSet  = '';
    % If gene rule is not empty split it in all its different isoenzymes
    if ~isempty(originalSTR)
        originalSTR = strtrim(originalSTR);
        originalSTR = strrep(originalSTR,' OR ',' or ');
        originalSTR = strrep(originalSTR,' AND ',' and ');
        %Remove all brackets
        originalSTR = strrep(originalSTR,'(','');
        originalSTR = strrep(originalSTR,')','');
        %Split all the different simpleGenesSet
        simpleGenesSet  = transpose(strsplit(originalSTR,' or '));
    end
end