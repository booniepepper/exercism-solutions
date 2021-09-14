module hamming
  implicit none
contains

  function compute(strandA, strandB, distance)
      character(*), intent(in) :: strandA, strandB
      integer, intent(out) :: distance
      integer :: lenA, lenB, i
      logical :: compute

      lenA = len(strandA)
      lenB = len(strandB)
      distance = 0
      compute = .false.

      if (lenA == lenB) then
        compute = .true.

        do i = 1, lenA
          if (strandA(i:i) /= strandB(i:i)) distance = distance + 1
        end do
      end if

  end function compute

end module hamming
