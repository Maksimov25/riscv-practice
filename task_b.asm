.eqv GROUP   121       
.eqv STUDENT 7         

.text
    li   a7, 5          
    ecall
    mv   t0, a0         
    li   t1, GROUP     

    ble  t0, t1, ready  
    mv   t2, t0        
    mv   t0, t1
    mv   t1, t2
ready:
    li   t2, STUDENT    

loop:
    bgt  t0, t1, done   
    mv   a0, t0
    li   a7, 1         
    ecall
    li   a0, 10         
    li   a7, 11        
    ecall
    add  t0, t0, t2   
    j    loop
done:
    li   a7, 10        
    ecall