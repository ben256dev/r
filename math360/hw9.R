# QUESTION 6
pnorm_tween <- function(a, b, r)
{
   return(round(pnorm(b) - pnorm(a), r))
}
print("a:")
print(pnorm_tween(0, 2.03, 4)) # a
print("b:") 
print(pnorm_tween(0, 2, 4)) # b
print("c:") 
print(pnorm_tween(-2.70, 0, 4)) # c
print("d:") 
print(pnorm_tween(-2.70, 2.70, 4)) # d
print("e:")  # e
print("f:")  # f
print("g:")  
print(pnorm_tween(-1.70, 2, 4)) # g
print("h:")  
print(pnorm_tween(1.24, 2.5, 4)) # h
print("i:")  # i
print("j:")  # j
