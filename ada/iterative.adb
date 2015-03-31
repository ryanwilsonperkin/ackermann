with Ada.Text_IO;  use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with stack; use stack;

procedure iterative is
    m : natural;
    n : natural;
    r : natural;

    function ackermann (m_initial, n_initial : natural) return natural is
        m : natural;
        n : natural;
    begin
        m := m_initial;
        n := n_initial;
        push(m);
        while not stackEmpty loop
            pop(m);
            if m = 0 then
                n := n + 1;
            elsif n = 0 then
                n := 1;
                push(m - 1);
            else
                n := n - 1;
                push(m - 1);
                push(m);
            end if;
        end loop;
        return n;
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
end iterative;
