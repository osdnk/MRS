program main
    use gauss
    implicit none

    character(len=32) :: arg

    integer (kind = 4) :: i, N, ia


    real (kind = 4), allocatable :: A(:, :), X(:)
    real (kind = 4) :: h

    call get_command_argument(1, arg)
    !write(*,*) arg
    read(arg(1:len_trim(arg)),'(i8)') N

    !read(*, *) N

    h = 1. / N

    !write(*, *) h

    allocate(A(N-1, N))
    allocate(X(N))
    A(:, :) = 0
    X(:) = 0;
    X(N) = 1;

    do i = 1, N-1
        A(i, i+1) = -2 / (h * h)
    end do

    do i = 1, N-1
        A(i, i) = 1 / (h * h)
    end do

    do i = 1, N - 2
        A(i, i + 2) = 1 / (h * h)
    end do

    call eliminate(A, X, N-1)

    write(*, *) X

end program main