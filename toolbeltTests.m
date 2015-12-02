function tests = toolbeltTests()
% Function based tests for the toolbelt functions.
% run with: run(toolbeltTests)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    tests = functiontests(localfunctions);

end

function testDeg2Rad(testCase)

    obtained = deg2rad(180);
    expected = pi;
    verifyEqual(testCase,obtained,expected);

end

function testClampScala(testCase)

    val = 10.333333;
    verifyEqual(testCase, clamp(val,0,10), 10);
    verifyEqual(testCase, clamp(-val,0,10), 0);

end

function testClampVector(testCase)

    val = 10.333 * ones(1,10);
    verifyEqual(testCase, clamp(val,0,10), 10*ones(1,10));
    verifyEqual(testCase, clamp(val',0,10), 10*ones(10,1));
end

function testClampMatrix(testCase)

    val = 1 + abs(randn(5,5));
    verifyEqual(testCase, clamp(val,0,1), ones(5,5));
    verifyEqual(testCase, clamp(-val,0,1), zeros(5,5));

end