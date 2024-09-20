// #include <__clang_cuda_builtin_vars.h>
#include <stdio.h>

__global__ void hello() {

  printf("Hello from block: %u, thread: %u\n", blockIdx.x, threadIdx.x);
}

int main() {

  hello<<<1, 1>>>();
  cudaDeviceSynchronize();
}
