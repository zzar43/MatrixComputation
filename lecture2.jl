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