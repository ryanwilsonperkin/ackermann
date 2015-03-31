with Ada.Text_IO;  use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure recursive is
    m : integer;
    n : integer;
    r : integer;

    function Ackermann (M, N : Natural) return Natural is
    begin
        if M = 0 then
               return N + 1;
        elsif N = 0 then
               return Ackermann (M - 1, 1);
        else
               return Ackermann (M - 1, Ackermann (M, N - 1));
        end if;
    end Ackermann;

begin
    put("Enter m and n: ");
    new_line;
    get(m);
    get(n);
    r := Ackermann(m, n);
    put("Result: ");
    put(r);
    new_line;
end recursive;

