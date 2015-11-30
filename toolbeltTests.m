function tests = toolbeltTests()

    tests = functiontests(localfunctions);

end

function testDeg2Rad(testCase)

    obtained = deg2rad(180);
    expected = pi;
    verifyEqual(testCase,obtained,expected);

end