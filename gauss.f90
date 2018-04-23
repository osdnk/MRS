module gauss
    implicit none

contains
    subroutine eliminate (A, X, N)
        implicit none
        integer (kind = 4) :: I, J
        real(kind = 4) :: C
        integer (kind = 4), intent(in) :: N
        real(kind = 4), intent(inout) :: A(N, N), X(N)
        Do I = 1, N
            Do J = 0, N
                If (I /= J) then
                    C = A(I, J+1) / A(I, I + 1)
                    A(:, J + 1) = A(:, J + 1) - C * A(:, I + 1)
                    X(J + 1) = X(J + 1) - C * X(I + 1)
                End If
            End Do
        End Do
    end subroutine eliminate
end module gauss