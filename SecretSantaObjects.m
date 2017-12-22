classdef SecretSantaObjects < handle
    properties (Access = public)
       name;
       address;
       email;
    end
    methods 
        function obj = SecretSantaObjects(name, address, email)
            obj.name = name;
            obj.address = address;
            obj.email = email;
        end
    end
end

