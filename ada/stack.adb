-- Stack implementation as a module
-- by Ryan Wilson-Perkin
-- for CIS3190W15: Legacy Programming
package body stack is
    type stackArray is 
        array (1..1000000) of integer;

    type q_stack is
        record
            item : stackArray;
            top : integer := 0;
        end record;

    st : q_stack;

    -- Push a new integer onto the stack.
    procedure push
        (x : in integer)
    is
    begin
        if stackFull then
            raise Tasking_Error;
        end if;
        st.top := st.top + 1;
        st.item(st.top) := x;
    end push;

    -- Pop an integer from the stack.
    procedure pop
        (x : in out integer)
    is
    begin
        if stackEmpty then
            raise Tasking_Error;
        end if;
        x := stackTop;
        st.top := st.top - 1;
    end pop;

    -- Return true if stack is empty. False otherwise.
    function stackEmpty return Boolean is
    begin
        if st.top = 0 then
            return True;
        else
            return False;
        end if;
    end stackEmpty;

    -- Return true if stack is full. False otherwise.
    function stackFull return Boolean is
    begin
        if st.top = 1000000 then
            return True;
        else
            return False;
        end if;
    end stackFull;

    -- Return value on top of stack.
    function stackTop return integer is
    begin
        return st.item(st.top);
    end stackTop;
end stack;
