function Fib (n: nat) : nat
decreases n - 2
{
    if n < 2 then n else Fib(n - 2) + Fib(n - 1)
}
// termenul de terminare maximal este n - 2, deoarece functia isi termina recursia atunci cand n e mai mic decat 2, adica n - 2 mai mic decat 0

function F(x: int ): int 
decreases x - 10
{
    if x < 10 then x else F(x - 1)
}
// termenul de terminare default nu este bun; cel corect este x - 10, deoarece acesta atinge 0 atunci cand x < 10

function G(x: int ): int 
decreases x
{
    if 0 <= x then G(x - 2) else x
}
// termenul de terminare default este cel bun, deoarece recursia se termina atunci cand x < 0

function H(x: int ): int 
decreases x + 60
{
    if x < -60 then x else H(x - 1)
}
// termenul de terminare default nu este bun, deoarece recursia ar trebui sa se termine cand x < -60, deci x + 60 < 0, nu cand x < 0

function I(x: nat , y: nat ): int 
decreases x, y
{
    if x == 0 || y == 0 then 12
    else if x % 2 == y % 2 then
        I(x - 1, y)
    else
        I(x, y - 1)
}
// termenul de terminare default este bun, deoarece recursia se termina atunci cand x si y scad sub 0

function J(x: nat , y: nat ): int 
decreases x, y
{
    if x == 0 then y
    else if y == 0 then
        J(x - 1, 3)
    else
        J(x, y - 1)
}
// termenul de terminare default este bun, deoarece recursia se termina atunci cand x si y scad sub 0

function K(x: nat , y: nat , z: nat ): int 
decreases x - 10, y - 5
{
    if x < 10 || y < 5 then x + y
    else if z == 0 then
        K(x - 1, y, 5)
    else
        K(x, y - 1, z - 1)
}
// termenul de terminare default nu este bun; recursia se termina atunci cand x - 10 < 0 sau y - 5 < 0

function L(x: int ): int 
decreases 100 - x
{
    if x < 100 then L(x + 1) + 10 else x
}
// termenul de terminare defalt nu este bun; recursia se termina atunci cand 100 - x < 0, adica 100 > x; x crescand la fiecare recursie, termenul 100 - x scade