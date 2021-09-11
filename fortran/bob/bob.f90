module bob
  implicit none
contains

  function hey(statement)
    character(100) :: hey
    character(len=*), intent(in) :: statement
    logical :: is_empty, is_question, has_lowcase, has_upcase, is_yelling
    integer :: i
    character :: c

    is_empty = len(trim(statement)) == 0

    i = index(statement, '?')
    is_question = i /= 0 .and. i == len(trim(statement))
    has_lowcase = .false.
    has_upcase = .false.

    do i=1,len(statement)
      c = statement(i:i)
      has_lowcase = has_lowcase .or. ('a' <= c .and. c <= 'z')
      has_upcase = has_upcase .or. ('A' <= c .and. c <= 'Z')
    end do

    is_yelling = has_upcase .and. .not. has_lowcase

    if (is_empty) then
      hey = 'Fine. Be that way!'
    else if (is_question .and. is_yelling) then
      hey = "Calm down, I know what I'm doing!"
    else if (is_question) then
      hey = 'Sure.'
    else if (is_yelling) then
      hey = 'Whoa, chill out!'
    else
      hey = 'Whatever.'
    end if

  end function hey

end module bob
