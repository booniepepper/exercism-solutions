global two_fer

section .rodata
greet_1:
  db "One for ", 0
default_name:
  db "you", 0
greet_2:
  db ", one for me.", 0

section .text
two_fer:
  xor    rax, rax
  mov    r10, rdi

  mov    rdi, rsi
  lea    rsi, [rel greet_1]
  call   copy

  test   r10, r10
  jnz    .name_is_set
  lea    r10, [rel default_name]
.name_is_set:
  mov    rdi, rax
  mov    rsi, r10
  call   copy
  
  mov    rdi, rax
  lea    rsi, [rel greet_2]

copy:
  movsb  ; rdi, rsi
  cmp    byte [rdi-1], 0
  jne    copy
  lea    rax, [rdi-1]
  ret

