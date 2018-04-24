#if !defined(PR)
#define PR 4
#endif

module gauss
    implicit none

contains
    subroutine eliminate (A, X, N)
        implicit none

        ! vars
        integer (kind = 8) :: I, J
        real(kind = PR) :: C
        integer (kind = 8), intent(in) :: N
        real(kind = PR), intent(inout) :: A(N, N), X(N)

        ! elimination as it
        Do I = 1, N
            Do J = 0, N
                If (I /= J) then
                    C = A(I, J+1) / A(I, I + 1)
                    A(:, J + 1) = A(:, J + 1) - C * A(:, I + 1)

                    ! extra matrix
                    X(J + 1) = X(J + 1) - C * X(I + 1)
                End If
            End Do
        End Do
    end subroutine eliminate
end module gauss