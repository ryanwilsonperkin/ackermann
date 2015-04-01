-- Recursive implementation of Ackermann's function
-- by Ryan Wilson-Perkin
-- for CIS3190W15: Legacy Programming
with Ada.Text_IO;  use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure recursive is
    m : natural;
    n : natural;
    r : natural;

    function ackermann (m, n : natural) return natural is
    begin
        if m = 0 then
               return n + 1;
        elsif n = 0 then
               return ackermann (m - 1, 1);
        else
               return ackermann (m - 1, ackermann (m, n - 1));
        end if;
    end ackermann;

begin
    put("Enter m and n: ");
    new_line;
    get(m);
    get(n);
    r := ackermann(m, n);
    put("Result: ");
    put(r);
    new_line;
end recursive;

