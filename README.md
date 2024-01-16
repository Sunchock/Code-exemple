Example swig 4.2.0 (Windows + MinGW)
===
PREREQUISITES:
---
  - Download swig from the official website (.zip for Windows), open the zip at the root of the repo
  - Enter the `SWIG_DIR` variable of the `Makefile` with the name of the folder (ex: swigwin-4.2.0)
  - Configure the `PYTHON_INCLUDE` and `PYTHON_LIB` environment variables on the MinGW Python installation, cf. $(SWIG_DIR)/Doc/Manual/Windows.html#Windows_python

> [!WARNING]
> **MinGW only accepts Python libraries in `.pyd`**

Test :
===
1. `make swig`
2. `python test.py`
