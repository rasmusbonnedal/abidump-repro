#include "public.hh"

// Expected: in public ABI
// Actual: in public ABI
void foo1(void) { }

// Expected in private ABI
// Actual: in public ABI
void foo1(int x) { }

// Expected in private ABI
// Actual: in private ABI
void foo2() { }

// Expected in public ABI
// Actual: in public ABI
void Foo::foo3() { }

// Expected in private ABI
// Actual: in public ABI
void foo3() { }
