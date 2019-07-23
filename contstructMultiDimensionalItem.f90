! ---------------------------------------------------------------------------------
!
! Thomas Hilton Johnson III
! July 11th, 2019
! Fortran multidimenal array code
!
! ---------------------------------------------------------------------------------

!----------------------------------------------------------------------------------
! Reference: https://www.tutorialspoint.com/fortran/fortran_dynamic_arrays.htm
! Reference: http://www.owlnet.rice.edu/~ceng303/manuals/fortran/FOR5_3.html
! Reference: https://gcc.gnu.org/onlinedocs/gfortran/RAND.html (Random number 
!            generation)
! Reference: https://software.intel.com/en-us/forums/intel-visual-fortran-com
!            piler-for-windows/topic/707300
! Reference: https://www.tutorialspoint.com/fortran/fortran_do_while_loop.htm
! Reference: https://web.stanford.edu/class/me200c/tutorial_90/09_modules.html
! Reference: https://software.intel.com/en-us/forums/intel-visual-fortran-compi
!            ler-for-windows/topic/707300
! Reference: https://software.intel.com/en-us/fortran-compiler-developer-guide-
!            and-reference-sleep
! Reference: https://docs.oracle.com/cd/E19957-01/805-4940/z400091044d0/
! Reference: https://software.intel.com/en-us/fortran-compiler-developer-guide-
!            and-reference-compiling-and-linking-intel-fortran-c-programs
! Reference: https://jblevins.org/log/cmdline
! Reference: https://riptutorial.com/fortran/example/26615/passing-command-
!            line-arguments
! Reference: https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web
!            &cd=3&ved=2ahUKEwjzpuuZp8rjAhUGI6wKHeYxDRMQFjACegQIAhAB&url=
!            http%3A%2F%2Ffortranwiki.org%2Ffortran%2Fshow%2Fmodulo&usg
!            =AOvVaw15nBHY34TrxzAHG_8tHXB-
!----------------------------------------------------------------------------------
program contstructMultiDimensionalItem
USE IFPORT
implicit none
   ! Initialize 3 dimensional array
   real, dimension (:,:,:), allocatable :: three_dimen_arr_1
   real, dimension (:,:,:), allocatable :: three_dimen_arr_2
   real, dimension (:,:,:), allocatable :: joined_three_dim_arr
   real temporary_number
   integer :: first_dim_index, second_dim_index, third_dim_index
   
   ! Beginning the input for the multidimensional array
   integer :: first_dim_size, second_dim_size, third_dim_size
   integer, parameter :: seed_for_random_num = 1
   integer :: iterator_count = 0
   integer, parameter :: lapse  = 5
   character(len=20) :: submitted_dim_size_1
   character(len=20) :: submitted_dim_size_2
   character(len=20) :: submitted_dim_size_3

   if(command_argument_count().ne.3)then
     print*, "Three command arguments needed..."
     stop
   endif
   
   call get_command_argument(1, submitted_dim_size_1)
   call get_command_argument(2, submitted_dim_size_2)
   call get_command_argument(3, submitted_dim_size_3)

    print*, "Please put the dimensions of the three dimensional array:"
    print*, "Input the first dimension:"
    read(submitted_dim_size_1,*)first_dim_size
    print*, first_dim_size
    print*, "Input the second dimension:"
    read(submitted_dim_size_2,*)second_dim_size
    print*, second_dim_size
    print*, "Input the third dimension:"
    read(submitted_dim_size_1,*)third_dim_size
    print*, third_dim_size
    !Now we begin the allocation of Memory
    allocate ( three_dimen_arr_1(first_dim_size,second_dim_size,third_dim_size) )
    allocate ( three_dimen_arr_2(first_dim_size,second_dim_size,third_dim_size) )
    do while (iterator_count <= 500)
    ! now adding the elements
    do first_dim_index = 1, first_dim_size
      do second_dim_index = 1, second_dim_size
        do third_dim_index = 1, third_dim_size
          !call srand(seed_for_random_num)
          temporary_number = (iterator_count+third_dim_index+second_dim_index) *10
          three_dimen_arr_1(first_dim_index,second_dim_index, third_dim_index) = temporary_number
          !print*, "In the array at position (",first_dim_index, &
          !&",",second_dim_index,",",third_dim_index,") is ", &
          !&three_dimen_arr_1(first_dim_index, second_dim_index, third_dim_index)
        end do
      end do
    end do

    !CALL sleep (1)

    ! now adding the elements
    do first_dim_index = 1, first_dim_size
      do second_dim_index = 1, second_dim_size
        do third_dim_index = 1, third_dim_size
          !call srand(seed_for_random_num)
          temporary_number = (first_dim_index+iterator_count+second_dim_index) *10
          three_dimen_arr_2(first_dim_index,second_dim_index, third_dim_index) = temporary_number
          !print*, "In the array at position (",first_dim_index, &
          !&",",second_dim_index,",",third_dim_index,") is ", &
          !&three_dimen_arr_2(first_dim_index, second_dim_index, third_dim_index)
        end do
      end do
    end do


    joined_three_dim_arr = three_dimen_arr_1 + three_dimen_arr_2
    if(modulo(iterator_count,10).eq.0)then
    print*, "New array is formed."
    iterator_count = iterator_count+1
    print*, "Iteration:", iterator_count
    endif
   end do
end program contstructMultiDimensionalItem
