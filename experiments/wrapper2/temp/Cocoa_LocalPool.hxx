# 1 "/usr/include/opencascade/Cocoa_LocalPool.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Cocoa_LocalPool.hxx"
# 32 "/usr/include/opencascade/Cocoa_LocalPool.hxx"
  struct NSAutoreleasePool;



class Cocoa_LocalPool
{

public:

  Cocoa_LocalPool();
  ~Cocoa_LocalPool();

private:

  NSAutoreleasePool* myPoolObj;

};
