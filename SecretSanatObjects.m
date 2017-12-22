classdef SecretSanatObjects
    properties (Access = public)
       name;
       address;
       email;
    end
    methods (Access = public)
        function obj = SecretSanta(Name, Address, Email)
            obj.name = Name;
            obj.address = Address;
            obj.email = Email;
        end
    end
end

