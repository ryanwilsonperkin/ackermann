package stack is
    procedure push(x : in integer);
    procedure pop(x : in out integer);
    function stackEmpty return Boolean;
    function stackFull return Boolean;
    function stackTop return integer;
    procedure resetStack;
end stack;
