;;! target = "x86_64"

(module
    (func (result i64)
        i64.const 1
        f64.reinterpret_i64
        drop
        i64.const 1
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4883ec08             	sub	rsp, 8
;;      	 4c893424             	mov	qword ptr [rsp], r14
;;      	 48c7c001000000       	mov	rax, 1
;;      	 66480f6ec0           	movq	xmm0, rax
;;      	 48c7c001000000       	mov	rax, 1
;;      	 4883c408             	add	rsp, 8
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	