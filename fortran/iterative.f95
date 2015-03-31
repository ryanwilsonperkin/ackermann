function ackermann (m_initial, n_initial) result (n)
    use stack
    implicit none
    integer, intent(in) :: m_initial, n_initial
    integer :: m, n
    logical :: stackEmpty

    m = m_initial
    n = n_initial
    call push(m)
    do while (.not. stackEmpty())
        call pop(m)
        if (m == 0) then
            n = n + 1
        else if (n == 0) then
            n = 1
            call push(m-1)
        else
            n = n - 1
            call push(m-1)
            call push(m)
        end if
    end do
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
