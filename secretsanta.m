% Tool to organize a secret santa (tradition in which members of a group or
% community are randomly assigned a person to whom they anonymously give a
% gift). This tradition is also known as: pige de noel, Kris Kringle, amigo
% secreto, amigo invisible, Christkindl, or simpoly gift exchange.
% SYNTAX
% secretsanta
% INPUTS
% none
% OUTPUTS
% none
%_______________________________________________________________________________
% Copyright (C) 2013 Edgar Guevara Codina
%_______________________________________________________________________________

%%
% .CSV file with exported gmail contacts
filename    = 'contacts_list.csv';
% Read .CSV file
list        = gmailcsv(filename);
% Define these variables appropriately:
mail        = '';    % Your GMail email address
password    = '';              % Your GMail password
% randomize the contacts list and send the e-mails
giftExchange(list, mail, password);

% EOF

nameList = {'Anand', 'Ananth', 'Anirudh', 'Ganz', 'Jay', 'Karthik'};
emailList = 
% giftExchange (giftList);