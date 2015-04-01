-- Stack implementation as a module
-- by Ryan Wilson-Perkin
-- for CIS3190W15: Legacy Programming
package stack is
    procedure push(x : in integer);
    procedure pop(x : in out integer);
    function stackEmpty return Boolean;
    function stackFull return Boolean;
    function stackTop return integer;
end stack;
