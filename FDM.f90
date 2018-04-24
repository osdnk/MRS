#if !defined(PR)
#define PR 4
#endif

program main
    use gauss
    implicit none

    character(len=32) :: arg

    integer (kind = 8) :: i, N
    real (kind = 16) :: errors


    real (kind = PR), allocatable :: A(:, :), X(:)
    real (kind = PR) :: h

    call get_command_argument(1, arg)
    read(arg(1:len_trim(arg)),'(i8)') N

    h = 1. / N

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

    errors = 0;
    do i = 1, N
        errors = errors + abs(X(i) - real(i) / real(N))
    end do
    write(*, *) errors / N

    write(*, *) X






end program main