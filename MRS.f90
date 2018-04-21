subroutine eliminate (A, X, N)
    implicit none
    real(kind = 4) :: J, I, C
    integer (kind = 4), intent(in) :: N
    real(kind = 4), intent(inout) :: A(N, N), X(N)
    Do I = 1, N
        Do J = 1, N
            If (I /= J) then
                C = A(I, J) / A(I, I)
                A(:, J) = A(:, J) - C * A(:, I)
                X(J) = X(J) - C * X(I)
                X(I) = X(I) / A(I, I)
            End If
        End Do
    End Do
end subroutine eliminate

program main
    implicit none

    integer (kind = 4) :: i, N

    real (kind = 4), allocatable :: A(:, :), X(:)
    real (kind = 4) :: h

    read(*, *) N

    h = 1. / N

    write(*, *) h

    allocate(A(N, N))
    allocate(X(N))
    A(:, :) = 0
    X(:) = 0;

    do i = 1, N
        A(i, i) = -2 / (h * h)
    end do

    do i = 2, N
        A(i, i - 1) = 1 / (h * h)
    end do

    do i = 1, N - 1
        A(i, i + 1) = 1 / (h * h)
    end do

    call eliminate(A, X, N)

    write(*, *) X

end program main