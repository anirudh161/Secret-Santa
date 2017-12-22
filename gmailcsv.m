function list = gmailcsv(filename)
% Read a .CSV file with contacts exported from gmail. In your contacts simply
% choose the friends to participate in the secret santa (gift exchange), click
% on [More][Export ...][Google CSV format (for importing into a Google account)]
% and save the CSV file on your computer.
% SYNTAX
% list = gmailcsv(filename)
% INPUT
% filename  Full file name of the .CSV file
% OUTPUT
% list      Cell with names and e-mails of the contacts
%_______________________________________________________________________________
% Copyright (C) 2013 Edgar Guevara Codina
%_______________________________________________________________________________

fileText = textread(filename, '%s', 'delimiter', '\n', 'whitespace', '');
% read header
header = fileText{1};
[~, ~, ~, ~, ~, ~, splitStr] = regexp(header, ',');
% Find position of 'Name'
nameIdx = find(cellfun(@(x) strcmp('Name',x),splitStr));
% Find position of 'E-mail 1 - Value'
emailIdx = find(cellfun(@(x) strcmp('E-mail 1 - Value',x),splitStr));
% nCols = numel(splitStr);
nContacts = size(fileText,1)-1;
% preallocate list
list = cell([nContacts 2]);
for iContacts = 1:nContacts,
     [~, ~, ~, ~, ~, ~, currentRow] = regexp(fileText{iContacts+1}, ',');
    list{iContacts, 1} = currentRow{nameIdx};
    list{iContacts, 2} = currentRow{emailIdx};
end
            
% EOF