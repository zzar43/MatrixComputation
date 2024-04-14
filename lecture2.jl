# lecture 2 code

# back substitution

function back_sub(A, b)
    x = zeros(n)
    for i = n:-1:1
        x[i] = b[i]
        for j = i + 1 : n
            x[i] -= A[i, j] * x[j]
        end
        x[i] = x[i] / A[i, i]
    end
    return x
end

# error
function my_lin_solver(A, b)

    for k = 1:n-1
        for i = k+1:n
            coef = A[i,k] / A[k,k]
            for j = k+1:n
                A[i,j] = A[i,j] - coef * A[i-1,j]
            end
        end
        for i = k+1:n
            A[i,k] = 0.
        end
    end
    figure(); imshow(A); display(gcf())
    return back_sub(A,b)
end