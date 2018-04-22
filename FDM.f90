program main
    use gauss
    implicit none

    integer (kind = 4) :: i, N

    real (kind = 4), allocatable :: A(:, :), X(:)
    real (kind = 4) :: h

    read(*, *) N

    h = 1. / N

    write(*, *) h

    allocate(A(N-1, N-1))
    allocate(X(N-1))
    A(:, :) = 0
    X(:) = 0;
    X(N-1) = 1;

    do i = 1, N-1
        A(i, i) = -2 / (h * h)
    end do

    do i = 2, N-1
        A(i, i - 1) = 1 / (h * h)
    end do

    do i = 1, N - 2
        A(i, i + 1) = 1 / (h * h)
    end do

    call eliminate(A, X, N-1)

    write(*, *) X

end program main