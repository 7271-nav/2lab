format PE

section '.text' executable
entry start
start:
        mov eax, 0
        mov ebx, 0  ; for summarizing elems > M
        mov ecx, 10
        mov edx, 0  ; for counting elems < M
        mov esi, arr
        lp:
        lodsw
        cmp ax, 6
        je equal
        jl less
        add ebx, eax
        jmp eend
        less:
        add edx, 1
        jmp eend

        equal:
        eend:
        loop lp

; ebx == 34
; edx == 5
ret


section '.data' writeable
arr dw 1, 2, 3, 4, 5, 6, 7, 8, 9, 10