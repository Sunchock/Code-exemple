#!/usr/bin/env python3
import swg.example as swig_wrapper

if __name__ == '__main__':
	print("swig_wrapper.fact(5) =>", swig_wrapper.fact(5))
	print("swig_wrapper.my_mod(7, 3) =>", swig_wrapper.my_mod(7, 3))
	print("swig_wrapper.get_time() =>", swig_wrapper.get_time())
