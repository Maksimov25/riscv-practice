.eqv N 7              

.data
arr: .space 400         

.text
    la   t0, arr        
    li   t1, N
    addi t1, t1, 16    
    li   t2, 0          

loop:
    bge  t2, t1, done   
    li   a7, 5         
    ecall
    beqz a0, done       
    sw   a0, 0(t0)      
    addi t0, t0, 4      
    addi t2, t2, 1     
    j    loop
done:
    li   a7, 10      
    ecall