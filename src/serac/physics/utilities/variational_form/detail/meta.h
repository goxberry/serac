#pragma once

#include <tuple>
#include <utility>
#include <type_traits>

namespace
{
    template <typename, template <typename...> typename>
    struct is_instance_impl : public std::false_type {};

    template <template <typename...> typename T, typename...args>
    struct is_instance_impl<T<args...>, T> : public std::true_type {};
}

// see https://stackoverflow.com/a/61040973
template <typename T, template <typename ...> typename U>
using is_instance = is_instance_impl<std::decay_t<T>, U>;

template <class... T>
constexpr bool always_false = false;

template < typename ... T >
constexpr auto first(T ... args) {
  return std::get< 0 >(std::tuple{args...});
}

template < typename ... T >
constexpr auto last(T ... args) {
  return std::get< sizeof ... (T) - 1 >(std::tuple{args...});
}

template < int I, int ... n >
constexpr auto get(std::integer_sequence<int, n...>) {
  constexpr int values[sizeof...(n)] = {n ...};
  return values[I]; 
}

template < int r, int ... n, int ... i >
constexpr auto remove_helper(std::integer_sequence<int,n...>, std::integer_sequence<int,i...>) {
  return std::integer_sequence<int, get<i+(i>=r)>(std::integer_sequence<int,n ...>{}) ... >{};
}

template < int r, int ... n >
constexpr auto remove(std::integer_sequence<int,n...> seq) {
  return remove_helper<r>(seq, std::make_integer_sequence< int, int(sizeof ... (n)) - 1 >{});
}

template < int ... n1, int ... n2 >
constexpr auto join(std::integer_sequence<int,n1...>, std::integer_sequence<int,n2...>) {
  return std::integer_sequence<int,n1...,n2...>{};
}

namespace impl {
  template < typename lambda, int ... i >
  inline constexpr void for_constexpr(lambda && f, std::integral_constant< int, i > ... args) {
    f(args ...);
  }

  template < int ... n, typename lambda, typename ... arg_types >
  inline constexpr void for_constexpr(lambda && f, std::integer_sequence< int, n ... >, arg_types ... args) {
    (impl::for_constexpr(f, args ..., std::integral_constant< int, n >{}), ...);
  }
}

template < int ... n, typename lambda >
inline constexpr void for_constexpr(lambda && f) {
  impl::for_constexpr(f, std::make_integer_sequence<int, n>{} ...);
}
