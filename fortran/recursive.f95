recursive function ackermann (m, n) result (r)
    integer, intent(in) :: m, n
    integer :: r
    if (m == 0) then
        r = n + 1
    else if (n == 0) then
        r = ackermann(m-1, 1)
    else
        r = ackermann(m-1, ackermann(m, n-1))
    end if
end function ackermann

program iterative
implicit none
integer :: m, n, r
integer :: ackermann

write (*, *) "Enter m and n:"
read (*, *) m, n
r = ackermann(m, n)
write (*, *) "Result: ", r
end 
