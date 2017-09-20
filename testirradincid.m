classdef testirradincid < matlab.unittest.TestCase
%TESTIRRADINCID Unit tests for the irradIndic.m function
    
    properties
    end
    
    methods (Test)
        function testZdisplacement1(testCase)
            H1 = eye(4);
            H2 = -eye(4)*Trans3(0,0,-4);
            [a b r ] = irradIncid(H1,H2);
            expected = [0 0 4];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
        
        function testZdisplacement2(testCase)
            H1 = eye(4);
            H2 = -eye(4)*Trans3(0,0,-4);
            [a b r ] = irradIncid(H2,H1);
            expected = [0 0 4];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
        
        function testZYdisplacement1(testCase)
            H1 = eye(4);
            H2 = -eye(4)*Trans3(0,-4,-4);
            [a b r ] = irradIncid(H1,H2);
            expected = [pi/4 pi/4 4*sqrt(2)];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
        
        function testZYdisplacement2(testCase)
            H1 = eye(4);
            H2 = -eye(4)*Trans3(0,-4,-4);
            [a b r ] = irradIncid(H2,H1);
            expected = [pi/4 pi/4 4*sqrt(2)];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
    
        % 2nd referencial pointing to the origin
        function testPointOrigin(testCase)
            H1 = eye(4);
            H2 = RotZ3(pi/4)*RotY3(-3*pi/4)*Trans3(0,0,-4);
            [a b r] = irradIncid(H1,H2);
            expected = [pi/4 0 4 ];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
        
        % Swapping positions
        function testPointOrigin2(testCase)
            H1 = eye(4);
            H2 = RotZ3(pi/4)*RotY3(-3*pi/4)*Trans3(0,0,-4);
            [a b r] = irradIncid(H2,H1);
            expected = [0 pi/4 4 ];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
        
        % 2nd referencial pointing to the origin, below XY plane
        function testPointOrigin3(testCase)
            H1 = eye(4);
            H2 = RotZ3(pi/4)*RotY3(-pi/4)*Trans3(0,0,-4);
            [a b r] = irradIncid(H1,H2);
            expected = [3*pi/4 0 4 ];
            testCase.verifyEqual([a b r], expected,'AbsTol',sqrt(eps));
        end
        
        
        
    end
    
end

