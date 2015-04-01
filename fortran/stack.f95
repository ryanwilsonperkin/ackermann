! Implementation of a stack as a module 
! by Ryan Wilson-Perkin
! for CIS3190W15: Legacy Programming
module stack
    integer, dimension(1000000) :: items = 0
    integer :: top = 0
end module

! Push an integer onto the stack
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

! Pop an integer from the stack
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

! Returns true if the stack is empty. False otherwise.
function stackEmpty () result(r)
    use stack
    implicit none
    logical :: r
    r = (top == 0)
end function stackEmpty

! Returns true if the stack is full. False otherwise.
function stackFull () result(r)
    use stack
    implicit none
    logical :: r
    r = (top == 1000000)
end function stackFull

! Returns top value from the stack.
function stackTop () result(r)
    use stack
    implicit none
    integer :: r
    r = items(top)
end function stackTop
