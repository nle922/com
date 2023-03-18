//Factor programs
program define gcd, rclass
    if "`2'" == "" {
        return scalar gcd = `1'
    }
    else {
        while `2' {
            local temp2 = `2'
            local 2 = mod(`1',`2')
            local 1 = `temp2'
        }
        return scalar gcd = `1'
    }
end

// program define lcm, rclass
//     if "`2'" == "" {
//         return scalar lcm = `1'
//     }
//     else {
//         gcd `1' `2'
//         return scalar lcm = `1' * `2' / r(gcd)
//     }
// end
