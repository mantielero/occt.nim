# 1 "/usr/include/opencascade/Standard_Atomic.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Standard_Atomic.hxx"
# 32 "/usr/include/opencascade/Standard_Atomic.hxx"
inline int Standard_Atomic_Increment (volatile int* theValue);



inline int Standard_Atomic_Decrement (volatile int* theValue);







inline bool Standard_Atomic_CompareAndSwap (volatile int* theValue, int theOldValue, int theNewValue);
# 56 "/usr/include/opencascade/Standard_Atomic.hxx"
int Standard_Atomic_Increment (volatile int* theValue)
{
  return __sync_add_and_fetch (theValue, 1);
}

int Standard_Atomic_Decrement (volatile int* theValue)
{
  return __sync_sub_and_fetch (theValue, 1);
}

bool Standard_Atomic_CompareAndSwap (volatile int* theValue, int theOldValue, int theNewValue)
{
  return __sync_val_compare_and_swap (theValue, theOldValue, theNewValue) == theOldValue;
}
