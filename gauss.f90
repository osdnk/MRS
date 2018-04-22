module gauss
    implicit none

contains
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
                End If
            End Do
        End Do
    end subroutine eliminate
end module gauss