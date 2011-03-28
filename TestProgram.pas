program TestProgram;
uses TestUnit;

procedure TestSimple;
begin
  Assert(1 = 1);
	Assert(FloatEquals(1, 1));
end;

procedure TestFail;
begin
  InitTest('1 = 0 deve falhar');
  Assert(1 = 0);
	Assert(FloatEquals(1, 0));

	InitTest('3 = 2 deve falhar');
	Assert(3 = 2);
end;


begin
  StartTests;
  TestCase('Simple', @TestSimple);		  
  TestCase('Fail', @TestFail);	
  EndTests;
end.
