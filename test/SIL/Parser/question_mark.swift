// RUN: %swift %s -emit-silgen | sil-opt -verify
infix operator ?? {
  associativity right
  precedence 110
}

struct A<V, E> {
}

struct B<V, E> {
}

struct C {
}

struct V1 {
}

struct E1 {
}

var buffer: A<C, B<V1, E1>?>
var buffer2: A<C, B<V1, E1>?>?
