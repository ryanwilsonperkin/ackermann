module stack
    integer, dimension(1000000) :: items = 0
    integer :: top = 0
end module

subroutine push (m)
    use stack
    implicit none
    integer, intent(in) :: m
    logical :: stackFull
    if (stackFull()) then
        stop 1
    end if
    top = top + 1
    items(top) = m
end subroutine push

subroutine pop (m)
    use stack
    implicit none
    integer, intent(out) :: m
    integer :: stackTop
    logical :: stackEmpty
    if (stackEmpty()) then
        stop 1
    end if
    m = stackTop()
    top = top - 1
end subroutine pop;

function stackEmpty () result(r)
    use stack
    implicit none
    logical :: r
    r = (top == 0)
end function stackEmpty

function stackFull () result(r)
    use stack
    implicit none
    logical :: r
    r = (top == 1000000)
end function stackFull

function stackTop () result(r)
    use stack
    implicit none
    integer :: r
    r = items(top)
end function stackTop

subroutine resetStack
    use stack
    implicit none
    items = 0
    top = 0
end subroutine resetStack
