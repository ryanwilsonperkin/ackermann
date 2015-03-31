with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with ada.numerics.elementary_functions; use ada.numerics.elementary_functions;
with Ada.Text_IO; use Ada.Text_IO;

package body stack is
    type stackArray is 
        array (1..1000000) of integer;

    type q_stack is
        record
            item : stackArray;
            top : integer := 0;
        end record;

    st : q_stack;

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

    function stackEmpty return Boolean is
    begin
        if st.top = 0 then
            return True;
        else
            return False;
        end if;
    end stackEmpty;

    function stackFull return Boolean is
    begin
        if st.top = 1000000 then
            return True;
        else
            return False;
        end if;
    end stackFull;

    function stackTop return integer is
    begin
        return st.item(st.top);
    end stackTop;

    procedure resetStack
    is
    begin
        st.top := 0;
    end resetStack;
end stack;
